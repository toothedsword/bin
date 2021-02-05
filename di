#!/usr/bin/perl

use v5.10;

# get the containerID name 
my $ci = shift;
my $im = shift;

if (length($ci) > 6) {
    ($ci) = $ci =~ /^\s*([^\s]{6})/;
}

if (!defined($ci)) {
    system("dis");
    #say;
    exit;
}

my @rt = `docker ps -a`;
my $t = 0;
for (@rt) {
    $t++;
    if (/^$ci/ and $t > 1) {
        ($ci) = $_ =~ /(^[^\s]{6})/;
    }
}

my @info = `cat ~/docker/info`;

if (!defined($im)) {
    # say "-------------------------------";
    for (@info) {
        $_ =~ s/:/:  /;
        print " $_" if /^$ci:/;
    }
} else {
    system("echo '$ci:$im' >> ~/docker/info");
}

