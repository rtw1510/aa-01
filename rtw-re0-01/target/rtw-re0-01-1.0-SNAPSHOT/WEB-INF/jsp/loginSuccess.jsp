<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/29
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%String basePath = request.getContextPath() + "/";%>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script  type="text/javascript">
        $(function () {
            $("#btn1").click(function () {
                $.ajax({
                    async:true,
                    url:"rtw/display.do",
                    dataType:"json",
                    type:"get",
                    success:function (data) {
                        //alert(data)
                           $.each(data,function (i,n) {
                                $("#allData").append("<tr>")
                                    .append("<td>"+n.id +"</td>")
                                    .append("<td>"+n.username +"</td>")
                                    .append("<td>"+n.age +"</td>")
                                    .append("<td>"+n.sex +"</td>")
                                    .append("<td>"+n.email +"</td>")
                                .append("</tr>")
                           })
                    }
                    }
                )
            })
        })
    </script>
</head>
<body>
成功登录！欢迎 <font color="blue">${username }</font><br>
<div class="diList">
    <button id="btn1">显示列表</button>
    <table>
        <tr>
            <td>ID</td>
            <td>用户名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>Email</td>
        </tr>
        <tbody id="allData"></tbody>
    </table>
</div>

</body>
</html>
