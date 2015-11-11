#! /usr/bin/perl
use CGI ":standard";
print header;
print start_html("greet");
$n=param("greet");
@arr=("Hello","Hi","how are you?","how do you do?");
$num=int(rand(4));
print "$arr[$num] $n";
