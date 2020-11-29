//%attributes = {"shared":true,"preemptive":"capable"}
// From https://discuss.4d.com/t/for-each-smarter-handling-of-null-collections/16605/6

var $1; $0 : Variant
var $2; $type : Integer

If ($1=Null:C1517)
	If (Count parameters:C259=2)
		$type:=$2
	Else 
		$type:=Value type:C1509($1)
	End if 
	
	Case of 
		: ($type=Is collection:K8:32)
			$0:=New collection:C1472()
		: ($type=Is object:K8:27)
			$0:=New object:C1471()
		: ($type=Is real:K8:4) | ($type=Is longint:K8:6) | ($type=Is integer:K8:5)
			$0:=0
		: ($type=Is date:K8:7)
			$0:=!00-00-00!
		: ($type=Is text:K8:3)
			$0:=""
		: ($type=Is boolean:K8:9)
			$0:=False:C215
		: ($type=Is time:K8:8)
			$0:=?00:00:00?
	End case 
	
Else 
	$0:=$1
End if 