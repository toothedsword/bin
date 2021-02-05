#!/usr/bin/perl

system('mkdir -p /run/media/leon/Data');
system('mount -t ntfs-3g /dev/disk/by-label/Data /run/media/leon/Data');

#system('mount -t ntfs-3g /dev/disk/by-label/Windows /mnt/win');
#system('ln -s /mnt/win /run/media/leon/');

system('mkdir -p /run/media/leon/ch');
system('mount /dev/mapper/centos-home /run/media/leon/ch');
system('mkdir -p /run/media/leon/cr');
system('mount /dev/mapper/centos-root /run/media/leon/cr');

system("service docker start");

