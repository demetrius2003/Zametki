#!/usr/bin/perl

my $name = '';
my $desc = '';
read(STDIN, $buffer, $ENV);
@values = split(/&/, "$ENV{'QUERY_STRING'}");
foreach $value (@values) {
    ($nam, $val) = split(/=/, $value);
    if ($nam eq "name") {
	$name = $val;
    }
    if ($nam eq "desc") {
	$desc = $val;
    }
}
print "Content-type: text/html\r\n\r\n";
open (my $zh, '>>', 'zametki.dat') or die "data file not found!";
print $zh "\n".time().'='.$name.'='.$desc;
close $zh;
print "OK";
