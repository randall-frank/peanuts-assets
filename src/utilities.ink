// This is used to inject common, state specific options into the "next" options
===  common_options(ret_text, -> ret_target, -> next_target)
    ~ temp text = ret_text

    // crypto mining is valid if project next is in play or 
    // outsourcing is in play (but the pitch has not happened)
    {eg_project_next or ((eg_outsourcing > 1) and (eg_outsourcing < 3)):
        + [Redirect simulation to Cryptid mining] -> crypto_output(ret_target)
    }

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
    ~ text += "{simdone}"

    {eg_outsourcing == 3:
        ~ text = "Pass to {shell_company_name}"
    }
    + [{text}] -> outsourcing_output(ret_target)
    + [{continue}] -> next_target
    ->->

=== outsourcing_output(-> ret_target) ===
    
    {eg_outsourcing != 3: 
        -> ret_target
    }

~ location_name = "LBlue Lagoon Server Control Room"
# CLEAR
# CLASS: head2
    Simulation complete

    ~ temp c = RANDOM(1000,2500)
    ~ temp cdyg = INT(c*0.9)

    The simulation has completed. 
    {c}Ͼ have been mined.  {cdyg}Ͼ has been returned to CDYG and the remainder transferred to "{shell_company_name}".
    ~ update_cryptids(c - cdyg)
    The "{shell_company_name}" account now contains {player_cryptids}Ͼ.

    + [Continue] -> ret_target


=== crypto_output(-> ret_target) ===
~ location_name = "LBlue Lagoon Server Control Room"
# CLEAR
# CLASS: head2
    Simulation complete

    ~ temp c = RANDOM(1000,2500)
    The simulation (crypto mining operation) has completed. 
    {c}Ͼ have been mined and transferred to "{shell_company_name}".
    ~ update_cryptids(c)
    The "{shell_company_name}" account now contains {player_cryptids}Ͼ.

    + [Continue] -> ret_target

