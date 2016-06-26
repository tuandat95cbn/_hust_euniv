<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>F-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- DataTables CSS -->
<link href="<c:url value="/assets/libs/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"/>" rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="<c:url value="/assets/libs/datatables-responsive/css/dataTables.responsive.css" />" rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url value="/assets/css/sb-admin-2.css" />" rel="stylesheet" type="text/css" media="all" />
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thời khóa biểu</h1>
             <div class="panel-body">
                    <div class="dataTable_wrapper">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                               <tr>
            	
            					<th>RCTT_ID</th>
                				<th>RCTT_RCTTE_Code</th>
               					 <th>RCTT_Code</th>
                				<th>RCTT_Day</th>
                				<th>RCTT_Slots</th>
               					<th>RCTT_Weeks</th>
                				<th>RCTT_Room_Code</th>
        					  </tr>
                            </thead>
                            <tbody>
                            	<c:forEach items="${regularCourseTimeTable}" var="rctt">
                            		<tr class="gradeX">
	                                    <td><c:out value="${rctt.RCTT_ID}"/></td>
	                                    <td><c:out value="${rctt.RCTT_RCTTE_Code}"/></td>
	                                    <td><c:out value="${rctt.RCTT_Code}"/></td>
	                                     <td><c:out value="${rctt.RCTT_Day}"/></td>
	                                    <td><c:out value="${rctt.RCTT_Slots}"/></td>
	                                    <td><c:out value="${rctt.RCTT_Weeks}"/></td>
	                                     <td><c:out value="${rctt.RCTT_Room_Code}"/></td>
	                                    
	                                    
	                                    
                                	</tr>
								</c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->
                    
                </div>
  			          
        </div>
        <!-- /.col-lg-12 -->
    </div>
 </div>
 <script src="<c:url value="/assets/libs/datatables/media/js/jquery.dataTables.js"/>"></script>
<script src="<c:url value="/assets/libs/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.js"/>"></script>