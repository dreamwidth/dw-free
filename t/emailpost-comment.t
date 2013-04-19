# -*-perl-*-

use strict;
use Test::More tests => 4;
use lib "$ENV{LJHOME}/cgi-bin";
BEGIN { require 'ljlib.pl'; }

use DW::EmailPost::Comment;
use LJ::Test;

my $subject;
my $u = temp_user();

my $e = $u->t_post_fake_entry;

my $username = $u->display_name;
my $ditemid = $e->ditemid;
my $generated = " [ $username - $ditemid ]";

my $c_parent = $e->t_enter_comment;
my $c1 = $e->t_enter_comment( parent => $c_parent );

#   email subject       parent comment subject
#    generated                  none                 - none
#    generated                  custom               - Re: custom parent
#    custom                     none                 - custom from email
#    custom                     custom               - custom from email

$c_parent->set_subject( "" );
$subject = DW::EmailPost::Comment->determine_subject(
    "Re: Reply to an entry. $generated",
    $u, $ditemid, $c_parent->dtalkid
);
is( $subject, "", "default parent subject, default email subject" );

$c_parent->set_subject( "Some custom subject" );
$subject = DW::EmailPost::Comment->determine_subject(
    "Re: Some custom subject $generated",
    $u, $ditemid, $c_parent->dtalkid
);
is( $subject, "Re: Some custom subject", "custom parent subject, default email subject" );

$c_parent->set_subject( "" );
$subject = DW::EmailPost::Comment->determine_subject(
    "Change of topic mid-thread",
    $u, $ditemid, $c_parent->dtalkid
);
is( $subject, "Change of topic mid-thread", "default parent subjct, custom email subject" );

$c_parent->set_subject( "Some custom subject" );
$subject = DW::EmailPost::Comment->determine_subject(
    "Change of topic mid-thread",
    $u, $ditemid, $c_parent->dtalkid
);
is( $subject, "Change of topic mid-thread", "custom parent subjct, custom email subject" );
