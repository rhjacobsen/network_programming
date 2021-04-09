#! /usr/bin/perl -w
# tptcpserver.pl
#--------------------

use strict;
use Socket;

# use port 7890 as default
my $port = shift || 7890;
my $proto = getprotobyname('tcp');

# create a socket, make it reusable
socket(SERVER, PF_INET, SOCK_STREAM, $proto) or die "socket: $!\n";
setsockopt(SERVER, SOL_SOCKET, SO_REUSEADDR, 1) or die "setsock: $!\n";

# grab a port on this machine
my $paddr = sockaddr_in($port, INADDR_ANY);

# bind to a port, then listen
bind(SERVER, $paddr) or die "bind: $!\n";
listen(SERVER, SOMAXCONN) or die "listen: $!\n";
print "SERVER started on port $port.\n";

# accepting a connection
my $client_addr;
while ($client_addr = accept(CLIENT, SERVER))
{
    # find out who connected
    my ($client_port, $client_ip) = sockaddr_in($client_addr);
    my $client_ipnum = inet_ntoa($client_ip);
    my $client_host = gethostbyaddr($client_ip, AF_INET);

    # print who has connected
    print STDOUT "Got a connection from: $client_host"," [$client_ipnum]\n";

    # send them a message, close connection
    print CLIENT "Smile from the server.\n";

    # 2,524,521,600 corresponds to 00:00  1 Jan 1980 GMT 
    # Time stamps is represented as 32 bit uniary numbers (unsigned int)
    my $time_stamp = pack("I", 2524521600);

    # Send the timestamp.
    # The newline ("\n") character will define the end of the stream
    print CLIENT "$time_stamp\n";

    close CLIENT;
 }

