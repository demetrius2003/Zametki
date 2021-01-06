#!/usr/bin/perl

use Time::Local;

print "Content-type: text/html\r\n\r\n";
print "<html>";
print "<head>";
print "<title>zametki</title>";
print "</head>";
print "<body>";
my $t = time();
print $t;
print "</body>";
print "</html>";