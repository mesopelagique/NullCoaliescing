[![language](https://img.shields.io/static/v1?label=language&message=4d&color=blue)](https://developer.4d.com/)
[![language](https://img.shields.io/github/languages/top/mesopelagique/NullCoaliescingOperator.svg)](https://developer.4d.com/)
![code-size](https://img.shields.io/github/languages/code-size/mesopelagique/NullCoaliescingOperator.svg)

# [Null coalescing](https://en.wikipedia.org/wiki/Null_coalescing_operator) using 4D ?:)

## [NVL](Documentation/Methods/NVL.md)

Defined a default value if `NULL`

```4d
C_VARIANT($value;$Obj;$NullObject)
$Obj:=New object()

$value:=NVL($NullObject;$Obj) // $value eq. $Obj (same as Choose($NullObject=Null;$Obj;$NullObject) )
```


```4d
C_VARIANT($value;$Obj)
$Obj:=New object()
For each ($value;NVL ($Obj.collection;New collection))
	// do something
End for each 

```

## [COALESCE](Documentation/Methods/COALESCE.md)

Same as `NVL` but with more than one possible `NULL` element.

```4d
C_VARIANT($value;$Obj)
$Obj:=New object()
For each ($value;COALESCE ($Obj.collection1;$Obj.collection3;New collection))
	// do something
End for each 

```

## [NVF](Documentation/Methods/NVF.md)

Checking if `NULL` before applying any formula.


```4d
If (NVF ($collection;Formula($1.length>2)))
	For each ($element;$collection)

	End for each
End if
```

## [PATH_COALESCE](Documentation/Methods/PATH_COALESCE.md)

Get the first defined value from an object.

```4d
$obj:=New object("a"; New object("b";"d"))
PATH_COALESCE($obj;New collection("a.z";"d";"a.b";"dot.dot");$defaultValue)
```

---

![Elvis](https://res.cloudinary.com/practicaldev/image/fetch/s--fUx8DazI--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/6j3wmn15zj3vp3qyfctv.jpg)
