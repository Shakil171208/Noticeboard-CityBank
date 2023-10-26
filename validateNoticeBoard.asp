<!--#include virtual ="\Class\c_data_batch.asp" -->
<!--#include file="../../system/configure.asp"-->

<%
Response.codepage=65001
Response.Charset="utf-8"

    ' Create a database connection
    Set objDataErs = New c_data
    objDataErs.OpenConnection ConnectionName, strErr

    intSerialId1 =  trim(Request.Form("serialId1"))
    strNoticeTitle1 = trim(Request.Form("noticeTitle1"))
    strNoticeDescription1 = trim(Request.Form("noticeDescription1"))
    strPublishedDate1 = trim(Request.Form("publishedDate1"))
    strClosingDate1 = trim(Request.Form("closingDate1"))
    strNoticeLink1 = trim(Request.Form("noticeLink1"))

    intSerialId2 =  trim(Request.Form("serialId2"))
    strNoticeTitle2 = trim(Request.Form("noticeTitle2"))
    strNoticeDescription2 = trim(Request.Form("noticeDescription2"))
    strPublishedDate2 = trim(Request.Form("publishedDate2"))
    strClosingDate2 = trim(Request.Form("closingDate2"))
    strNoticeLink2 = trim(Request.Form("noticeLink2"))

    intSerialId3 =  trim(Request.Form("serialId3"))
    strNoticeTitle3 = trim(Request.Form("noticeTitle3"))
    strNoticeDescription3 = trim(Request.Form("noticeDescription3"))
    strPublishedDate3 = trim(Request.Form("publishedDate3"))
    strClosingDate3 = trim(Request.Form("closingDate3"))
    strNoticeLink3 = trim(Request.Form("noticeLink3"))
    
    'Validattion for Notice 1
    If intSerialId1 = "" then  
       Response.Write("Please enter Serial No.") 
	   Response.End
    End If

    'If strNoticeTitle1 = "" then  
'        Response.Write("Notice title can't be empty.")
'        Response.End
'    End If

    If strNoticeDescription1 = "" then  
        Response.Write "Notice description can't be empty."
        Response.End
    End If

    If strPublishedDate1 = "" then  
        Response.Write("Please select Active Date.")
        Response.End
    End If

    If strClosingDate1 = "" then  
        Response.Write("Please select Closing Date.")
        Response.End
    End If

  '  If strNoticeLink1 = "" then  
'        Response.Write("Please enter Notice Link.")
'        Response.End
'    End If

    'Validattion for Notice 2
'    if (isNotice2 = true) OR (serialId2 <> "" OR noticeTitle2 <> ""  OR noticeDescription2 <> ""  OR publishedDate2 <> ""  OR closingDate2 <> ""  OR noticeLink2 <> "" ) then
'	 
'       If intSerialId2 = "" then  
'      	     Response.Write("Please enter Serial No.")
'			 Response.End
'       End If
'
'        If strNoticeTitle2 = "" then  
'            Response.Write("Notice title can't be empty.")
'            Response.End
'        End If
'
'        If strNoticeDescription2 = "" then  
'            Response.Write "Notice description can't be empty."
'            Response.End
'        End If
'
'        If strPublishedDate2 = "" then  
'            Response.Write("Please select Active Date.")
'            Response.End
'        End If
'
'        If strClosingDate2 = "" then  
'            Response.Write("Please select Closing Date.")
'            Response.End
'        End If
'
'        If strNoticeLink2 = "" then  
'            Response.Write("Please enter Notice Link.")
'            Response.End
'        End If
'    
'    End If

'    'Validattion for Notice 3
'    if (isNotice3 = true) OR (serialId3 <> "" OR noticeTitle3 <> ""  OR noticeDescription3 <> ""  OR publishedDate3 <> ""  OR closingDate3 <> ""  OR noticeLink3 <> "" ) then
'    
'        If strNoticeTitle3 = "" then  
'            Response.Write("Notice title can't be empty.")
'            Response.End
'        End If
'
'        If strNoticeDescription3 = "" then  
'            Response.Write "Notice description can't be empty."
'            Response.End
'        End If
'
'        If strPublishedDate3 = "" then  
'            Response.Write("Please select Active Date.")
'            Response.End
'        End If
'
'        If strClosingDate3 = "" then  
'            Response.Write("Please select Closing Date.")
'            Response.End
'        End If
'
'        If strNoticeLink3 = "" then  
'            Response.Write("Please enter Notice Link.")
'            Response.End
'        End If
'
'    End If

    ' Create an SQL insert statement
    strSQLInsert = "INSERT INTO NoticeBoard (slNo, noticeTitle, noticeDescription, postDate, publishDate, closingDate, viewLink) VALUES "

    If intSerialId1 <> "" Then
        strSQLInsert = strSQLInsert & "(" & intSerialId1 & ", '" & strNoticeTitle1 & "', N'" & strNoticeDescription1 & "' , '" & now() & "', '" & strPublishedDate1 & "', '" & strClosingDate1 & "', '" & strNoticeLink1 & "'), "
    End If

    If intSerialId2 <> "" Then
        strSQLInsert = strSQLInsert & "(" & intSerialId2 & ", '" & strNoticeTitle2 & "', N'" & strNoticeDescription2 & "' , '" & now() & "', '" & strPublishedDate2 & "', '" & strClosingDate2 & "', '" & strNoticeLink2 & "'), "
    End If

    If intSerialId3 <> "" Then
        strSQLInsert = strSQLInsert & "(" & intSerialId3 & ", '" & strNoticeTitle3 & "', N'" & strNoticeDescription3 &"' , '" & now() & "', '" & strPublishedDate3 & "', '" & strClosingDate3 & "', '" & strNoticeLink3 & "'), "
    End If

    ' Check if any data was added before executing the query
    If Right(strSQLInsert, 2) = ", " Then
        strSQLInsert = Left(strSQLInsert, Len(strSQLInsert) - 2)
		RESPONSE.Write(strSQLInsert)
        objDataErs.ExecuteQuery strSQLInsert, errMsg
    End If

    If errMsg <> "" Then
        Response.Write "An error occurred while executing the query at insert: " & errMsg
        Response.End
    End If

    objDataErs.CloseConnection()  
    Set objDataErs = Nothing

%>