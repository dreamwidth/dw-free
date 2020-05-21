# t/ban-observer-effect.t
#
# A completely empty can containing zero worms. :]
#
# Authors:
#      Nick Fagerlund <nick.fagerlund@gmail.com>
#
# Copyright (c) 2020 by Dreamwidth Studios, LLC.
#
# This program is free software; you may redistribute it and/or modify it under
# the same terms as Perl itself.  For a copy of the license, please reference
# 'perldoc perlartistic' or 'perldoc perlgpl'.
#

use strict;
use warnings;

use Test::More;

BEGIN { $LJ::_T_CONFIG = 1; require "$ENV{LJHOME}/cgi-bin/ljlib.pl"; }
use LJ::Test qw( temp_user temp_comm );

plan tests => 3;

my $unobserved1 = temp_user();
my $unobserved2 = temp_user();

$unobserved1->ban_user($unobserved2);
ok($unobserved1->has_banned($unobserved2), "Didn't look. Successful ban.");

my $observed1 = temp_user();
my $observed2 = temp_user();

ok(! $observed1->has_banned($observed2), "Ships passing in the night.");
$observed1->ban_user($observed2);
ok($observed1->has_banned($observed2), "Looked. Successful ban.");
