<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item"><a class="nav-link " href="index"> <i
				class="bi bi-grid"></i> <span>첫페이지로</span>
		</a></li>
		<!-- End Dashboard Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
				<i class="bi bi-menu-button-wide"></i><span>회원정보</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="components-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="joinForm"> <i class="bi bi-circle"></i><span>회원가입</span>
				</a></li>
				<li><a href="memberList"> <i class="bi bi-circle"></i><span>회원목록</span>
				</a></li>
				<li><a href="#"> <i class="bi bi-circle"></i><span>회원상세보기</span>
				</a></li>
				<li><a href="#"> <i class="bi bi-circle"></i><span>회원수정하기</span>
				</a></li>
				<li><c:choose>
						<c:when test="${not empty loginId}">
							<!-- 로그아웃 -->
							<a href="logout"> <i class="bi bi-circle"></i><span>로그아웃</span>
							</a>
						</c:when>

						<c:otherwise>
							<!-- 로그인 페이지로 이동 -->
							<a href="loginForm"> <i class="bi bi-circle"></i><span>로그인</span>
							</a>
						</c:otherwise>
					</c:choose></li>




			</ul></li>
		<!-- End Components Nav -->



	</ul>

</aside>
<!-- End Sidebar-->