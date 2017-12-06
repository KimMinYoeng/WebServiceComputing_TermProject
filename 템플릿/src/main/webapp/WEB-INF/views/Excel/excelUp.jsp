<script type="text/javascript">
    function fn_excelUp(){
        var form = document.excelUp;
        form.action = "<c:url value='/excel/test/excelUpload.do'/>";
        form.target = "";
        form.submit();
    }
</script>
</head>
<body>
¿¢¼¿¾÷·Îµå</br></br></br>
<form id="excelUp" name="excelUp" enctype="multipart/form-data" method="post" action="" >
    <input type="file" id="excelFile" name="excelFile"/>
    <input type="button" value="¿¢¼¿¾÷·Îµå" onClick="fn_excelUp()"/>
</form>
</br>
</br></br></br></br></br>
¿¢¼¿´Ù¿î·Îµå </br></br>
<a href="<c:url value="/excel/test/excelDownload.do"/>">Excel Export</a>
</body>
</html>