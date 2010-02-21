# europe_vat_number_check

This project was an excuse to:
 * remember how to create a Rubygem, publish it to Gemcutter and host it on Github
 * learn how to do the above with Jeweler
 * remember how easy it is to use a soap webservice on Ruby

I'm not sure about the Ruby semantic of the whole thing :/

## Example:

    $ irb
    >> 507868510.valid_european_vat_number?("PT")
    => [true, {:name=>"WEBREAKSTUFF LDA", :address=>"RUA CAMARA PESTANA LOTE 37 LOJA A\nCOIMBRA\n3030-163 COIMBRA"}]

== Copyright

Copyright (c) 2010 Tiago Pinto. See LICENSE for details.
