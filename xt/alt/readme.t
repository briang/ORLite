#!perl

use 5.006;
use strict;
BEGIN {
    $|  = 1;
    $^W = 1;
}

BEGIN {
    if ($ENV{EMACS}) {
        chdir '..' until -d 't';
        use lib 'lib';
    }
}

use Test::More tests => 2;

my $PM     = 'lib/Alt/ORLite/BRIANG.pm';
my $README = 'README.md';

ok( -f $README, "$README exists" );
ok( (-M $README) < (-M $PM), "$README is newer than $PM" );

done_testing;
