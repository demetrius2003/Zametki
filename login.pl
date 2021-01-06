#!/usr/bin/perl

print "Content-type: text/html\r\n\r\n";
print "<html>";
print "<head>";
print "<title>zametki</title>";
print "</head>";
print "<body>";
print "<form name=\"login\" method=\"GET\" action=\"start.pl\">";
print "<p><b>Username:</b><br>";
print "<input type=\"text\" name=\"user\" size=\"40\">";
print "</p>";
print "<p><b>Password:</b><br>";
print "<input type=\"text\" name=\"pass\" size=\"40\">";
print "</p>";
print "<input type=\"submit\" value=\"ok\">";
print "</form>";
print "</body>";
print "</html>";