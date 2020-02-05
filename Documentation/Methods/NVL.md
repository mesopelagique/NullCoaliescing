<!-- NLV(possibly_null_value, 'value if null') -->
## NVL

Allow to return the first element if non `NULL` otherwise the second.

https://en.wikipedia.org/wiki/Null_coalescing_operator

Inspired from `NVL` SQL function.


### Usage

### Take non NULL object

```4d
C_VARIANT($value;$Obj;$NullObject)
$Obj:=New object()
// ...
$value:=NVL($NullObject;$Obj) // $value eq. $Obj (same as Choose($NullObject=Null;$Obj;$NullObject) )
```

### For each without checking if NULL

```4d
C_VARIANT($value;$Obj)
$Obj:=New object(... // create your object
For each ($value;NVL ($Obj.collection;New collection))
	// do something
End for each

```

💡 For more than one parameter you can use [COALESCE](COALESCE.md)

### Explanation

It's just a simple wrapper on `Choose` method.

```4d
$0:=Choose($1=Null;$2;$1)
```

see [NVL](../../Project/Sources/Methods/NVL.4dm#L13)

### Test

see [test_NVL](../../Project/Sources/Methods/test_NVL.4dm)

---

![Elvis](https://res.cloudinary.com/practicaldev/image/fetch/s--fUx8DazI--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/6j3wmn15zj3vp3qyfctv.jpg)
