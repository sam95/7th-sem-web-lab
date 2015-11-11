#! /usr/bin/perl
use CGI ':standard';

print header;
print start_html("Server Information");
print "Server Name = $ENV{'SERVER_NAME'}<br/>";
print "Server Software = $ENV{'SERVER_SOFTWARE'}<br/>";
print "Server Protocol = $ENV{'SERVER_PROTOCOL'}<br/>";
print "CGI Revision = $ENV{'GATEWAY_INTERFACE'}<br/>";
print end_html;
