#!/usr/bin/perl

use strict;
use warnings;

use Test::More 'no_plan';

use Data::Dumper;


BEGIN {
    use_ok('Glib::Soup');
}

sub main {
    test_async();
    test_sync();
    return 0;
}


sub test_async {
    my $session = Glib::SoupSessionAsync->new();
    isa_ok($session, 'Glib::SoupSessionAsync');
    isa_ok($session, 'Glib::SoupSession');
}



sub test_sync {
    my $session = Glib::SoupSessionSync->new();
    isa_ok($session, 'Glib::SoupSessionSync');
    isa_ok($session, 'Glib::SoupSession');
}


exit main() unless caller;
