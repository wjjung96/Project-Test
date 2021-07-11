<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <section>

    <div class="container">

      <div class="userJoin row">

        <div class="joinForm">

          <div class="joinTitle">
            <h2>회원가입</h2>
          </div>
          <form action="#" method="POST" name="#">

            <div class="joinForm-wrap form-group">
              <label for="id">아이디</label>
              <div class="input-group">
                <input type="text" class="joinForm-inner form-control" name="userId" id="userId" placeholder="영문숫자 포함 6~12자">
                <div class="joinForm-btn input-group-btn">
                  <button type="button" id="idCheck" class="btn btn-info">아이디중복체크</button>
                </div>
              </div>
              <span id="msgId"></span>
            </div>
            <div class="joinForm-wrap form-group">
              <label for="password">비밀번호</label>  
              <input type="password" class="joinForm-inner form-control" name="userPw" id="userPw" placeholder="영문 숫자 기호 포함 8~16자"> 
              <span id="msgPw"></span>
            </div>
            <div class="joinForm-wrap form-group">
              <label for="passwordCheck">비밀번호확인</label>
              <input type="password" class="joinForm-inner form-control" id="pwCheck">
            </div>
            <div class="joinForm-wrap form-group">
              <label for="nicName">닉네임</label>
              <input type="text" class="joinForm-inner form-control" name="userNick" id="userNick">
            </div>
            <div class="joinForm-wrap form-group">
              <label for="name">이름</label>
              <input type="text" class="joinForm-inner form-control" name="userName" id="userName">
            </div>
            <div class="joinForm-wrap form-group">
              <label for="email">이메일</label>
              <input type="email" class="joinForm-inner form-control" name="userEmail" id="userEmail">
              <span class="msgEmail"></span>
            </div>
            <div class="joinForm-wrap form-group">
              <label for="phoneNum">전화번호</label>
              <div class="input-group">
                <input type="text" class="joinForm-inner form-control" name="userPhoneNum" id="userPhoneNum" placeholder="-없이 입력해주세요">
                <div class="joinForm-btn input-group-btn">
                  <button type="button" id="idCheck" class="btn btn-info">본인확인</button>
                </div>
              </div>
              
            </div>
            <div class="joinForm-wrap form-group">
              <label for="address">주소</label>
              <div class="input-group">
                <input type="text" class="joinForm-inner form-control" id="zipCode" name="zipCode" placeholder="우편번호" readonly>
                <div class="joinForm-btn input-group-btn">
                  <button type="button" id="idCheck" class="btn btn-info">우편번호찾기</button>
                </div>
              </div>
              <div class="joinForm-wrap form-group">
                <input type="text" class="joinForm-inner form-control" id="addrBasic" name="addrBasic" placeholder="기본주소">
              </div>
              <div class="joinForm-wrap form-group">
                <input type="text" class="joinForm-inner form-control" id="addrDetail" name="addrDetail" placeholder="상세주소">
              </div>
            </div>

            <div class="joinForm-wrap form-group">
              <button type="submit" class="btn btn-lg btn-info btn-block" id="joinBtn">회원가입</button>
            </div>


          </form>

        </div>

      </div>

    </div>

  </section>