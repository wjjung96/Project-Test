<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<style>
		#userPw.aaa:focus, #pwCheck.aaa:focus, #birthDay.aaa:focus{
			border: 1px solid red;
		}
		#userPw.bbb:focus, #pwCheck.bbb:focus, #birthDay.bbb:focus{
			border: 1px solid #66afe9;
		}
	</style>
	
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
                <input type="text" class="joinForm-inner form-control" name="userId" id="userId" placeholder="영문숫자 포함 6~15자">
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
              <span id="msgPwCheck"></span>
            </div>
            
            <div class="joinForm-wrap form-group">
              <label for="name">이름</label>
              <input type="text" class="joinForm-inner form-control" name="userName" id="userName">
            </div>
            
            <div class="joinForm-wrap form-group">
              <label for="userNickName">닉네임</label>
              <div class="input-group">
                <input type="text" class="joinForm-inner form-control" name="nickName" id="nickName" placeholder="">
                <div class="joinForm-btn input-group-btn">
                  <button type="button" id="nickNameCheck" class="btn btn-info">닉네임중복체크</button>
                </div>
              </div>
              <span id="msgNickName"></span>
            </div>
            
            <div class="joinForm-wrap form-group">
              <label for="nicName">생년월일</label>
              <input type="text" class="joinForm-inner form-control" name="birthDay" id="birthDay" placeholder="ex:19950623">
              <span id="msgBirthDay"></span>
            </div>
            
            <div class="joinForm-wrap form-group">
              <label for="email">이메일</label>
              <div class="input-group">
                <input type="text" class="joinForm-inner form-control" name="userEmail" id="userEmail" placeholder="">
                <div class="joinForm-btn input-group-btn">
                  <button type="button" id="userEmailCheck" class="btn btn-info">이메일인증</button>
                </div>
              </div>
              <span id="msgUserEmail"></span>
            </div>
            
            <div class="joinForm-wrap form-group">
              <label for="phoneNum">전화번호</label>
              <div class="input-group">
                <input type="text" class="joinForm-inner form-control" name="userCellNum" id="userCellNum" placeholder="-없이 입력해주세요">
                <div class="joinForm-btn input-group-btn">
                  <button type="button" id="" class="btn btn-info">본인확인</button>
                </div>
              </div>              
            </div>
            
            <div class="joinForm-wrap form-group">
              <label for="address">주소</label>
              <div class="input-group">
                <input type="text" class="joinForm-inner form-control" id="addrZipNum" name="addrZipNum" placeholder="우편번호" readonly>
                <div class="joinForm-btn input-group-btn">
                  <button type="button" id="findAddr" class="btn btn-info">우편번호찾기</button>
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
            
            <div class="joinForm-wrap form-group">
              <button type="button" class="btn btn-lg btn-success btn-block" onclick="location.href='../'">돌아가기</button>
            </div>


          </form>

        </div>

      </div>

    </div>

  </section>
  
	<script>
  		
		//아이디  중복체크
		$("#idCheck").click(function(){
		
			var userId = $("#userId").val();
			
			if(userId == '' || userId.length < 6 || userId.length > 15){//아이디 형식검사
				alert("아이디는 영문숫자 포함 6~15글자입니다.");
				$("#userId").focus();
			}
			
			$.getJSON("idCheck/"+userId, function(data){ //$.getJSON(요청주소, 콜백함수) 데이터조회는 주로 get방식을 사용한다고함.
				if(data == 1){//중복된 아이디가 있는 경우
					$("#msgId").html("중복된 아이디가 있습니다.");
				}else{ //중복된 아이디가 없는 경우
					$("#msgId").html("사용가능한 아이디입니다.");
					$("#userId").attr("readonly",true);
				}
			})
			
		})
		
		
		//비밀번호 형식검사
	      var pwRegex = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
	      
	      $("#userPw").keyup(function(){         
	         if( $("#userPw").val().length != 0 && ($("#userPw").val().length < 8 || $("#userPw").val().length > 16) ){            
	            if(! $("#userPw").hasClass("aaa") ){
	               $("#userPw").addClass("aaa");
	            }
	            if( $("#userPw").hasClass("bbb") ){
	               $("#userPw").removeClass("bbb");
	            }            
	            $("#msgPw").html("비밀번호는 8~16자로 입력하셔야 합니다.");            
	         }else if( $("#userPw").val().length != 0 && !pwRegex.test( $("#userPw").val() )){            
	            if(! $("#userPw").hasClass("aaa") ){
	               $("#userPw").addClass("aaa");
	            }if( $("#userPw").hasClass("bbb") ){
	               $("#userPw").removeClass("bbb");
	            }            
	            $("#msgPw").html("비밀번호는 영문,숫자,특수문자를 반드시 포함해야합니다.");            
	         }else if($("#userPw").val().length == 0){            
	            if( $("#userPw").hasClass("aaa") ){
	               $("#userPw").removeClass("aaa");
	            }
	            if(!$("#userPw").hasClass("bbb") ){
	               $("#userPw").addClass("bbb");
	            }
	            $("#msgPw").html("");    
	         }else{
	        	if( $("#userPw").hasClass("aaa") ){
		        	$("#userPw").removeClass("aaa");
		        }
		        if(!$("#userPw").hasClass("bbb") ){
		        	$("#userPw").addClass("bbb");
		        }
		       
		        $("#msgPw").html("사용가능한 비밀번호 입니다.");
	         }
		})
		
		//비밀번호 확인 검사
		$("#pwCheck").keyup(function(){
			
			if( $("#userPw").val() != $("#pwCheck").val() ){
				
				if(! $("#pwCheck").hasClass("aaa") ){
		        	$("#pwCheck").addClass("aaa");
		        }if( $("#pwCheck").hasClass("bbb") ){
		        	$("#pwCheck").removeClass("bbb");
		        } 
		        
		        $("#msgPwCheck").html("확인 비밀번호가 일치하지 않습니다.");
			}else{
				if(! $("#pwCheck").hasClass("bbb") ){
					$("#pwCheck").addClass("bbb");
				}
				if( $("#pwCheck").hasClass("aaa")){
					$("#pwCheck").removeClass("aaa");
				}
				$("#msgPwCheck").html("확인 비밀번호가 일치합니다.");
			}
			
		})
		
	  //닉네임중복체크
      $("#nickNameCheck").click(function(){
         
         var nickName = $("#nickName").val();
         
         $.getJSON("nickNameCheck/"+nickName,function(data){
            if(data == 1){//중복된  경우
               $("#msgNickName").html("중복된 닉네임이 있습니다.");
               $("#nickName").css("borderColor","red");
            }else{ 
               $("#msgNickName").html("사용가능한 닉네임입니다.");
               $("#nickName").css("borderColor","#66afe9");
               $("#nickName").attr("readonly",true);
            }
         })
         
      })
      
	//생년월일 형식검사
	var birthDayRegex = /^(19|20)\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[0-1])$/;
	$("#birthDay").keyup(function(){
		
		if( ! birthDayRegex.test( $("#birthDay").val() )){
			
			if( ! $("#birthDay").hasClass("aaa") ){
				$("#birthDay").addClass("aaa");
			}
			
			if( $("#birthDay").hasClass("bbb") ){
				$("#birthDay").removeClass("bbb");
			}
			
			$("#msgBirthDay").html("생년월일 입력 형식을 확인해주세요.");
		}else{
			if( !$("#birthDay").hasClass("bbb") ){
				$("#birthDay").addClass("bbb");
			}
			if( $("#birthDay").hasClass("aaa") ){
				$("#birthDay").removeClass("aaa");
			}
			$("#msgBirthDay").html("");
		}
	})
	
	

		
	</script>