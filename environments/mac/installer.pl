#!/usr/bin/env perl
use strict;
use warnings;

my $message = <<'EOS';
'want to install'
catalyst
EOS

print STDOUT $message;
my $line = <STDIN>;

if ($line ne '') {
  exec "bash install-lib/$line"
}

