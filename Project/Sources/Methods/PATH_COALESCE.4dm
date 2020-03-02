//%attributes = {"shared":true,"preemptive":"capable"}
C_OBJECT:C1216($1;$obj)
C_VARIANT:C1683($2)
C_VARIANT:C1683($3;$default)
C_VARIANT:C1683($0;$result)

$obj:=$1

C_COLLECTION:C1488($paths)
C_BOOLEAN:C305($parse)
$parse:=(Value type:C1509($2)=Is text:K8:3)
If ($parse)
	$paths:=New collection:C1472($2)
Else 
	$paths:=$2  // throw if not col
End if 

$default:=$3

C_VARIANT:C1683($path)
For each ($path;$paths) Until ($result#Null:C1517)
	$result:=OBJECT_PATH ($obj;$path;True:C214)
End for each 

If ($result=Null:C1517)
	$result:=$default
End if 

$0:=$result