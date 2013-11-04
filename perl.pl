#!/usr/bin/perl
 # This subroutine is an equivalent
 # to the print_r() function in PHP
 # and its purpose is to display
 # the numeric indexed array
 # altogether with its keys.
 # for example, you have an array
 # my @array = ('Lee', 'Longstreet');
 # and we put that array as a parameter in
 # our sub call like this - &print_r(@array);
 # result will be "Array(0 => Lee, 1 => Longstreet)"
 # It is extremely useful to debug and check arrays.
 # Please note this works only for numericaly indexed
 # arrays, not hashes.
 
 ######################################################################

 # https://github.com/Stefany93/print_r
 #
 # Copyright 2013 Stefany Dimitrova Dyulgerova
 # stefany.dyulgerova@gmail.com
 # www.dyulgerova.info
 #
 # This program is free software: you can redistribute it and/or
 # modify it under the terms of the GNU General Public License as
 # published by the Free Software Foundation, either version 3 of the
 # License, or (at your option) any later version.
 #
 # This program is distributed in the hope that it will be useful, but
 # WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 # General Public License for more details.
 #
 # You should have received a copy of the GNU General Public License
 # along with this program.  If not, see http://www.gnu.org/licenses/.

 ######################################################################

# We are telling Perl that
# we shall be working in a web 
# browser and therefore sending
# the proper HTTP headers.
print "content-type: text/html \n\n";
# Perl version.
use v5.16.3;
# This subroutine will display
# the keys and the elements 
# of the array
# given as a subroutine parameter.
# $x will iterate through the 
# @keys array.
# We collect the keys of 
# the given array in the 
# @keys array.
# Display 'Array' before the loop.
# Iterate through the array given
# as a parameter in the sub calll
# with foreach loop.
# Print the key of the current value
# using $x as an index starting at 0
# and then print the value.
# And lastly, increment our index variable so that 
# the next element of the array is selected
# in the next iteration, with $x++.
sub print_r(){	
	my $x = 0;
	my @keys = keys(@_);
	print 'Array ( <br />';
	foreach my $value (@_){
		print ' ' . $keys[$x] . ' => ' . $value . ' <br />';
		$x++;
	}
	print ' )';	
}
__END__