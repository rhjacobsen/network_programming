#! /usr/bin/perl -w
# tptcpclient.pl - a simple TCP client for the RFC 868 Time Protocol
#----------------

use strict;
use Socket;

# initialize host and port
my $host = shift || 'localhost';
my $port = shift || 7890;

my $proto = getprotobyname('tcp');

# get the port address
my $iaddr = inet_aton($host);
my $paddr = sockaddr_in($port, $iaddr);

# create the socket, connect to the port
socket(SOCKET, PF_INET, SOCK_STREAM, $proto) or die "socket: $!\n";
connect(SOCKET, $paddr) or die "connect: $!\n";

my $line = "";
my $str_len = 0;
my $time_stamp;

# Loop until server stops sending.
while ($line = <SOCKET> )  
{
    chomp($line);                                  # Remove any newline characters
    $str_len = length($line);                      # Variable hold the length of the recieved data
    $time_stamp = unpack("I", $line);
    print STDOUT "Recv. $str_len bytes: $line  (uint = $time_stamp)\n";
}
close SOCKET or die "close: $!";
