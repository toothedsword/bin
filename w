#!/usr/bin/perl

my ($doc,$ppt,$xls,$pdf);
foreach (@ARGV) {
    $doc = $doc.' '.$_ if /\.docx?/;
    $ppt = $ppt.' '.$_ if /\.pptx?/;
    $xls = $xls.' '.$_ if /\.xlsx?/;
    $pdf = $pdf.' '.$_ if /\.pdf/;
}

system("nohup wps $doc > ~/doc/w.out &") if $doc =~ /\./;
system("nohup wpp $ppt > ~/doc/w.out &") if $ppt =~ /\./;
system("nohup et $xls > ~/doc/w.out &") if $xls =~ /\./;
system("nohup wpspdf $pdf > ~/doc/w.out &") if $pdf =~ /\./;

