//%attributes = {"preemptive":"capable"}
  // https://en.wikipedia.org/wiki/Null_coalescing_operator
C_VARIANT:C1683($0)  // formula result if first element not null not null otherwise value_if_null
C_VARIANT:C1683($1)  // possible null to check
C_OBJECT:C1216($2)  // formula
C_VARIANT:C1683($3)  // optional value_if_null

If (False:C215)
	C_VARIANT:C1683(NVF ;$0)
	C_VARIANT:C1683(NVF ;$1)
	C_OBJECT:C1216(NVF ;$2)
	C_VARIANT:C1683(NVF ;$3)
End if 

Case of 
	: ($1#Null:C1517)
		$0:=$2.call(Null:C1517;$1)
	: (Count parameters:C259>2)
		$0:=$3
End case 