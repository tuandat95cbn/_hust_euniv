<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- DataTables CSS -->
<link href="<c:url value="/assets/libs/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"/>" rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="<c:url value="/assets/libs/datatables-responsive/css/dataTables.responsive.css" />" rel="stylesheet">

<!-- Jquery UI CSS -->
<link href="<c:url value="/assets/css/jquery-ui.css" />" rel="stylesheet">

<style>.ui-datepicker-calendar {display: none;}​</style>

<!-- jQuery UI -->
<script src="<c:url value="/assets/js/jquery-ui.js"/>"></script>	   
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thêm mới đề tài</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Thêm mới đề tài
                </div>
                <div class="panel-body">
                	<c:if test="${status != null}">
	                	<div class="alert alert-success">
	                        ${status}. <a href="<c:url value="${baseUrl}/cp/topics.html"/>" class="alert-link">Quay lại</a>.
	                    </div>
                    </c:if>
                    <c:if test="${err != null}">
	                	<div class="alert alert-warning">${err}</div>
                    </c:if>
                    <form:form action="${baseUrl}/cp/save-a-topic.html" method="POST" commandName="topicFormAdd" role="form">
	                    <div class="row">
	                        <div class="col-lg-6">
	                                <div class="form-group">
	                                    <label>Nhóm*</label>
	                                    <form:select path="topicCatCode" class="form-control" name="topicCatCode">
	                                    	<c:forEach items="${topicCategory}" var="topicCat">
		                                        <option value="${topicCat.PROJCAT_Code}">${topicCat.PROJCAT_Name}</option>
	                                       	</c:forEach>
	                                    </form:select>
	                                    <form:errors path="topicCatCode" class="alert-danger"></form:errors>
	                                </div>
	                                <div class="form-group">
	                                    <label for="topicName">Tên*</label>
	                                    <form:input path="topicName" class="form-control" name="topicName" placeholder="Project Name"></form:input>
	    								<form:errors path="topicName" class="alert-danger"></form:errors>
	                                </div>
	                                <div class="form-group">
	                                    <label for="topicConHours">Giờ quy đổi*</label>
	                                    <form:input path="topicConHours" class="form-control" name="topicConHours" placeholder="Publilcation Converted Hours"></form:input>
	    								<form:errors path="topicConHours" class="alert-danger"></form:errors>
	                                </div>
	                                <div class="form-group">
	                                	<label for="topicReportingAcademicDate">Năm kê khai*</label>
		                                <form:select path="topicReportingAcademicDate" class="form-control" name="topicReportingAcademicDate" >
		                                	<c:forEach items="${topicReportingAcademicDate}" var="topicDate">
		                                     <option value="${topicDate.ACAYEAR_Code}">${topicDate.ACAYEAR_Code}</option>
		                                   	</c:forEach>
		                                </form:select>
		                                <form:errors path="topicReportingAcademicDate" class="alert-danger"></form:errors>
	                            	</div>
	                                <button type="submit" class="btn btn-primary" id="addANewTopic">Lưu</button>
	                                <!-- <button type="reset" class="btn btn-primary">Clear</button> -->
	                                <button type="reset" class="btn btn-info cancel">Hủy</button>
	                        </div>
	                        <div class="col-lg-6">
                        		<div class="form-group">
                                    <label for="topicAutConHours">Giờ quy đổi của người kê khai</label>
                                    <form:input path="topicAutConHours" class="form-control" name="topicAutConHours" placeholder="Author Converted Hours"></form:input>
    								<form:errors path="topicAutConHours" class="alert-danger"></form:errors>
                                </div>
                                <div class="form-group">
                                    <label for="topicYear">Năm bắt đầu*<i style="font-weight: normal; font-size: .9em; color: #bdbdbd;">(format : YYYY)</i></label>
                                    <form:input path="topicYear" class="form-control year" name="topicYear" readonly="true" placeholder="YYYY"></form:input>
    								<form:errors path="topicYear" class="alert-danger"></form:errors>
                                </div>
                                <div class="form-group">
                                    <label for="budget">Kinh phí (triệu VNĐ)</label>
                                    <form:input path="budget" class="form-control" name="budget" placeholder="Budget"></form:input>
    								<form:errors path="budget" class="alert-danger"></form:errors>
                                </div>
	                        </div>
	                        <!-- /.col-lg-6 (nested) -->
	                    </div>
	                    <!-- /.row (nested) -->
                    </form:form>
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</div>
<!-- /#page-wrapper -->

<script type="text/javascript">
<!--
//-->
$(document).ready(function(){
	$('button.cancel').click(function(){
		window.location = baseUrl+"/cp/topics.html";
	});
	
	$('.year').datepicker({
		changeMonth: false,
        changeYear: true,
        showButtonPanel: true,
        dateFormat : 'yy',
        stepMonths: 12,
		onClose: function() {
	        var iYear = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
	        $(this).datepicker('setDate', new Date(iYear, 1));
     	},
     	beforeShow: function() {
     		if ((selDate = $(this).val()).length > 0)
 	        {
 	          iYear = selDate.substring(selDate.length - 4, selDate.length);
 	          $(this).datepicker('option', 'defaultDate', new Date(iYear, 1));
 	          $(this).datepicker('setDate', new Date(iYear, 1));
 	        }
  	    }
  	});
	// Hide month when choose a year
	$("#topicYear").click(function () {
		$(".ui-datepicker-month").hide();
	});
	
	$("#topicYear").focus(function () {
        $(".ui-datepicker-calendar").hide();
        $(".ui-datepicker-month").hide();
    });
});

</script>

