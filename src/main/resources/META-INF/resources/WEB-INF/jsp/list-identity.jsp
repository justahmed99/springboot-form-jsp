<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>DataTables in Spring MVC Framework and Spring Data JPA</title>
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
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

<table id="productList" class="display" style="width: 100%"></table>

</body>
</html>