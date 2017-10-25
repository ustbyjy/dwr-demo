<%@ page language="java" pageEncoding="UTF-8" %>
<html>
<head>
<title>Normal</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
</head>

<body>
<h2>逆向Ajax页面，服务器推送</h2>
<span>推送信息：</span><span id="push"></span>
</body>
<script type="text/javascript">
window.onload = function () {
  dwr.engine.setActiveReverseAjax(true);
}
</script>
</html>