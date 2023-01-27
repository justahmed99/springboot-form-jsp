<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Registration Form</title>
    <style type="text/css">
        label {
            display: inline-block;
            width: 200px;
            margin: 5px;
            text-align: left;
        }
        input[type=text], input[type=password], select {
            width: 200px;
        }
        input[type=radio] {
            display: inline-block;
            margin-left: 45px;
        }
        input[type=checkbox] {
            display: inline-block;
            margin-right: 190px;
        }

        button {
            padding: 10px;
            margin: 10px;
        }
    </style>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#productList').DataTable({
                pageLength : 10,
                ajax : {
                    url : '${pageContext.request.contextPath}/api/findall',
                    dataSrc : ''
                },
                columns : [ {
                    title : 'Id',
                    data : 'id'
                }, {
                    title : 'Nama',
                    data : 'nama'
                }, {
                    title : 'Alamat',
                    data : 'alamat'
                }, {
                    title : 'Kota',
                    data : 'kota'
                }, {
                    title : 'Provinsi',
                    data : 'provinsi'
                }, {
                    title : 'Tanggal Registrasi',
                    data : 'tglRegistrasi',
                    render: function(data) {
                        const format = "DD-MM-YYYY"
                        return moment(data).format(format);
                    }
                },{
                    title : 'Status',
                    data : 'status'
                } ]
            });
        });
    </script>
</head>
<body>
<div align="center">
    <h2>User Registration</h2>
    <form:form action="register" method="post" modelAttribute="identity">
        <form:label path="name">Full name:</form:label>
        <form:input path="name"/><br/>

        <form:label path="address">Alamat:</form:label>
        <form:textarea path="address" cols="25" rows="5"/><br/>

        <form:label path="city">Kota:</form:label>
        <form:input path="city"/><br/>

        <form:label path="province">Provinsi:</form:label>
        <form:input path="province"/><br/>

        <form:label path="registerDate">Tanggal Registrasi:</form:label>
        <form:input path="registerDate"/><br/>


        <form:label path="status">Status:</form:label>
        <form:radiobutton path="status" value="aktif"/>Aktif
        <form:radiobutton path="status" value="non-Aktif"/>Non-Aktif<br/>

        <form:button>Register</form:button>
    </form:form>
</div>
<div>
    <table id="productList" class="display" style="width: 100%"></table>
</div>
</body>
<script>
    $(function() {
        $( "input[name=registerDate]" ).datepicker({
            inline: true,
            dateFormat: 'dd-mm-yy'
        });
    });
</script>
</html>