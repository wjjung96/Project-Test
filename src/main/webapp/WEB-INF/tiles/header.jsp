<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- header -->
	<header class="header">
	<!--[1]-->
	<nav class="nav header-nav">
		<!--[2]-->

		<div class="home-container">
			<!--[3-1]-->
			<div class="home">
				<a href="#">HireHigher</a>
			</div>
			<div class="main-search-bar-container">
				<input type="text" placeholder="" class="main-search-bar"> <a
					href="#" class="main-search-button"> <img src="${ pageContext.request.contextPath }/resources/img/search-logo.png">
				</a>
			</div>
		</div>

		<ul class="nav-links">
			<!--[3-2]-->
			<li><a href="#">MARKET <img src="${ pageContext.request.contextPath }/resources/img/cart-logo.png">
			</a></li>
			<li><a href="#">SIGN-IN <img src="${ pageContext.request.contextPath }/resources/img/signin-logo.png">
			</a></li>
			<li><a href="#">SIGN-UP <img src="${ pageContext.request.contextPath }/resources/img/signup-logo.png">
			</a></li>
		</ul>

	</nav>
</header>