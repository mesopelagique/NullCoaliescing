//%attributes = {"invisible":true,"preemptive":"capable"}
C_OBJECT:C1216($1;$obj)
C_VARIANT:C1683($2)
C_VARIANT:C1683($0;$result)
C_BOOLEAN:C305($3)  // parse or not path
$obj:=$1

C_COLLECTION:C1488($paths)
If (Value type:C1509($2)=Is text:K8:3)
	If (Bool:C1537($3))
		$paths:=Split string:C1554($2;".")
	Else 
		$paths:=New collection:C1472($2)
	End if 
Else 
	$paths:=$2  // throw if not col
End if 
$result:=$obj

C_TEXT:C284($path)
For each ($path;$paths) Until (Value type:C1509($result)#Is object:K8:27)
	$result:=$result[$path]
End for each 

$0:=$result