<%
Set objNoticeBoard = New NoticeBoard
arrNoticeBoard = objNoticeBoard.GetNoticeBoardInfo(objDataErs)

Set objNoticeBoard = Nothing

if arrNoticeBoard(0, 0) <> "Nothing" then
    
    intNoticeId1 = arrNoticeBoard(0,0)
    intSerialId1 = arrNoticeBoard(1, 0)
    strNoticeTitle1 = arrNoticeBoard(2, 0)
    strNoticeDescription1 = arrNoticeBoard(3, 0)
    strPublishedDate1 = arrNoticeBoard(5, 0)
    strClosingDate1 = arrNoticeBoard(6, 0)
    strNoticeLink1 = arrNoticeBoard(7, 0)

    intNoticeId2 = arrNoticeBoard(0,1)
    intSerialId2 = arrNoticeBoard(1, 1)
    strNoticeTitle2 = arrNoticeBoard(2, 1)
    strNoticeDescription2 = arrNoticeBoard(3, 1)
    strPublishedDate2 = arrNoticeBoard(5, 1)
    strClosingDate2 = arrNoticeBoard(6, 1)
    strNoticeLink2 = arrNoticeBoard(7, 1)
    
'    intNoticeId3 = arrNoticeBoard(0,2)
'    intSerialId3 = arrNoticeBoard(1, 2)
'    strNoticeTitle3 = arrNoticeBoard(2, 2)
'    strNoticeDescription3 = arrNoticeBoard(3, 2)
'    strPublishedDate3 = arrNoticeBoard(5, 2)
'    strClosingDate3 = arrNoticeBoard(6, 2)
'    strNoticeLink3 = arrNoticeBoard(7, 2)
    
end if

%>