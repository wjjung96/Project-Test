<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<section>
    <div class="container">
        <div class="row">
            <div>
            <!-------------------최상단 고객센터 글 box------------------>
            <div class="FAQ-user-center"> 
                <div class="FAQ-user-center-box"> <!-- 고객 센터 box -->
                    <p>고객센터</p>
                </div>

                <div class="FAQ-user-center-writing"> <!-- 글귀 box -->
                    <p class="FAQ-user-center-writing-p1">새로운 소식과 다양한 정보도 만나 보시고</p>
                    <p>궁금한 점은 빠르게 해결하세요!.</p>
                </div>

                <div> <!-- 해당페이지 이동 아이콘  -->
                        <!-- 구현 미정 -->
                </div>
            </div>
            <!---------------------기능 종류 box------------------------>
            <div class="FAQ-function-kinds"> <!-- FAQ / 1:1 문의 / 공지사항 BOX-->
                <ul class="FAQ-function-kinds-ul">
                    <li class="FAQ-function-kinds-boxp"></li>
                    <li class="FAQ-function-kinds-FAQ"><a href="">FAQ</a></li>
                    <li class="FAQ-function-kinds-mtom"><a href="">1:1문의</a></li>
                    <li class="FAQ-function-kinds-notice"><a href="">공지사항</a></li>
                    <li class="FAQ-function-kinds-boxb"></li>
                </ul>
            </div>

            <!--------------------FAQ 질문 종류 box------------------------>
            <div class="FAQ-sub-question"> <!-- FAQ box -->
                <div class="FAQ-sub-question-box"> <!-- FAQ button box-->
                    <div class="FAQ-sub-question-buy"> <!-- 결제 관련 FAQ-->
                        <button class="FAQ-payment-id">결제 관련</button>
                    </div>

                    <div class="FAQ-sub-question-login"><!-- 로그인 관련 -->
                        <button class="FAQ-login-id">로그인 관련</button>
                    </div>

                    <div class="FAQ-sub-question-homepage"> <!-- 홈페이지 사용법 관련 -->
                        <button class="FAQ-homepage-id">홈페이지 사용법 관련</button>
                    </div>

                    <div class="FAQ-sub-question-item"> <!-- 제품 등록 관련 -->
                        <button class="FAQ-item-insert-id">제품 등록 관련</button>
                    </div>
                </div>
            </div>

            <!-- --------------------검색 기능 box -->
            <div class="FAQ-such-box">
                <div class="FAQ-such-div">
                    <input type="text" placeholder="검색어 입력">
                    <button>Q</button>
                </div>
            </div>

            <!------------------전화 문의 안내 글 box----------------->
            <div class="FAQ-question-guide-box">
                <div class="FAQ-question-guide-div">
                    <p>· (전화 문의 안내) 문의 내용에 따라 FAQ의 답변글 내에 담당자 전화번호가 있습니다.</p>
                </div>
            </div>

            <!------------------FAQ 해당 질문 및 답변--(결제 관련)--------------->
            <div class="FAQ-question-answer-payment" id="FAQ-payment">
                <div class="FAQ-question-box" id="FAQ-question-id"> <!-- FAQ 질문 box-->
                    <div class="FAQ-question-icon-box"> <!-- Q 질문 아이콘 -->
                        <button>Q</button>
                    </div>

                    <div class="FAQ-question-title"> <!-- FAQ 질문 제목 -->
                        <button>결제 후 유료회원 전환이 되지 않는 경우</button>
                    </div>
                    
                    <div class="FAQ-question-look"> <!-- + - 접었다 폈다 기능-->
                        <button id="FAQ-answer-btn">+</button>
                    </div>
                </div>

                <div class="FAQ-answer-box"> <!-- FAQ 답변 box-->
                    <div class="FAQ-answer-icon-box"> <!-- A 답변 아이콘 -->
                        <button>A</button>
                    </div>

                    <div class="FAQ-answer-content"> <!-- FAQ 답변 -->
                        <p>
                        결제 후 새로고침을 해주시기 바랍니다.
                        (‘무통장 입금’으로 결제하신 경우 유료회원 전환에 약간의 시간(최대 5~10분)이 소요될 수 있으니, 
                        입금 이후에 새로고침을 해주시기 바랍니다.)
                        재로그인을 시도하셨지만, 그래도 전환이 안되신다면 브라우저의 쿠키로 인해 발생하는 문제로
                        아래의 이미지를 참고하셔서 브라우저의 캐시를 지우고 다시 로그인을 해보시기 바랍니다.
                        </p>
                    </div>
                </div>
            </div>
            <!-- 질문 답변 -->

            <!------------------FAQ 해당 질문 및 답변--(로그인관련 관련)--------------->
            <div class="FAQ-question-answer-login" id="FAQ-login">
                <div class="FAQ-question-box FAQ-login-QnA" id="FAQ-question-login-id"> <!-- FAQ 질문 box-->
                    <div class="FAQ-question-icon-box"> <!-- Q 질문 아이콘 -->
                        <button>Q</button>
                    </div>

                    <div class="FAQ-question-title"> <!-- FAQ 질문 제목 -->
                        <button>로그인 문제</button>
                    </div>
                    
                    <div class="FAQ-question-look"> <!-- + - 접었다 폈다 기능-->
                        <button id="FAQ-answer-login-btn">+</button>
                    </div>
                </div>

                <div class="FAQ-answer-box"> <!-- FAQ 답변 box-->
                    <div class="FAQ-answer-icon-box"> <!-- A 답변 아이콘 -->
                        <button>A</button>
                    </div>

                    <div class="FAQ-answer-content"> <!-- FAQ 답변 -->
                        <p>
                        로그인이 잘못됨
                        </p>
                    </div>
                </div>
            </div>
            <!-- 질문 답변 -->

            <!------------------FAQ 해당 질문 및 답변--(홈페이지 사용법 관련)--------------->
            <div class="FAQ-question-answer-home" id="FAQ-home">
                <div class="FAQ-question-box" id="FAQ-question-home-id"> <!-- FAQ 질문 box-->
                    <div class="FAQ-question-icon-box"> <!-- Q 질문 아이콘 -->
                        <button>Q</button>
                    </div>

                    <div class="FAQ-question-title"> <!-- FAQ 질문 제목 -->
                        <button>홈페이지 사용법 안내</button>
                    </div>
                    
                    <div class="FAQ-question-look"> <!-- + - 접었다 폈다 기능-->
                        <button id="FAQ-answer-home-btn">+</button>
                    </div>
                </div>

                <div class="FAQ-answer-box"> <!-- FAQ 답변 box-->
                    <div class="FAQ-answer-icon-box"> <!-- A 답변 아이콘 -->
                        <button>A</button>
                    </div>

                    <div class="FAQ-answer-content"> <!-- FAQ 답변 -->
                        <p>
                        눌러보세요 하나하나
                        </p>
                    </div>
                </div>
            </div>
            <!-- 질문 답변 -->

             <!------------------FAQ 해당 질문 및 답변--(제품 등록 관련)--------------->
             <div class="FAQ-question-answer-item" id="FAQ-item">
                <div class="FAQ-question-box" id="FAQ-question-item-id"> <!-- FAQ 질문 box-->
                    <div class="FAQ-question-icon-box"> <!-- Q 질문 아이콘 -->
                        <button>Q</button>
                    </div>

                    <div class="FAQ-question-title"> <!-- FAQ 질문 제목 -->
                        <button>제품 등록 안내</button>
                    </div>
                    
                    <div class="FAQ-question-look"> <!-- + - 접었다 폈다 기능-->
                        <button id="FAQ-answer-item-btn">+</button>
                    </div>
                </div>

                <div class="FAQ-answer-box"> <!-- FAQ 답변 box-->
                    <div class="FAQ-answer-icon-box"> <!-- A 답변 아이콘 -->
                        <button>A</button>
                    </div>

                    <div class="FAQ-answer-content"> <!-- FAQ 답변 -->
                        <p>
                        제품 안내
                        </p>
                    </div>
                </div>
            </div>
            <!-- 질문 답변 -->

        </div>
    </div>
