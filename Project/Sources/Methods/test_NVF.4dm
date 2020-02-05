//%attributes = {}
C_COLLECTION:C1488($collection)
C_TEXT:C284($describe)
C_OBJECT:C1216($moreThanTwoFormula)


If (NVF ($collection;Formula:C1597($1.length>0)))  // If ($collection.lenght>0) or If (($collection#Null) & ($collection.lenght>0)) -> assert
	ASSERT:C1129(False:C215;"Example of code unreachable on COLLECTION")
	For each ($describe;$collection)
		
	End for each 
End if 

If (NVF ($describe;Formula:C1597(Length:C16($1)>0)))  // If (Length($describe)>0) -> work in interpreted
	ASSERT:C1129(False:C215;"Example of code unreachable on TEXT")
	ALERT:C41($describe)
End if 

  // Real test

$moreThanTwoFormula:=Formula:C1597($1.length>2)

$describe:="Null collection"
$collection:=Null:C1517
ASSERT:C1129((NVF ($collection;$moreThanTwoFormula;False:C215))=False:C215;$describe+": Must return False (default value False)")
ASSERT:C1129((NVF ($collection;$moreThanTwoFormula;True:C214))=True:C214;$describe+":Must return True: null coll (default value True")

ASSERT:C1129(Bool:C1537(NVF ($collection;$moreThanTwoFormula))=False:C215;$describe+":Must return False: null coll (no default value)")  // Bool of Null

$describe:="Empty collection"
$collection:=New collection:C1472()

ASSERT:C1129((NVF ($collection;$moreThanTwoFormula;False:C215))=False:C215;$describe+":Must return False: null coll (default value False)")
ASSERT:C1129((NVF ($collection;$moreThanTwoFormula;True:C214))=False:C215;$describe+":Must return False: null coll (default value True)")

ASSERT:C1129((NVF ($collection;$moreThanTwoFormula)=False:C215);$describe+":Must return False: null coll ( no default value)")

$describe:="Collection with result condition is true"
$collection:=New collection:C1472("one";"two";"tree")

ASSERT:C1129((NVF ($collection;$moreThanTwoFormula;False:C215))=True:C214;$describe+":Must return True: null coll ( default value False)")
ASSERT:C1129((NVF ($collection;$moreThanTwoFormula;True:C214))=True:C214;$describe+":Must return True: null coll (default value True)")

ASSERT:C1129((NVF ($collection;$moreThanTwoFormula)=True:C214);$describe+":Must return True: null coll (no default value)")


