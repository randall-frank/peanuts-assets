// This is used to inject common, state specific options into the "next" options
===  common_options(ret_text, -> ret_target)
    {eg_project_next or eg_outsourcing or 1:
        + [Redirect simulation to Cryptid mining] -> crypto_output(ret_target)
    }
    ~ temp text = ret_text
    // "-" for "general" comments
    {text == "-":
        ~ text = general_comment()
    }
    // "!" for "are you serious" comments
    {text == "!":
        ~ text = seriously_comment()
    }
    // Non-empty text needs a space...
    {text != "":
        ~ text += " "
    }
    + [{text}{simdone}] -> ret_target
    ->->

=== crypto_output(-> ret_target) ===
# CLASS: head2
    Simulation complete

    ~ temp c = RANDOM(500,800)
    This simulation (mining operation) has completed. 
    {c}Ͼ have been mined and transferred to "{shell_company_name}".
    ~ player_cryptids += c
    The "{shell_company_name}" account now contains {player_cryptids}Ͼ.

    + [Continue] -> ret_target

