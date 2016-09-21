package Kata04::Common 1.0;
 
use Exporter qw(import);

use File::Basename qw(dirname);
use Cwd  qw(abs_path);
use lib dirname(dirname abs_path $0) . '/lib';

our @EXPORT_OK = qw(run);
 
sub lowest {

	use strict;
	use warnings;

        my @numbers = @_;

	## Find lowest number in a numerically sorted array
	my $lowest = (sort { $a <=> $b } @numbers)[0];

	return $lowest;
}

1;
