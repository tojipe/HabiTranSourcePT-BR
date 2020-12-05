Attribute VB_Name = "ptbrButton"
Sub ptbrButton()

'<1>Declara��o de vari�veis
    Dim searchString As String
    Dim ptbrString As String
    Dim enString As String
    Dim labelString As String
    Dim notesString As String
    
'<2>Busca, na planilha Habitica_Technical_Terms a string informada
    searchString = Range("Search_Bar!B2").Value
    Sheets("Habitica_Technical_Terms").Select
    
'<3>Informa os valores encontrados
    Cells.Find(What:=searchString).Activate
    ptbrString = ActiveCell.Value
    
    ActiveCell.Offset(0, 1).Select
    enString = ActiveCell.Value
    
    ActiveCell.Offset(0, 1).Select
    labelString = ActiveCell.Value
    
    ActiveCell.Offset(0, 1).Select
    notesString = ActiveCell.Value
    
    Sheets("Search_Bar").Select
    Range("B4").Value = ptbrString
    Range("B5").Value = enString
    Range("B7").Value = labelString
    Range("B8").Value = notesString
    
End Sub
