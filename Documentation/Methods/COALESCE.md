<!-- COALESCE(possibly_null_value[, possibly_null_value, ...]) -->
## COALESCE

Allow to return the first non `NULL` element.

Inspired from [`COALESCE` SQL function](https://en.wikipedia.org/wiki/Null_coalescing_operator#SQL).

### Usage

### For each without checking if NULL

```4d
C_VARIANT($value;$Obj)
$Obj:=New object(...
For each ($value;COALESCE ($Obj.collection1;$Obj.collection3;New collection))
	// do something
End for each

```

💡 For only one possible `NULL` parameter you can use [NVL](NVL.md)

### Test

see [test_COALESCE](../../Project/Sources/Methods/test_COALESCE.4dm)

---

![Elvis](https://res.cloudinary.com/practicaldev/image/fetch/s--fUx8DazI--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/6j3wmn15zj3vp3qyfctv.jpg)
