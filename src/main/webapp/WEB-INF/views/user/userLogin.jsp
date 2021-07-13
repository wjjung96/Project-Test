<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section>

	<div class="container">
		<div class="userLogin row">
			<div class="login-form">

				<div class="loginTitle">
					<h2>로그인</h2>
				</div>

				<form action="loginForm" method="post">

					<div class="form-group">
						<label for="id">아이디</label> <input type="text"
							class="form-control" name="userId" id="userId">
					</div>

					<div class="form-group">
						<label for="pw">비밀번호</label> <input type="password"
							class="form-control" name="userPw" id="userPw">
					</div>

					<ul class="userLogin-find">
						<li><a href="#"><small>비밀번호찾기</small></a></li>
						<li><a href="#" style="margin: 0 5px;"><small>아이디찾기</small></a></li>
					</ul>

					<div class="form-group">
						<button type="submit" class="btn btn-lg btn-info btn-block"
							id="loginBtn">로그인</button>
					</div>

					<a id="custom-login-btn" href="javascript:loginWithKakao()"> <img
						src="${pageContext.request.contextPath }/resources/img/Large_and_Narrow.png" />
					</a>
				</form>

			</div>

		</div>

	</div>

</section>

<script>
	var msg = "${msg}";
	if (msg != '') {
		alert(msg);
	}
</script>