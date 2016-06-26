<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>F-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	   
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thời khóa biểu</h1>
  			<table border="1">
       		 <tr>
            	
            	<th>RCTTE_ID</th>
                <th>RCTTE_Course_Code</th>
               
        	</tr>
        	<c:forEach items="${regularCourseTimeTableEntry}" var="rctte">
            <tr>
                <td>${rctte.RCTTE_ID}</td>
                <td>${rctte.RCTTE_Course_Code}</td>
              
            </tr>
        	</c:forEach>
    		</table>	          
        </div>
        <!-- /.col-lg-12 -->
    </div>
 </div>
 