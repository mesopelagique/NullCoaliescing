//%attributes = {}

C_OBJECT:C1216($obj)
C_VARIANT:C1683($value)
C_TEXT:C284($expected)

/*
var obj = {
  a: {
    b: "d",
    c: ["e", "f"],
    '\u1200': 'unicode key',
    'dot.dot': 'key'
  }
};
 */
$obj:=New object:C1471(\
"a";New object:C1471(\
"b";"d";\
"c";New collection:C1472("e";"f");\
"ሀ";"unicode key";\
"dot.dot";"key"\
)\
)

$expected:=$obj["a"]["b"]
$value:=PATH_COALESCE ($obj;"a.b";"default")
ASSERT:C1129($expected=stringify ($value);"Expected"+$expected+" , value"+stringify ($value))

$expected:=$obj["a"]["dot.dot"]
$value:=PATH_COALESCE ($obj;New collection:C1472(New collection:C1472("a";"dot.dot"));"default")
ASSERT:C1129($expected=stringify ($value);"Expected"+$expected+" , value"+stringify ($value))

$expected:=$obj["a"]["b"]
$value:=PATH_COALESCE ($obj;New collection:C1472("a.z";"a.d";"a.b";"z");"default")
ASSERT:C1129($expected=stringify ($value);"Expected"+$expected+" , value"+stringify ($value))

$expected:=$obj["a"]["b"]
$value:=PATH_COALESCE ($obj;New collection:C1472("a.z";"a.d";New collection:C1472("a";"b"));"default")
ASSERT:C1129($expected=stringify ($value);"Expected"+$expected+" , value"+stringify ($value))

$expected:=$obj["a"]["b"]
$value:=PATH_COALESCE ($obj;New collection:C1472("a.z";"a.d";New collection:C1472("a";"b");"a");"default")
ASSERT:C1129($expected=stringify ($value);"Expected"+$expected+" , value"+stringify ($value))

$expected:=$obj["a"]["dot.dot"]
$value:=PATH_COALESCE ($obj;New collection:C1472("a.z";"a.d";New collection:C1472("a";"dot.dot"));"default")
ASSERT:C1129($expected=stringify ($value);"Expected"+$expected+" , value"+stringify ($value))

  // default

$expected:="default"
$value:=PATH_COALESCE ($obj;"a.z";$expected)
ASSERT:C1129($expected=stringify ($value);"Expected"+$expected+" , value"+stringify ($value))

$expected:="default"
$value:=PATH_COALESCE ($obj;New collection:C1472("a.z";"a.d";"a.e";"z");$expected)
ASSERT:C1129($expected=stringify ($value);"Expected"+$expected+" , value"+stringify ($value))


  // no default

$value:=PATH_COALESCE ($obj;"a.z")
ASSERT:C1129(Null:C1517=$value;"Expected Null , value"+stringify ($value))

$value:=PATH_COALESCE ($obj;New collection:C1472("a.z";"a.d";"a.e";"z"))
ASSERT:C1129(Null:C1517=$value;"Expected Null , value"+stringify ($value))