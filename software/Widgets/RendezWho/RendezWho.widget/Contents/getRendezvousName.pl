#!/usr/bin/perl -w

$address = shift;

$out = `curl http://$address:3689/server-info -s`;

exit if ($? != 0);

$nameStart = index($out, "minm");
$length = unpack("I", substr($out, $nameStart + 4, 4));

$name = substr($out, $nameStart + 8, $length);

print "$name\n";