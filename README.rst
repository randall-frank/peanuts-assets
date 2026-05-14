Peanuts, Pickles and Propaganda
===============================
|CC| |Itch| |Ink|


.. |CC| image:: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg
    :target: http://creativecommons.org/licenses/by/4.0/

.. |Ink| image:: https://img.shields.io/badge/Ink-BA372C.svg
    :target: https://www.inklestudios.com/ink/

.. |Itch| image:: https://img.shields.io/badge/Itch.io-fa5c5c.svg
   :target: https://myleftgoat.itch.io/


Overview
--------

.. image:: src/media/locations/splash.png
   :alt: Splash screen banner
   :align: center


Peanuts, Pickles and Propaganda is a work of interactive fiction.
It is written in a modified copy of the `Ink <https://www.inklestudios.com/ink/>`_ framework.

Building
--------

Requirements
~~~~~~~~~~~~

- Python 3.10 or higher for organizing the build and acting as a local web server.
- Inklecate CLI tool for building the story JSON representation.
- (Optional) Inky GUI tool for editing the story.  One can use Visual Studio Code as well.


Building
~~~~~~~~

Start by creating a Python virtual environment and install all the necessary
dependencies:

.. code:: Powershell

    pip install virtualenv
    python -m virtualenv venv
    ./venv/Scripts/activate.ps1   # for Windows PowerShell, different for other shells
    pip install -r requirements.txt


To build the web-based version of the story, the 
`Inklecate <https://github.com/inkle/ink/releases>`_ compiler needs to be
available.  The `build.py` script will attempt to download the
compiler from github when building the story.   It can also be included in the
search path on your system or one can set the environmental variable
*PEANUTS_INKLECATE* to the complete pathname of the executable.
A Powershell example if you downloaded the CLI tools yourself:

.. code:: Powershell

    $Env:PEANUTS_INKLECATE = "E:\inklecate_windows\inklecate.exe"
    & $Env:PEANUTS_INKLECATE
    Usage: inklecate <options> <ink file> ...

However, in most cases you can just run the command `python build.py build`
and the tools will be downloaded into the directory `ink_tools`.

*build.py* has several options:

- clean

  - Remove the contents of the `build` directory.

- build, fullbuild

  - rebuild the entire `build` directory. This does a `clean` followed by copying
    the contents of the `src/html` and `src/media` directories into `build`.  Finally,
    it does a `build` which regenerates the story Javascript file.

- serve [--port {portnumber}] [--nobrowser]

  - This option starts a web server that serves up the contents of the `build`
    directory on the selected port.  This simulates an actual web deployment. The
    default port is 9000.  By default, a web browser tab will be opened to view 
    the story. `--nobrowser` may be used to suppress the opening of the tab.

Running
~~~~~~~

One can use the `build.py` file to build and run the story:

.. code:: Powershell

    python build.py build
    INFO:peanuts_build:Story version: 0.0.1
    INFO:peanuts_build:File 'ink_tools\inklecate_windows.zip' downloaded successfully from 'https://github.com/inkle/ink/releases/download/v.1.2.0/inklecate_windows.zip'
    INFO:peanuts_build:All files extracted from 'ink_tools\inklecate_windows.zip' to 'ink_tools'.
    INFO:peanuts_build:{"compile-success": true}
    {"issues":[]}{"export-complete": true}

    INFO:peanuts_build:Operation complete

    python build.py serve
    Serving story:  http://127.0.0.1:9000


At this point, a browser tab will be opened, pointing to: ``http://127.0.0.1:9000``
in which the story may be played.

.. note::

    If one double-clicks on the `index.html` file in the `build` directory to
    view the story, the background sound will not work due to CORS issues as the background sound files are accessed via fetch() calls.


Versioning
~~~~~~~~~~

The game has a semantic version number of the form: 'x.y.z'.  This is specified by the file 'version.txt'
in the source code.  This version number is also stored in game 'save' files, which are
basically a snapshot of the current ink engine instance, taken just before the current
knot is displayed.  Note: all fields can be multiple digits in length, so '0.3.12' is valid.

Any time there is a change to the overall state structure (e.g. a new knot/stich is
added or a new item/variable is introduced), one much bump the x or y portion of the
semantic version.  The save file loader will allow files that differ only in the 'z' digits
to be loaded w/o warning.  So change like spelling, text revisions, etc should only update
the 'z' field to retain backward compatibility with old save files.

License
-------

This work is licensed under a Creative Commons Attribution 4.0 International license and is
copyright (C) 2026 Andrew Florance and Randall Frank.

.. image:: https://i.creativecommons.org/l/by/4.0/88x31.png
   :alt: License-CC

----

.. image:: src/media/items/madewithink.png
   :alt: Made with Ink
   :width: 200px
