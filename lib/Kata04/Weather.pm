package Kata04::Weather 1.0;
 
use Exporter qw(import);

our @EXPORT_OK = qw(run);
 
sub run {

	use strict;
	use warnings;

	use File::Slurp;
        use Kata04::Common;

	my @file = read_file('weather.dat');
	my @spread;

	foreach my $line (@file) {
		chomp $line;

		## Remove leading whitespace
		$line =~ s/^\s+//;

		## Ignore line if first character is not a number
		next if ($line !~ /^\d/);

		## Get the first 3 columns
		my ($day, $max, $min) = split(/\s+/, $line, 4);

		## Remove possible asterisk(*) mark
		$min =~ s/\*//g;
		$max =~ s/\*//g;

		## Collect spreads in an array
		push(@spread, $max-$min);
	}

        print(Kata04::Common::lowest(@spread), "\n");
}

1;
