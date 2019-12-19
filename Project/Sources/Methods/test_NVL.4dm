//%attributes = {}
  // ASSERT(NVL ("test")="test")
ASSERT:C1129(NVL (Null:C1517;"test")="test")
ASSERT:C1129(NVL (Null:C1517;NVL (Null:C1517;"test"))="test")

  // ASSERT(NVL (Null)=Null)
ASSERT:C1129(NVL (Null:C1517;Null:C1517)=Null:C1517)
ASSERT:C1129(NVL (Null:C1517;NVL (Null:C1517;Null:C1517))=Null:C1517)

C_VARIANT:C1683($value;$Obj)
$Obj:=New object:C1471()
For each ($value;NVL ($Obj.collection;New collection:C1472))
	
End for each 

$Obj.collection:=New collection:C1472("1";"2")
C_LONGINT:C283($i)
$i:=0
For each ($value;NVL ($Obj.collection;New collection:C1472))
	$i:=$i+1
End for each 
ASSERT:C1129($Obj.collection.length=$i)