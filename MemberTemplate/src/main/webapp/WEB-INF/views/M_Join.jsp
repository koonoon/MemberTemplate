<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Forms / Elements - NiceAdmin Bootstrap Template</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="resources/assets/img/favicon.png" rel="icon">
<link href="resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="resources/assets/vendor/quill/quill.snow.css"
	rel="stylesheet">
<link href="resources/assets/vendor/quill/quill.bubble.css"
	rel="stylesheet">
<link href="resources/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link href="resources/assets/vendor/simple-datatables/style.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="resources/assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: NiceAdmin - v2.2.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<%@ include file="Header.jsp" %>


	<%@ include file="Sidebar.jsp" %>
	
	
	<main id="main" class="main">

		<div class="pagetitle">
			<h1>회원가입 페이지</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Forms</li>
					<li class="breadcrumb-item active">Elements</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">

				<div class="col-lg-6">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">회원정보 작성하기</h5>

							<!-- General Form Elements -->
							<form action="memberJoin" method="post">
								<!-- 아이디 -->
								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">아이디</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="fId">
									</div>
								</div>

								<!-- 비밀번호 -->
								<div class="row mb-3">
									<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" name="fPw">
									</div>
								</div>

								<!-- 이름 -->
								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">이름</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="fName">
									</div>
								</div>

								<!-- 생년월일 -->
								<div class="row mb-3">
									<label for="inputDate" class="col-sm-2 col-form-label">생년월일</label>
									<div class="col-sm-10">
										<input type="date" class="form-control" name="fBirth">
									</div>
								</div>
								
								<!-- 성별 -->
								<fieldset class="row mb-3">
									<legend class="col-form-label col-sm-2 pt-0">성별</legend>
									<div class="col-sm-10">
										<div class="form-check">
											<input class="form-check-input" type="radio"
												id="gridRadios1" value="여" checked name="fGender">
											<label class="form-check-label" for="gridRadios1">
												여성 </label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="radio"
												id="gridRadios2" value="남" name="fGender">
											<label class="form-check-label" for="gridRadios2">
												남성 </label>
										</div>
										
									</div>
								</fieldset>
								
								<!-- 연락처 -->
								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">연락처</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="fPhone">
									</div>
								</div>
								
								<!-- 주소 -->
								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">주소</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="fAddr">
									</div>
								</div>

								<!-- 이메일 -->
								<div class="row mb-3">
									<label for="inputEmail" class="col-sm-2 col-form-label">이메일</label>
									<div class="col-sm-10">
										<input type="email" class="form-control" name="fEmail">
									</div>
								</div>

								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"></label>
									<div class="col-sm-10">
										<button type="submit" class="btn btn-primary">가입</button>
										<button type="reset" class="btn btn-primary">다시작성</button>
									</div>
								</div>

							</form>
							<!-- End General Form Elements -->

						</div>
					</div>

				</div>

			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights
			Reserved
		</div>
		<div class="credits">
			<!-- All the links in the footer should remain intact. -->
			<!-- You can delete the links only if you purchased the pro version. -->
			<!-- Licensing information: https://bootstrapmade.com/license/ -->
			<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
			Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="resources/assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script
		src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/assets/vendor/chart.js/chart.min.js"></script>
	<script src="resources/assets/vendor/echarts/echarts.min.js"></script>
	<script src="resources/assets/vendor/quill/quill.min.js"></script>
	<script
		src="resources/assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="resources/assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="resources/assets/js/main.js"></script>

</body>

</html>