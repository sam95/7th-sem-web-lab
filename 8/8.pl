#! /usr/bin/perl
use CGI ":standard";
use DBI;

print header;
print start_html("insert");
$n=param("uname");
$a=param("uage");
$db=DBI->connect("DBI:mysql:simpass","root","1234");
$q="insert into person values('$n','$a')";
$st=$db->prepare($q);
$st->execute();
$q="select * from person";
$st=$db->prepare($q);
$st->execute();
print "<table border=1>
		<tr><th>Name</th><th>age</th></tr>";
while(($n,$a)=$st->fetchrow())
{
	print "<tr><td>$n</td><td>$a</td></tr><br/>";
}
print "</table>";
$st->finish();
$db->disconnect();
print end_html;
