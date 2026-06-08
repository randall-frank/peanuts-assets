import math
import wave
import struct
import os

SAMPLE_RATE = 44100
OUTPUT_PATH = os.path.join('build', 'general_lee_horn_underwater.wav')

def synth_note(frequency, duration, sample_rate=SAMPLE_RATE):
    n_samples = int(duration * sample_rate)
    out = [0.0] * n_samples
    for h in range(1, 7):
        amp = 1.0 / h
        for i in range(n_samples):
            t = i / sample_rate
            # mild vibrato
            vib = 1.0 + 0.007 * math.sin(2 * math.pi * 5.0 * t)
            out[i] += amp * math.sin(2 * math.pi * frequency * vib * t)
    # apply simple ADSR-like envelope
    attack = int(0.01 * sample_rate)
    release = int(0.05 * sample_rate)
    sustain_level = 0.8
    for i in range(n_samples):
        if i < attack:
            env = i / max(1, attack)
        elif i > n_samples - release:
            env = (n_samples - i) / max(1, release)
        else:
            env = sustain_level
        out[i] *= env
    return out

def lowpass(signal, cutoff=900.0, sample_rate=SAMPLE_RATE):
    # one-pole lowpass
    rc = 1.0 / (2 * math.pi * cutoff)
    dt = 1.0 / sample_rate
    alpha = dt / (rc + dt)
    y = [0.0] * len(signal)
    prev = 0.0
    for i, x in enumerate(signal):
        prev = prev + alpha * (x - prev)
        y[i] = prev
    return y

def normalize(signal):
    maxv = max(abs(x) for x in signal) or 1.0
    return [x / maxv for x in signal]

def write_wav(path, signal, sample_rate=SAMPLE_RATE):
    # convert to 16-bit PCM
    scaled = [int(max(-1.0, min(1.0, x)) * 32767) for x in signal]
    with wave.open(path, 'w') as wf:
        wf.setnchannels(1)
        wf.setsampwidth(2)
        wf.setframerate(sample_rate)
        wf.writeframes(struct.pack('<' + 'h' * len(scaled), *scaled))

def main():
    # melody approximating the short horn motif (in Hz)
    # G4, G4, E4, D4, C4 (simple recognizable motif)
    # melody = [392.0, 392.0, 330.0, 294.0, 262.0]
    f5 = 698.
    e5 = 622.
    d5 = 587.
    c5 = 523.
    b4 = 466.
    melody = [f5, d5, b4, b4, c5, d5, e5, f5, f5, f5, d5]
    durations = [0.2, 0.2, 0.3, 0.3, 0.3, 0.2, 0.2, 0.3, 0.3, 0.3, 0.4]

    signal = []
    for f, d in zip(melody, durations):
        note = synth_note(f, d)
        signal.extend(note)
        # short gap between notes
        gap = [0.0] * int(0.03 * SAMPLE_RATE)
        signal.extend(gap)

    # underwater effect: strong lowpass and a subtle tremor
    lp = lowpass(signal, cutoff=700.0)

    # add a slow amplitude wobble to mimic underwater movement
    for i in range(len(lp)):
        t = i / SAMPLE_RATE
        lp[i] *= (0.95 + 0.07 * math.sin(2 * math.pi * 0.4 * t))

    final = normalize(lp)

    os.makedirs(os.path.dirname(OUTPUT_PATH), exist_ok=True)
    write_wav(OUTPUT_PATH, final)
    print('WAV written to', OUTPUT_PATH)

if __name__ == '__main__':
    main()
