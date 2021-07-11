<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <section>

    <div class="container">

      <div class="userLogin row">

        <div class="login-form">
          <div class="loginTitle">
            <h2>로그인</h2>
          </div>
          <form action="#" method="post">
            <div class="form-group">
              <label for="id">아이디</label>
              <div class="form-control">
                <input type="text" name="userId" id="userId">
              </div>
            </div>
            <div class="form-group">
              <label for="pw">비밀번호</label>
              <div class="form-control">
                <input type="password" name="userPw" id="userPw">
              </div>
            </div>
          </form>
          <div class="form-group">
            <button type="submit" class="btn btn-lg btn-info btn-block" id="loginBtn">로그인</button>
          </div>
  
          <a id="custom-login-btn" href="javascript:loginWithKakao()">
            <img 
              src="${pageContext.request.contextPath }/resources/img/Large_and_Narrow.png"
            />
          </a>
        </div>

      </div>

    </div>

  </section>