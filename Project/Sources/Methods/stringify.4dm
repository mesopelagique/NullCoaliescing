//%attributes = {"invisible":true,"preemptive":"capable"}

C_VARIANT:C1683($1;$var)
C_TEXT:C284($0)
$var:=$1

Case of 
	: (Value type:C1509($var)=Is text:K8:3)
		$0:=$var
	: (Value type:C1509($var)=Is object:K8:27)
		$0:=JSON Stringify:C1217($var)
	: (Value type:C1509($var)=Is collection:K8:32)
		$0:=JSON Stringify array:C1228($var)
	Else 
		$0:=String:C10($var)
End case 