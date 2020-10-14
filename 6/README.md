In the terminal type : locate cgi-bin

Select the first path and move to that directory

In the folder create a new perl script type : sudo gedit 6.pl

sudo is required because you don't have root permissions to access cgi directory

key in the password

Type the code or copy it and paste!

Don't forget to type : sudo chmod 777 6.pl

save it and open the browser : localhost/cgi-bin/6.pl on the browser

Cheers!

### Note for windows user for Experiment 6a:
In XAMPP, the cgi-bin directory cannot open HTML files as it is forbidden because if it allows execution of html, then anyone globally can open the developer's files through browser. Hence, don't put html files in cgi-bin. It would be a quick fix, because opposite to linux, Windows OS takes a lot of hard-work to have some easy read-write permissions to the files.
