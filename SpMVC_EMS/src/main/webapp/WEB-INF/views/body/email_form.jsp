<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 
		prefix="form" %>

<c:set var="rootPath" value="${pageContext.request.contextPath}" />

<style>
	fieldset{
		width:70%;
		margin:20px auto; /* 가로방향 중앙정렬 */
	}
	
	legend {
		font-size:18pt;
		font-weight: bold;
		color : #3d65ff;
	}
	
	.in-label {
		display: inline-block;
		width:20%;
		font-size: 15pt;
		font-weight: bold;
		float:left;
		text-align: right;
		margin-right: 5px;
		padding:8px;
	}
	.in-box-border {
		padding:8px;
		margin:3px;
		display: inline-block;
		width:70%;
		border-top:1px solid #ccc;
	}
	
	
	.in-box {
		padding:8px;
		margin:3px;
		display: inline-block;
		width:70%;
		border:1px solid #ccc;
	}
	
	.in-box:hover {
		background-color: #ddd;
		border:1px solid blue;
	}
	
	input:invalid {
		background-color: #ffdddd;
		border:2px solid red;
	}
	
	.input-box {
		width: 100%;
		font-size: 12pt;
	}
	
	/* span 설정 */
	#userid_error {
		width:70%;
		color:red;
		font-weight: bold;
	}
	
	.userid_label {
		display: none;
	}
	
	.in-box-error {
		font-size:12px;
		color:red;
	}
	
	.in-file-box {
		border : 2px solid blue;
	}
	
	.in-file-box h3 {
		text-align: center;
	}
	.in-file-box:hover {
		cursor: pointer;
		background-color: #ccc;
	}
	#img-container {
		display: flex;	
	}

	#images {
		flex : 0 0 auto;
		margin: 5px auto;
		
		display: flex;
		align-items: center;
		justify-content: center;
		
		border:1px solid blue;
	}
	.img-box {
		flex : 0 0 100px;
		height: 100px;
		margin: 10px;
		border-radius: 6px;
	}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){

	let count = 0;
	
	$(".drag_area").on("dragover", function(e) {
		$('h3').text('파일을 내려 놓으세요')
		return false
	})

	// drop event가 발생을 하면
	// 즉, 파일을 끌어서 drag_area box에 놓으면
	// drop event가 발생을 하고
	// 끌어 놓은 파일에 대한 정보가 dFile 매개 변수에 담기게 된다.
	$('.drag_area').on('drop', function(e) {
		$('h3').text('파일을 등록하는중')

		let files = e.originalEvent.dataTransfer.files

		let fData = new FormData();
		
		count ++ ;
		for(let i = 0 ; i < files.length; i ++) {
			fData.append("files",files[i])
		}
		
		$.ajax({
			url : "<c:url value='/files' />",
			method:"POST",
			data:fData,
			dataType:"JSON",
			processData:false,
			contentType:false,
			success:function(result) {
				// JSON 형태로 수신한 문자열을 이용해서
				// HTML 코드를 생성한 후 본문에 그려보자
				if(result == null) {
					$("h3").text("파일 업로드 오류")
				} else {
					let s_file1 = $('#s_file1').val()
					if(s_file1 == "") {
						$('#s_file1').val(result[0])
					} else {
						$('#s_file2').val(result[0])
					}
					
					$('h3').text('파일 업로드 성공 ' + '첨부파일' + count + '개')
				}
			}
			,error:function() {
				alert('서버와 통신 오류')
			}
		})
		return false;
	})

})
</script>

<form:form action="${rootPath}/write" modelAttribute="emailVO">

	<fieldset>
	<legend>Email작성</legend>
	<form:hidden path="id" id="id" />
	
	<label  class="in-label" for="from_email">보내는 Email</label>
	<div class="in-box-border">
		<form:input
			placeholder="발송 Email을 입력하세요"
			id="from_email" 
			path="from_email"
			class="input-box" /><br/>
		<form:errors path="from_email" class="in-box-error"/>
	</div>
			
	<label class="in-label" for="to_email">받는 Email</label>
	<div class="in-box-border">
	<form:input
			id="to_email" 
			path="to_email"
			class="input-box" /><br/>
			<form:errors path="to_email"  class="in-box-error"/><br/>
	</div>
	
	<label class="in-label" for="s_date">발송일자</label>
	<div class="in-box-border">
	<form:input
			id="s_date" 
			path="s_date"
			class="input-box" /><br/>
			<form:errors path="s_date"  class="in-box-error"/><br/>
	</div>	
	
	<label class="in-label" for="s_time">발송시각</label>
	<div class="in-box-border">
	<form:input
			id="s_time" 
			path="s_time"
			class="input-box" /><br/>
			<form:errors path="s_time"  class="in-box-error"/><br/>
	</div>		
	
	<label class="in-label" for="s_subject">제목</label>
	<div class="in-box-border">
	<form:input type="text" 
			id="s_subject" 
			path="s_subject"
			class="input-box" /><br/>
			<form:errors path="s_subject"  class="in-box-error"/>
	</div>
	
	<label class="in-label" for="s_content">내용</label>
	<div class="in-box-border">
	<form:textarea type="text"
			id="s_content" 
			path="s_content" rows="10"
			class="input-box"/><br/>
			<form:errors path="s_content"  class="in-box-error"/>
	</div><br/>
	
	<label class="in-label"></label>
	<form:hidden path="s_file1" id="s_file1" />
	<form:hidden path="s_file2" id="s_file2" />
	<div class="in-box-border in-file-box drag_area" id="drop-box1">
		<h3>파일을 끌어 놓으세요</h3>
	</div>

	<article id="img-container">
		<div id="images">
			<c:if test="${not empty emailVO.s_file1}">
				<p class="img-box">${emailVO.s_file1}</p>
			</c:if>
			<c:if test="${not empty emailVO.s_file2}">
				<p class="img-box">${emailVO.s_file2}</p>
			</c:if>
		</div>
	</article>
	<hr />
	
	<label class="in-label" for="btn-join"></label>
	<button id="btn-join-1" type="submit">저장</button>
	</fieldset>
</form:form>