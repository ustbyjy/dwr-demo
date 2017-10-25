<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
<title>首页</title>
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type='text/javascript' src='dwr/interface/HelloWorldService.js'></script>
<style type="text/css">
  td {
    border: solid 1px;
  }
</style>
</head>
<body>
<table>
  <tr>
    <td>无参无返回值</td>
    <td colspan="3"><input type="button" value="helloNN" onclick="helloNN();"></td>
  </tr>
  <tr>
    <td>有参无返回值</td>
    <td colspan="2"><input type="text" id="helloYNName"></td>
    <td><input type="button" value="helloYN" onclick="helloYN();"></td>
  </tr>
  <tr>
    <td>无参有返回值</td>
    <td><input type="button" value="helloNY" onclick="helloNY();"></td>
    <td colspan="2"><input type="text" id="helloNYValue"></td>
  </tr>
  <tr>
    <td>有参有返回值</td>
    <td><input type="text" id="helloYYName"></td>
    <td><input type="button" value="helloYY" onclick="helloYY();"></td>
    <td><input type="text" id="helloYYValue"></td>
  </tr>
</table>
</body>
<script type="text/javascript">
  // 无参无返回值
  function helloNN() {
    HelloWorldService.helloNN();
  }

  // 有参无返回值
  function helloYN() {
    var name = dwr.util.getValue("helloYNName");
    HelloWorldService.helloYN(name);
  }

  // 无参有返回值
  function helloNY() {
    HelloWorldService.helloNY(function (data) {
      dwr.util.setValue("cc", data);
    });
  }

  // 有参有返回值
  function helloYY() {
    var name = dwr.util.getValue("helloYYName");
    HelloWorldService.helloYY(name, function (data) {
      dwr.util.setValue("helloYYValue", data);
    });
  }
</script>
</html>