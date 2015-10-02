'Declaration des variables
dim fso
dim folder
dim maxsize
dim convsize

'Taille max en Go
maxsize = 3

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder("U:\")
fsize = Round(FormatNumber(folder.Size,0)/(1024*1024*1024),0)

if fsize > maxsize then

MsgBox ("/!\ Attention /!\" & vbCrLf & "Votre espace personnel est trop grand : " & fsize & " Go" & vbCrLf & "Merci de réduire sa taille à " & maxsize & " Go.")

End if