</section>

   <!-- FAQ 질문 답변 script -->
   <script>
    window.onload = function(){
        var toggle = document.getElementById("FAQ-question-id");
        var content = document.querySelector(".FAQ-answer-box");
        var btn = document.getElementById("FAQ-answer-btn")
       
        toggle.onclick = function(){
            if(toggle.className == "FAQ-question-box"){
                content.style.display = 'inline-block';
                toggle.className = "ct";
                btn.innerHTML = "-";
                btn.style.color = "#494949";
                btn.style.fontSize = "40px"
                btn.style.marginLeft = "10px";
                btn.style.height = "20px";
                btn.style.lineHeight = "20px";

            }else{
                content.style.display = 'none';
                toggle.className = "FAQ-question-box";
                btn.style.color = "#bfbfbf";
                btn.style.marginLeft = "0px";
                btn.style.height = "30px";
                btn.style.lineHeight = "30px";
                btn.style.fontSize = "30px"
                btn.innerHTML = "+";
            }
        }
    }
</script>

<script>
        $(function(){
            $('#FAQ-login').click(function(){
                if($('.FAQ-answer-box').css("display") == "none"){
                    $('.FAQ-answer-box').show();
                    $('.FAQ-answer-box').attr('class','FAQ-hide');
                    
                }else{
                    $('.FAQ-hide').attr('class','FAQ-answer-box');
                    $('.FAQ-answer-box').hide();
                }
            });
        });
</script>


 <!--div 내용 바꾸기-->
 <script>
        $(document).ready(function() {
                // 처음 화면 로드시 기본 화면 보여주기
                $('.FAQ-question-answer-payment').show();
                $('.FAQ-question-answer-login').hide();
                $('.FAQ-question-answer-home').hide();
                $('.FAQ-question-answer-item').hide();
                
                // 결제 관련 li 클릭시 결제 관련 QnA 보여주기 
                $('.FAQ-payment-id').click(function(){
                $ ('.FAQ-question-answer-payment').show();
                $('.FAQ-question-answer-home').hide();
                $('.FAQ-question-answer-item').hide();
                $ ('.FAQ-question-answer-login').hide();
                return false;
            });
                // 로그인 관련 li 클릭시 결제 관련 QnA 보여주기
                $('.FAQ-login-id').click(function(){
                $ ('.FAQ-question-answer-payment').hide();
                $('.FAQ-question-answer-home').hide();
                $('.FAQ-question-answer-item').hide();
                $ ('.FAQ-question-answer-login').show(); 
                return false;
            });
                // 홈페이지 관련 li 클릭시 결제 관련 QnA 보여주기
                $('.FAQ-homepage-id').click(function(){
                $ ('.FAQ-question-answer-payment').hide();
                $('.FAQ-question-answer-home').show();
                $('.FAQ-question-answer-item').hide();
                $ ('.FAQ-question-answer-login').hide(); 
                return false;
            });
                // 제품 등록 관련 li 클릭시 결제 관련 QnA 보여주기
                $('.FAQ-item-insert-id').click(function(){
                $ ('.FAQ-question-answer-payment').hide();
                $('.FAQ-question-answer-home').hide();
                $('.FAQ-question-answer-item').show();
                $ ('.FAQ-question-answer-login').hide(); 
                return false;
            });
        });
 </script>