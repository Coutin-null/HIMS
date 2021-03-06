<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="../style/use.css">
	<link rel="stylesheet" href="../style/menu.css">
</head>
<body>
	<div id="all">
		<div id="title">菜单项</div>
		<ul id="con">
			<a href="../html/pwd.html" target="content"><li class="pwd"><em></em>修改密码</li></a>
			<!-- 根据不同的角色，选用不同的菜单项 -->
			<!-- 角色1：医生 -->

<%
	String role = (String)session.getAttribute("role");
 	if(role.equals("1")){ %>
			
			<a href="../html/patientFalse.html" target="content"><li class="user2"><em></em>科室未处理病人</li></a>
			<a href="../html/patientTrueToday.html" target="content"><li class="user1"><em></em>已处理当天挂号病人</li></a>
			<a href="../html/patientTrueHistory.html" target="content"><li class="user3"><em></em>已处理历史挂号病人</li></a>
			<a href="../html/openReg.html" target="content"><li class="reg"><em></em>开处方</li></a>
			<a href="../html/registerDrug.html" target="content"><li class="register_drug"><em></em>处方查询</li></a>
			<a href="../html/openCheck.html" target="content"><li class="reg"><em></em>开检查</li></a>
			<a href="../html/showCheck.html" target="content"><li class="register_drug"><em></em>检查查询</li></a>
			<a href="../html/updateMed.html" target="content"><li class="patient"><em></em>诊断病人</li></a>
			<a href="../html/medicalrecord.html" target="content"><li class="medicalrecord"><em></em>病例档案查询</li></a>
<%
	}
 	if(role.equals("2")){ %>
			<!-- 角色2：医技人员 -->
			
			<a href="../html/checklist.html" target="content"><li class="checklist"><em></em>辅助检查项目管理</li></a>
			<a href="../html/diagnose.html" target="content"><li class="patient"><em></em>录入检查结果</li></a>
<%
	}
 	if(role.equals("3")){ %>
			<!-- 角色3：护士 -->
			
			<a href="../html/medicalrecord.html" target="content"><li class="medicalrecord"><em></em>病例档案查询</li></a>
			<a href="../html/registerDrug.html" target="content"><li class="register_drug"><em></em>处方查询</li></a>
			<a href="../html/showCheck.html" target="content"><li class="register_drug"><em></em>检查查询</li></a>
<%
	}
 	if(role.equals("4")){ %>
			<!-- 角色4：导医 -->
			
			<a href="../html/patient.html" target="content"><li class="patient"><em></em>病人基本信息管理</li></a>
<% }
 	if(role.equals("5")){ %>
			<!-- 角色5：门诊收费员 -->
			
			<a href="../html/reg.html" target="content"><li class="reg"><em></em>门诊挂号</li></a>
			<a href="../html/createMed.html" target="content"><li class="patient"><em></em>建立病例档案</li></a>
			<a href="../html/medicalrecord.html" target="content"><li class="medicalrecord"><em></em>病例档案查询</li></a>
			<a href="../html/money.html" target="content"><li class="money"><em></em>就诊卡充值退费</li></a>
<% }
 	if(role.equals("6")){ %>
			<!-- 角色6：药房管理员 -->
			
			<a href="../html/drugclass.html" target="content"><li class="drugclass"><em></em>药品类别管理</li></a>
			<a href="../html/drugAdmin.html" target="content"><li class="drug"><em></em>医用药品管理</li></a>
<% }
 	if(role.equals("7")) { %>
			<!-- 角色7：字典维护人员（管理人员） -->
			
			<a href="../html/dept.jsp" target="content"><li class="dept"><em></em>部门管理</li></a>
			<a href="../showStaff?currentPage=1" target="content"><li class="staff"><em></em>职工管理</li></a>
			<a href="../html/drugclass.html" target="content"><li class="drugclass"><em></em>药品类别管理</li></a>
			<a href="../html/drug.html" target="content"><li class="drug"><em></em>医用药品信息管理</li></a>
			<a href="../html/checklist.html" target="content"><li class="checklist"><em></em>辅助检查项目管理</li></a>
			<a href="../html/other.html" target="content"><li class="other"><em></em>处置项目管理</li></a>
	<% 	}%>
		</ul>
	</div>
</body>
</html>
