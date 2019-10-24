<!-- create创建 上传课程文档 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<base href="<%=basePath%>">
	<link rel="stylesheet" href="<%=basePath%>resource/bootstrap/css/bootstrap.min.css" >    
	<link rel="stylesheet" href="<%=basePath%>resource/bootstrap/css/bootstrap-theme.min.css">
	<script type="text/javascript" src="<%=basePath%>resource/lib/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="<%=basePath%>resource/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<%=basePath%>resource/css/wukong-ui.css">
	<link rel="stylesheet" href="<%=basePath%>resource/bootstrap/css/bootstrap-select.min.css"> 
    <script type="text/javascript" src="<%=basePath%>resource/bootstrap/js/bootstrap-select.min.js"></script>
</head>

<body>
<div class="row">
    <div class="col-lg-12">
        <ul class="breadcrumb wk-breadcrumb">
            <li>网络教学辅助平台</li>
            <li>文件管理</li>
            <li>上传作业</li>
        </ul>
    </div>
</div>
    
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default wk-panel ">
                <div class="panel-heading">
                    上传文档 Create Data
                </div>
                <form action="<%=basePath%>/saveStudentFile.html" method="POST" enctype="multipart/form-data">
                <div class="panel-body">
                    <div class="row">
	                   	<div class="form-inline"> 
	                   		<div class="form-group">
									<label class="control-label wk-filed-label">所属教师: </label> <select
										class="selectpicker" name="teacherId">
										<c:forEach items="${teacher}" var="var">
											<option value="${var.id}">${var.name} : ${var.courseName}</option>
											
										</c:forEach>
									</select>
								</div>
	                   	</div>
                    	
                      <div class="form-inline">  
                            <div class="form-group">
                                <label for="filePath" class="control-label wk-filed-label">选择文件: </label>
                                 <div class="input-group">
                                    <input required="required" name="file" type="file" class="form-control wk-long-2col-input" />
                                </div>
                            </div>
                        </div>
                    </div>
                 </div>

                <div class="panel-footer wk-panel-footer">
                    <button id="save" type="submit" class="btn btn-default wk-btn" id>提&nbsp;&nbsp;交</button>
                </div>
                </form>
            </div>
        </div>
    </div>
    <script>

    $("#save").on("click", function() {
       		alert("提交成功");
        }
     </script>
</body>

</html>