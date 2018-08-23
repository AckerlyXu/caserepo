Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web

Imports Microsoft.Office.Interop.Word

Module Module1

    Sub Main()

        Dim objWordApp As Application = New Application()
        Dim objWordDoc As Document = New Document()
        Dim missing As Object = Type.Missing
        Dim visible As Object = True
        Dim objCreateDoc As Object = "D:/develop/vsworkspace/WebFormCases/VbConsole/merge.docx"
        Dim strNewDocPath1 As String = "D:/develop/vsworkspace/WebFormCases/VbConsole/test.docx"
        Dim strNewDocPath2 As String = "D:/develop/vsworkspace/WebFormCases/VbConsole/test1.docx"
        Dim strNewDocPath3 As String = "D:/develop/vsworkspace/WebFormCases/VbConsole/test2.docx"
        Dim objPageBreak As Object = Microsoft.Office.Interop.Word.WdBreakType.wdPageBreak

        Try
            objWordDoc = objWordApp.Documents.Open(objCreateDoc, False, False, missing, missing, missing, missing, missing, missing, missing, missing, True, missing, missing, missing, missing)
            objWordDoc.Activate()
            objWordApp.Selection.InsertFile(strNewDocPath1, missing, True, missing, missing)
            objWordApp.Selection.InsertBreak(objPageBreak)
            objWordApp.Selection.InsertFile(strNewDocPath2, missing, missing, missing, missing)
            objWordApp.Selection.InsertBreak(objPageBreak)
            objWordApp.Selection.InsertFile(strNewDocPath3, missing, missing, missing, missing)
            objWordApp.Selection.InsertBreak(objPageBreak)
            objWordApp.ActiveDocument.SaveAs(objCreateDoc, missing, missing, missing, missing, missing, missing, missing, missing, missing, missing)
            objWordApp.ActiveDocument.Close(missing, missing, missing)
        Catch ex As Exception
            Throw ex
        End Try
    End Sub


End Module
