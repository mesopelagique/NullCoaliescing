<!-- PATH_COALESCE(object, collection of path, 'optionnal value if null') -->
## PATH_COALESCE

Get the first defined value from an object.

### Usage

```4d
$obj:=New object("a"; New object("b";"d"))
PATH_COALESCE($obj;New collection("a.z";"d";"a.b";"dot.dot");$defaultValue)
```

### Why?

Sometimes objects could define something with different path, mostly if parsed from JSON with different format version.

### Test

see [test_PATH_COALESCE](../../Project/Sources/Methods/test_PATH_COALESCE.4dm)