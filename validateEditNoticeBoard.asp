<!--#include file="../../system/configure.asp"-->
<!--#include virtual = "\Class\c_data_batch.asp" -->
<!--#include virtual="\applications\class\Class_Data_Access_Admin.asp"-->

<%
	Response.codepage=65001
	Response.Charset="utf-8"

    ' Create a database connection
    Set objDataErs = New c_data
    objDataErs.OpenConnection ConnectionName, strErr
    
    intNoticeId1 = trim(Request.Form("noticeId1"))
    intSerialId1 =  trim(Request.Form("serialId1"))
    strNoticeTitle1 = trim(Request.Form("noticeTitle1"))
    strNoticeDescription1 = trim(Request.Form("noticeDescription1"))
    strPublishedDate1 = trim(Request.Form("publishedDate1"))
    strClosingDate1 = trim(Request.Form("closingDate1"))
    strNoticeLink1 = trim(Request.Form("noticeLink1"))

    intNoticeId2 = trim(Request.Form("noticeId2"))
    intSerialId2 =  trim(Request.Form("serialId2"))
    strNoticeTitle2 = trim(Request.Form("noticeTitle2"))
    strNoticeDescription2 = trim(Request.Form("noticeDescription2"))
    strPublishedDate2 = trim(Request.Form("publishedDate2"))
    strClosingDate2 = trim(Request.Form("closingDate2"))
    strNoticeLink2 = trim(Request.Form("noticeLink2"))

    intNoticeId3 = trim(Request.Form("noticeId3"))
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

    If strNoticeTitle1 = "" then  
        Response.Write("Notice title can't be empty.")
        Response.End
    End If

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

    If strNoticeLink1 = "" then  
        Response.Write("Please enter Notice Link.")
        Response.End
    End If

    'Validattion for Notice 2
    if (isNotice2 = true) OR (serialId2 <> "" OR noticeTitle2 <> ""  OR noticeDescription2 <> ""  OR publishedDate2 <> ""  OR closingDate2 <> ""  OR noticeLink2 <> "" ) then
	 
       If intSerialId2 = "" then  
      	     Response.Write("Please enter Serial No.")
			 Response.End
       End If

        If strNoticeTitle2 = "" then  
            Response.Write("Notice title can't be empty.")
            Response.End
        End If

        If strNoticeDescription2 = "" then  
            Response.Write "Notice description can't be empty."
            Response.End
        End If

        If strPublishedDate2 = "" then  
            Response.Write("Please select Active Date.")
            Response.End
        End If

        If strClosingDate2 = "" then  
            Response.Write("Please select Closing Date.")
            Response.End
        End If

        If strNoticeLink2 = "" then  
            Response.Write("Please enter Notice Link.")
            Response.End
        End If
    
    End If

    'Validattion for Notice 3
    if (isNotice3 = true) OR (serialId3 <> "" OR noticeTitle3 <> ""  OR noticeDescription3 <> ""  OR publishedDate3 <> ""  OR closingDate3 <> ""  OR noticeLink3 <> "" ) then
    
        If strNoticeTitle3 = "" then  
            Response.Write("Notice title can't be empty.")
            Response.End
        End If

        If strNoticeDescription3 = "" then  
            Response.Write "Notice description can't be empty."
            Response.End
        End If

        If strPublishedDate3 = "" then  
            Response.Write("Please select Active Date.")
            Response.End
        End If

        If strClosingDate3 = "" then  
            Response.Write("Please select Closing Date.")
            Response.End
        End If

        If strNoticeLink3 = "" then  
            Response.Write("Please enter Notice Link.")
            Response.End
        End If

    End If
	
    ' Check for errors in the retrieval
    If errMsg <> "" Then
    Response.Write "An error occurred while retrieving the existing data: " & errMsg
    Else
        Dim strSQLUpdate1, strSQLUpdate2, strSQLUpdate3 

        ' Check if intNoticeId1 is not empty
        If intNoticeId1 <> "" Then
            strSQLUpdate1 = "UPDATE NoticeBoard SET "
            strSQLUpdate1 = strSQLUpdate1 & "slNo = " & intSerialId1 & ", "
            strSQLUpdate1 = strSQLUpdate1 & "noticeTitle = '" & strNoticeTitle1 & "', "
            strSQLUpdate1 = strSQLUpdate1 & "noticeDescription = N'" & strNoticeDescription1 & "', "
            strSQLUpdate1 = strSQLUpdate1 & "publishDate = '" & strPublishedDate1 & "', "
            strSQLUpdate1 = strSQLUpdate1 & "closingDate = '" & strClosingDate1 & "', "
            strSQLUpdate1 = strSQLUpdate1 & "viewLink = '" & strNoticeLink1 & "' WHERE noticeId = " & intNoticeId1 

            objDataErs.ExecuteQuery strSQLUpdate1, errMsg

            ' Check for errors
            If errMsg <> "" Then
                Response.Write "An error occurred while updating the record for intNoticeId1: " & errMsg
            End If
        End If

        ' Check if intNoticeId2 is not empty
        If intNoticeId2 <> "" Then
            strSQLUpdate2 = "UPDATE NoticeBoard SET "
            strSQLUpdate2 = strSQLUpdate2 & "slNo = " & intSerialId2 & ", "
            strSQLUpdate2 = strSQLUpdate2 & "noticeTitle = '" & strNoticeTitle2 & "', "
            strSQLUpdate2 = strSQLUpdate2 & "noticeDescription = N'" & strNoticeDescription2 & "', "
            strSQLUpdate2 = strSQLUpdate2 & "publishDate = '" & strPublishedDate2 & "', "
            strSQLUpdate2 = strSQLUpdate2 & "closingDate = '" & strClosingDate2 & "', "
            strSQLUpdate2 = strSQLUpdate2 & "viewLink = '" & strNoticeLink2 & "' WHERE noticeId = " & intNoticeId2

            objDataErs.ExecuteQuery strSQLUpdate2, errMsg

            ' Check for errors
            If errMsg <> "" Then
                Response.Write "An error occurred while updating the record for intNoticeId2: " & errMsg
            End If
        End If

        ' Check if intNoticeId3 is not empty
        If intNoticeId3 <> "" Then
            strSQLUpdate3 = "UPDATE NoticeBoard SET "
            strSQLUpdate3 = strSQLUpdate3 & "slNo = " & intSerialId3 & ", "
            strSQLUpdate3 = strSQLUpdate3 & "noticeTitle = '" & strNoticeTitle3 & "', "
            strSQLUpdate3 = strSQLUpdate3 & "noticeDescription = N'" & strNoticeDescription3 & "', "
            strSQLUpdate3 = strSQLUpdate3 & "publishDate = '" & strPublishedDate3 & "', "
            strSQLUpdate3 = strSQLUpdate3 & "closingDate = '" & strClosingDate3 & "', "
            strSQLUpdate3 = strSQLUpdate3 & "viewLink = '" & strNoticeLink3 & "' WHERE noticeId = " & intNoticeId3

            objDataErs.ExecuteQuery strSQLUpdate3, errMsg

            ' Check for errors
            If errMsg <> "" Then
                Response.Write "An error occurred while updating the record for intNoticeId3: " & errMsg
            End If   
        End If
    
        Response.Redirect "summaryNoticeView.asp"     
    End If
		
    objDataErs.CloseConnection()  
    Set objDataErs = Nothing
%>