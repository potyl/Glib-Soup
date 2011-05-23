#!/usr/bin/perl

use strict;
use warnings;

use Test::More 'no_plan';

use Data::Dumper;


BEGIN {
	use_ok('Gtk2::Soup');
}

sub main {
	my $session = Gtk2::SoupSessionAsync->new();
	isa_ok($session, 'Gtk2::SoupSessionAsync');
	isa_ok($session, 'Gtk2::SoupSession');
	return 0;
}


exit main() unless caller;
