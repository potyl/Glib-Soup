#!/usr/bin/perl

use strict;
use warnings;

use Test::More 'no_plan';

use Data::Dumper;


BEGIN {
	use_ok('Glib::Soup');
}

sub main {
	my $session = Glib::SoupSessionAsync->new();
	isa_ok($session, 'Glib::SoupSessionAsync');
	isa_ok($session, 'Glib::SoupSession');
	return 0;
}


exit main() unless caller;
