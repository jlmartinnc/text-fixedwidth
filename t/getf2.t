use Test::More(tests => 10);
use Test::Warn;
use Text::FixedWidth;
use warnings;

ok(my $fw = new Text::FixedWidth, "new()");
ok($fw->set_attributes(qw(
      fname           Jay    %10s
      points1         12     %4d
      points2         19     %04d
      money           34.6   %07.2f
   )),                                         "set_attributes()");
is($fw->get('fname'),    'Jay',                   "get('fname')");
is($fw->getf('fname'),   '       Jay',            "getf('fname')");
is($fw->get('points1'),  12,                      "get('points1')");
is($fw->getf('points1'), '  12',                  "getf('points1')");
is($fw->get('points2'),  19,                      "get('points2')");
is($fw->getf('points2'), '0019',                  "getf('points2')");
is($fw->get('money'),    34.6,                    "get('money')");
is($fw->getf('money'),   '0034.60',               "getf('money')");


