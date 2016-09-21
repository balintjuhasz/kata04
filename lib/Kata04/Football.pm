package Kata04::Football 1.0;

use Exporter qw(import);
 
our @EXPORT_OK = qw(run);
 
sub run {

    use strict;
    use warnings;

    use File::Slurp;

    my @file = read_file('football.dat');
    my @diff;

    foreach my $line (@file) {
	chomp $line;

    	## Remove leading whitespace
	$line =~ s/^\s+//;

	## Ignore line if first character is not a number
	next if ($line !~ /^\d/);

	## Split lines on whitespace, get 6th and 8th column
	my @fields = split(/\s+/, $line);
        my ($f, $a) = ($fields[6], $fields[8]);

        ## Collect goal difference in an array
        if ($f > $a) {
            push(@diff, $f-$a);
        }
        else {
            push(@diff, $a-$f);
        }
    }

    ## Find the lowest difference:
    ## lowest index in a numerically sorted list
    my $lowest = (sort { $a <=> $b } @diff)[0];

    ## Output
    print($lowest, "\n");
}

1;
