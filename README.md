[![language](https://img.shields.io/static/v1?label=language&message=4d&color=blue)](https://developer.4d.com/)

# Null coalescing operator

[Null coalescing](https://en.wikipedia.org/wiki/Null_coalescing_operator) using 4D

[NVL](Documentation/Methods/NVL.md)

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

[COALESCE](Documentation/Methods/COALESCE.md)

```4d
C_VARIANT($value;$Obj)
$Obj:=New object()
For each ($value;COALESCE ($Obj.collection1;$Obj.collection3;New collection))
	// do something
End for each 

```

---

![Elvis](https://res.cloudinary.com/practicaldev/image/fetch/s--fUx8DazI--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/6j3wmn15zj3vp3qyfctv.jpg)
