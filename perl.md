### Minify Perl scripts/modules

    $ perl -MO=Deparse -sC script.pl > script1.pl  
    $ perltidy --mangle -dac script1.pl
