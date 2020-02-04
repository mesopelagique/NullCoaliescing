//%attributes = {"preemptive":"capable"}
  // https://en.wikipedia.org/wiki/Null_coalescing_operator
C_VARIANT:C1683($0)  // possibly_null_value if not null otherwise value_if_null
C_VARIANT:C1683($1)  // possibly_null_value
C_VARIANT:C1683($2)  // value_if_null

If (False:C215)
	C_VARIANT:C1683(NVL ;$0)
	C_VARIANT:C1683(NVL ;$1)
	C_VARIANT:C1683(NVL ;$2)
End if 

$0:=Choose:C955($1=Null:C1517;$2;$1)