#!/usr/bin/perl

print "Content-type: text/html\r\n\r\n";
print "<html>";
print "<head>";
print "<title>zametki</title>";
print "</head>";
print "<body>";
print "<form name=\"add\" method=\"GET\" action=\"addact.pl\">";
print "<p><b>Name:</b><br>";
print "<input type=\"text\" name=\"name\" size=\"40\">";
print "</p>";
print "<p><b>Desc:</b><br>";
print "<input type=\"text\" name=\"desc\" size=\"40\">";
print "</p>";
print "<input type=\"submit\" value=\"ok\">";
print "</form>";
print "</body>";
print "</html>";