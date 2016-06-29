<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>F-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link href="<c:url value="/assets/libs/fileinput/css/fileinput.min.css" />" media="all" rel="stylesheet" type="text/css">
	
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Phân tích thời khóa biểu</h1>
            
            <!--  
            <div class="input-group">
            	<label class="input-group-btn">
            		<span class="btn btn-primary glyphicon glyphicon-folder-open"> Browser</span>
                	<input type="file" name="file" style="display:none;" id="inputFile"/> 
                </label>
            	<input type="text" class="form-control" id="input-file-name" style="width:80%" readonly/>
	            <button class="btn" id="upload" value="submit" style="display:none;"><span class="glyphicon glyphicon-upload"> Upload</span></button>
            </div>
            -->
              
            <input id="input-file" name="timetable[]" type="file" multiple=true class="file-loading">
            <br/>
            <button id="btn-analyse" disabled class="btn btn-primary">Analyse</button>
        </div>
        <!-- /.col-lg-12 -->
    </div>
 </div>
 
<script src="<c:url value="/assets/libs/fileinput/js/fileinput.min.js"/>"></script>
 <script>
$(document).ready(function(){
	 $("#input-file").fileinput({
	 	uploadUrl: "upload-file-timetable.html", // server upload action
		uploadAsync: true,
		allowedFileExtensions:['xlsx'],
		maxFileCount: 1
	  }).on('fileuploaded', function() {
		 $("#btn-analyse").removeAttr('disabled');
	 });
	
	 $("#btn-analyse").click(function(){
		window.location = baseUrl+"/cp/analyse-timetable";
	});
 });
 </script>
 