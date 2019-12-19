//%attributes = {}
  // https://en.wikipedia.org/wiki/Null_coalescing_operator
C_VARIANT:C1683($0)
C_VARIANT:C1683(${1})

C_LONGINT:C283($i)

If (False:C215)
	C_VARIANT:C1683(COALESCE ;$0)
	C_VARIANT:C1683(COALESCE ;${1})
End if 

For ($i;1;Count parameters:C259;1)
	
	$0:=${$i}
	If ($0#Null:C1517)
		$i:=MAXINT:K35:1  // Break
	End if 
	
End for 