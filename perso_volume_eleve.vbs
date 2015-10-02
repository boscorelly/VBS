'Declaration des variables
dim fso
dim folder
dim maxsize
dim convsize

'Taille max en Mo
maxsize = 500

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder("U:\")
fsize = Round(FormatNumber(folder.Size,0)/(1024*1024),0)

if fsize > maxsize then

MsgBox ("/!\ Attention /!\" & vbCrLf & "Votre espace personnel est trop grand : " & fsize & " Mo" & vbCrLf & "Merci de réduire sa taille à " & maxsize & " Go.")

End if