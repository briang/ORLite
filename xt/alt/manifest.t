#!/usr/bin/env perl

use 5.006;

use strict;
use warnings;

BEGIN {
    if ($ENV{EMACS}) {
        chdir '..' until -d 't';
        use lib 'lib';
    }
}

use Test::CheckManifest;
ok_manifest();
