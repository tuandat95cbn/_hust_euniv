<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>F-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link href="<c:url value="/assets/libs/fileinput/css/fileinput.min.css" />" media="all" rel="stylesheet" type="text/css">
	
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Kết quả phân tích thời khóa biểu</h1>
            
            <ul>
            	<li>Số môn học vào thứ 7: ${nCourseOnSaturday}</li>
            	<!-- <li>Số môn học ở TC và D9 vào thứ 7 là: ${nCourseOnSaturdayInTCandD9}</li> -->
            	<li>Số môn học kỳ AB học 2 buổi một tuần là: ${nPlotOfCourse}</li>
            	<li>Số môn học xếp vào phòng quá sức chứa là: ${nFitRoom}</li>
            	<li>Số vi phạm về phòng học là: ${roomConflict} </li>
            </ul>
            <button class="btn btn-primary">Improve</button>
        </div>
        <!-- /.col-lg-12 -->
    </div>
 </div>
 