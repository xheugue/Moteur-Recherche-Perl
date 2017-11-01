#!/usr/bin/perl

=pod
=begin comment
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
=end comment
=cut

use strict;
use warnings;

=pod
=begin comment

This function check if an argument is in an array
In: a1, a reference on an array
    elt, the value to check
Out: 1 if the element is present,  0 if not, -1 if there is an error

=end comment
=cut

sub arrayContainsString {
    if (@_ != 2) {
        return - 1;
    }

    my ($a1, $elt) = @_;

    if (ref($a1) != "ARRAY") {
        return -1;
    }
    
    return grep {$_ eq $elt} @$a1;
}