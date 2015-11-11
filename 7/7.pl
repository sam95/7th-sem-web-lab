#! /usr/bin/perl
use CGI ":standard";

$delay=1;
($s,$m,$h)=localtime(time);
print "refresh:",$delay,"\n";

print header;
print start_html("clock");
print "clock : $h:$m:$s";
print end_html;
