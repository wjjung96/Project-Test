<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

    <link href="${pageContext.request.contextPath }/resources/css/findId.css" rel="stylesheet">

</head>
<body>
    
    <section>
        <div class="container findId">
            <div class="row">
                <div class="col-md-10 findId-wrap">
                    <div class="findId-title">
                        <h2>아이디 찾기</h2>
                    </div>
                    <p>* 아이디를 찾을 방법을 선택해주세요.</p>
                    <div class="findId-content">
                        <div class="findId-content-wrap">
                            <div>
                                <input type="radio" id="findIdBirth" name="findIdRadio" checked="checked">
                                <label for="">사용자 이름과 생년월일로 인증</label>
                            </div>
                            <div class="findId-content-birth">
                                <form action="">
                                    <table class="findId-content-table">
                                        <tr>
                                            <th><label for="">이름</label></th>
                                            <td><input type="text" id="userName1" name=""></td>
                                        </tr>
                                        <tr>
                                            <th><label for="">생년월일</label></th>
                                            <td><input type="text" id="birthDay1" name="" placeholder="ex:19950101"></td>
                                        </tr>                                    
                                    </table>
                                                           
                                    <div class="findId-content-btn">
                                        <button type="button" class="findId-right" id="findIdCheck1" onclick="idFind1()">확인</button>
                                        <button type="reset" class="findId-right">취소</button>
                                    </div>
                                </form>
                            </div>
                            
                            <div class="findId-result-birth" id="findIdResultBirth" style="display: none;">
                                <strong style="margin-bottom: 10px;">결과:</strong> <br>
                                <div id="idList1">
                                	<!-- <input type="checkbox" name="findedId" value=""> 아이디1 <br> -->
                                </div>
                                <button class="btn findedId-btn">선택한 아이디로 로그인</button>
                            </div>
                             
                        </div>
                        
                        
                        
                        <div class="findId-content-wrap">
                            <div>
                                <input type="radio" id="findIdCell" name="findIdRadio" >
                                <label for="">사용자 이름과 전화번호로 인증</label>
                            </div>
                            <div class="findId-content-cell" style="display: none;">
                                <form action="">
                                    <table class="findId-content-table">
                                        <tr>
                                            <th><label for="">이름</label></th>
                                            <td><input type="text" id="userName2" name=""></td>
                                        </tr>
                                        <tr>
                                            <th><label for="">전화번호</label></th>
                                            <td><input type="text" id="" name="cellNum2" placeholder="ex:010-1234-5678"></td>
                                        </tr>                                    
                                    </table>
                                                                
                                    <div class="findId-content-btn">
                                        <button type="button" class="findId-right" id="findIdCheck2" onclick="idFind2()">확인</button>
                                        <button type="reset" class="findId-right">취소</button>
                                    </div>
                                </form>
                            </div>

                            <div class="findId-result-birth" id="findIdResultCell" style="display: none;">
                                <strong style="margin-bottom: 10px;">결과:</strong> <br>
                                <div id="idList">
                                	<!-- <input type="checkbox" name="findedId" value=""> 아이디1 <br> -->
                                </div>
                                <button class="btn findedId-btn">선택한 아이디로 로그인</button>
                            </div>

                        </div>
                    </div>
                   
                    
                                        
                </div>               
            </div>
        </div>
    </section>

    <script>

        $("input[name=findIdRadio]").change(function(){
            if(this.id == 'findIdCell'){
                $("#findIdBirth").removeAttr("checked");
                $("#findIdCell").attr("checked","checked");
                $(".findId-content-birth").css("display","none");
                $("#findIdResultBirth").css("display","none");
                $(".findId-content-cell").css("display","inline-block");
            }else if(this.id == 'findIdBirth'){
                $("#findIdCell").removeAttr("checked");
                $("#findIdBirth").attr("checked","checked");
                $(".findId-content-cell").css("display","none");
                $("#findIdResultCell").css("display","none");
                $(".findId-content-birth").css("display","inline-block");
            }
        })

        function idFind1(){
        	var userName = $("#userName1").val();
        	var userBirthDay = $("#birthDay1").val();
        	
        	if( userName == ''){
        		alert("이름을 입력해주세요.");
      			return;
        	}else if( userBirthDay == '' ){
        		alert("생년월일을 입력해주세요.")
        		return;
        	}
        	
            $("#findIdResultBirth").css("display","block");
            
        	//아이디찾기
        	$.ajax({
        		type:"post",
        		url:"../../user/findIdA",
        		dataType:"json",
        		contentType: "application/json; charset=utf-8",
        		data: JSON.stringify({
        			"userName" : userName,
        			"birthDay" : userBirthDay
        		}),
        		success: function(data){
        			console.dir(data);
        			
        			if(data.length == 0){//아이디가 없는경우
        				
        				var strMsg = '<strong>입력하신 정보에 해당하는 유저를 찾지 못하였습니다. </strong>';
        				
        				console.log($(".findedId-btn").css("display"));
        				
        				if($(".findedId-btn").css("display") != "none" ){       					
        					console.log("실행됨?"); 
        					$(".findedId-btn").css("display","none");
        				}
        				
        				$("#idList1").append(strMsg);
        				
        			}else{//아이디를 찾은경우
        				
        				if( $(".findedId-btn").css("display") == "none" ){       					
       						$(".findedId-btn").css("display","inline-block");
       					}
        			
        				$("#idList1").html("");//이전에 실패했다면 strMsg가 남아있으니 지워줌
        				
        				$.each( data, function(index,vo){ 
        					
        					var strAdd = '';
            				var userId = vo.userId;
            				
            				strAdd += '<input type="checkbox" name="findedId" value="'+userId+'"> '+userId+' <br>';
            				
            				$("#idList1").append(strAdd);
            			})
        			}
        		
        			
        		},
        		error: function(status,error){
        			console.log(status,error);
        		}
        	})
       	
        }

        function idFind2(){
        	
        	var userName = $("#userName2").val();
        	var userBirthDay = $("#cellNum2").val();
        	
        	if( userName == ''){
        		alert("이름을 입력해주세요.");
      			return;
        	}else if( userBirthDay == '' ){
        		alert("생년월일을 입력해주세요.")
        		return;
        	}
        	
            $("#findIdResultCell").css("display","block");
        }

    </script>

</body>
</html>