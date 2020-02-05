<!-- NVF(possibly_null_value, formula to apply with possibly_null_value as argument, 'optionnal value if null') -->
## NVF

Allow to return the result of the passed formula(`$2`) applyed to first element(`$1`) if this element is non `NULL` otherwise return `Undefined` or optionnal third element (`$3`).

### Why?

Apply one line `Formula` without checking if element is `Null`

### Usage

### Checking if could loop on collection (one line)

```4d
If (NVF ($collection;Formula($1.length>5)))
	For each ($element;$collection)

	End for each
End if
```

### Explanation

You cannot check a collection size if this collection is `NULL` .

```4d
If ($collection.lenght>0)
```

Because the second condition will be evaluated using 4d you cannot do that either
```4d
If (($collection#Null) & ($collection.lenght>5))
...
```

The only solution is two lines of code

```4d
If ($collection#Null)
  If($collection.lenght>0)
...
```

### Test

see [test_NVF](../../Project/Sources/Methods/test_NVF.4dm)

---

![Elvis](https://res.cloudinary.com/practicaldev/image/fetch/s--fUx8DazI--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/6j3wmn15zj3vp3qyfctv.jpg)
