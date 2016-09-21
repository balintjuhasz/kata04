# kata04
http://codekata.com/kata/kata04-data-munging/

# Usage (without installation)

`git clone git@github.com:balintjuhasz/kata04.git`
`cd kata04`

## Part 1.
#### CLI
`perl -I lib/ -MKata04::Weather -e 'Kata04::Weather::run();'`

#### Code
```
#!/usr/bin/perl

use strict;
use warnings;

use lib './lib';
use Kata04::Weather;

Kata04::Weather::run();
```

## Part 2.
#### CLI
`perl -I lib/ -MKata04::Football -e 'Kata04::Football::run();'`

#### Code
```
#!/usr/bin/perl

use strict;
use warnings;

use lib './lib';
use Kata04::Football;

Kata04::Football::run();
```

## Part 3.
They already use a shared code in `lib/Kata04/Common.pm`
