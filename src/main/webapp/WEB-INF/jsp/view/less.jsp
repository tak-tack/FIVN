<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>Insert title here</title>
<link rel="stylesheet/less" type="text/css" href="css/less/less.js-master.less">
<script src="less-1.3.1.min.js" type="text/javascript">
@base : #f938ab;
.box-shadow(@style, @c) when (iscolor(@c)){	
	-webkit-box-shadow:@style @c;	
	-moz-box-shadow: @style @c;	
	-box-shadow: @style @c;
	}
	.box-shadow(@style, @alpha: 50%) when 
	(isnumber(@alpha)){	
		.box-shadow(@style, rgba(0,0,0,@alpha));
		}
	
	.box{	
		color:saturate(@base, 5%);	
	border-color:lighten(@base, 30%);	
	div{
		.box-shadow(0 0 5px, 30%)
		}
	}
	
</script>

</head>
<body>
<div>less page</div>
</body>
</html>