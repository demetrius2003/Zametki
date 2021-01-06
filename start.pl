#!/usr/bin/perl

my $username = '';
my $password = '';
read(STDIN, $buffer, $ENV);
@values = split(/&/, "$ENV{'QUERY_STRING'}");
foreach $value (@values) {
    ($name, $val) = split(/=/, $value);
    if ($name eq "user") {
	$username = $val;
    }
    if ($name eq "pass") {
	$password = $val;
    }
}
open (my $fh, '<:encoding(UTF-8)', 'logins.dat') or die "logins file not found!";
while (my $row = <$fh>) {
    chomp $row;
    if (substr($row, 0, 4) eq "user") {
	($varname, $user) = split("=", $row);
    }
    if (substr($row, 0, 4) eq "pass") {
	($varname, $pass) = split("=", $row);
    }
}
print "Content-type: text/html\r\n\r\n";
print "<html>";
print "<head>";
print "<title>zametki</title>";
print "</head>";
print "<body>";
my $date = '';
my $name = '';
my $desc = '';
if ($user eq $username) {
    if ($pass eq $password) {
	print "<form action=\"add.pl\" method=\"GET\">";
	print "<input name=\"$user\" type=\"submit\" value=\"adding\">";
	print "<table width=\"800\" border=\"1\">";
	print "<tr><th></th><th>Date</th><th>Period sec</th><th>Name</th><th>Desc</th></tr>";
	open (my $zh, '<:encoding(UTF-8)', 'zametki.dat') or die "data file not found!";
	my $c = 0;
	while (my $row = <$zh>) {
	    chomp $row;
	    $c++;
	    ($date, $name, $desc) = split("=", $row);
	    $per = time() - $date;
	    $date = localtime($date);
	    print "<tr><th>$c</th><th>$date</th><th>$per</th><th>$name</th><th>$desc</th></tr>";
	}
	print "</table>";
    }
    else {
	print "usename and/or password is wrong!";
    }
}
print "</body>";
print "</html>";