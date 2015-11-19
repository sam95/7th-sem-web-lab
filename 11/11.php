<?php

	mysql_connect("localhost","root","1234") or die(mysql_error());
	mysql_select_db("simpass") or die(mysql_error());

	$a=$_POST["click"];
	if($a=="Insert")
	{
		insert();
	}
	else
	{
		search();
	}
function insert()
{
		$n=$_POST["usrName"];
		$a1=$_POST["Addr1"];
		$a2=$_POST["Addr2"];
		$e=$_POST["email"];


 		$q="insert into users values('$n','$a1','$a2','$e')";
 		mysql_query($q);
 
	 	$q="select * from users";
	 	$v=mysql_query($q);

	 	print "<table border=1>
		  <tr>
		   <th>Name</th>
		   <th>Addr1</th>
		   <th>Addr2</th>
		   <th>Email</th>
		  </tr>";
	 	while($b=mysql_fetch_row($v))
	 	{
			print "<tr><td>$b[0]</td><td>$b[1]</td><td>$b[2]</td><td>$b[3]</td></tr>";
		}
		print "</table>";
}

function search()
{
	$n=$_POST["usrName"];
	$q="select * from users where name='$n'";
	$v=mysql_query($q);

	print "<table border=1>
	  <tr>
	   <th>Name</th>
	   <th>Addr1</th>
	   <th>Addr2</th>
	   <th>Email</th>
	  </tr>";
	while($b=mysql_fetch_row($v))
	{
		print "<tr><td>$b[0]</td><td>$b[1]</td><td>$b[2]</td><td>$b[3]</td></tr>";
	}
	print "</table>";
}
?>
