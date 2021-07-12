<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    

<body>

    <!-- <header class="custom_header" style="height: 100px; background-color: white;">
        <nav class="navbar">
           
        </nav>
    </header> -->

    <!-- 수정하기버튼 -->
    <script type="text/javascript">
            function modify() {
                if (confirm("수정하시겠습니까?") == true) {    //확인
                    window.location.href="workModify";
                    document.form.submit();
                } else {   //취소
                    return;
                }
            }
        //-->
    </script>

    <section class="product_page">
        <div class="container">
            <!-- 제작자프로필 -->
            <img src="${pageContext.request.contextPath }/resources/img/1.jpg" style="width: 50px;  border-radius: 70%; overflow: hidden;">
            <span style="margin-top:20px;font-size:18px; color: white;">Creator</span>
            <button type="button" onclick="modify();" class="btn btn-default detial-modify" style="float: right;">
                <span class="glyphicon glyphicon-cog" aria-hidden="true">
                </span>
            </button>
            <!-- 카테고리 -->
            <span class="category" style=" float: right; position: relative; top: 5px; font-size:18px; color: white; margin-right: 50px">Market >
                list</span>
            <div class="row">
                <div class="col-md-6" style="padding-top: 20px; height: 500px;">
                    <!-- 이미지 영역 -->
                    <img src="${pageContext.request.contextPath }/resources/img/mountains-6277391_1920.jpg" alt="상품" style="width: 100%;height: 500px;">
                </div>
                <div class="col-md-6" style="height: 300px;">
                    <!-- 상세영역 -->
                    <div class="detail-item" style="height: 200px;">
                        <!-- 상품정보 -->
                        <p class="title" style="color: white; margin-top: 10px;">Mountains Picture</p>
                        <!-- 금액영역 -->
                        <p class="price" style="color: white;">10.00$</p>
                        <p class="description"
                            style="color: white; font-size: medium; width: 557px; height: 200px; word-break:break-all; overflow-x: hidden; overflow-y: scroll;">
                            <span style="height: 300px;">
                                Description
                            </span>
                        </p>
                    </div>
                    <div class="detail-btn" style="height: 200px;">
                        <div class="price" >
                            <!-- 별점 -->
                            <span class="star-input">
                                <span class="input">
                                    <input type="radio" name="star-input" value="1" id="p1">
                                    <label for="p1">1</label>
                                    <input type="radio" name="star-input" value="2" id="p2">
                                    <label for="p2">2</label>
                                    <input type="radio" name="star-input" value="3" id="p3">
                                    <label for="p3">3</label>
                                    <input type="radio" name="star-input" value="4" id="p4">
                                    <label for="p4">4</label>
                                    <input type="radio" name="star-input" value="5" id="p5">
                                    <label for="p5">5</label>
                                </span>
                                <output for="star-input"><b>0</b>Point</output>
                            </span>
                        </div>
                        <!-- 버튼영역 -->
                        <div class="menu">
                            <!-- 공유하기 -->
                            <ul>
                                <li>
                                    <a style="color: white;">
                                        <span style="position: relative; top: 2px;">
                                            <script type="text/javascript"
                                            src="https://ssl.pstatic.net/share/js/naver_sharebutton.js"></script>
                                            <script type="text/javascript">
                                            new ShareNaver.makeButton({ "type": "f" });
                                            </script>
                                    </span><br/>
                                    <span style="color: white; position: relative; top: 10px;">네이버</span>
                                </a>
                                </li>
                                <li style="position: relative; right: 15px;"><a id="btnTwitter" class="link-icon twitter" href="javascript:shareTwitter();"
                                        style="color: white; ">트위터</a></li>
                                <li style="position: relative; right: 40px;"><a id="btnFacebook" class="link-icon facebook" href="javascript:shareFacebook();"
                                        style="color: white;">페이스북</a></li>
                                <li><a id="btnKakao" class="link-icon kakao" href="javascript:shareKakao();"
                                        style="color: white; position: relative; right: 70px;">카카오</a>
                                </li>
                            </ul>
                        </div>
                        <div class="order" style="padding-top: 45px;">
                            <!-- 버튼영역 -->
                            <button type="button" onclick="Buy();" class ="btn btn-primary" style="border-radius: 15px; position: relative; bottom: 40px; left: 100px;">Buy</button>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script>
        function Buy() {
            if (confirm("구매하시겠습니까?") == true) {    //확인
                    document.form.submit();
                } else {   //취소
                    return;
                }
        }
    </script>

    <!-- 댓글 -->
    <section class="comment_page">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="reply-wrap">
                        <!-- 부모영역 -->
                        <div class="reply-img">
                            <!-- 이미지영역 -->
                            <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="user" style="border-radius: 20px;">
                        </div>

                        <div class="reply-content">
                            <!-- 컨텐츠영역 -->
                            <textarea class="form-control"></textarea><!-- 부트스트랩 input클래스 -->
                            <div class="reply-group">
                                <!-- 버튼영역 -->
                                <div class="left">
                                    <!-- 왼쪽 -->
                                    <input type="text" class="form-control" placeholder="아이디">
                                    <input type="password" class="form-control" placeholder="비밀번호">
                                </div>
                                <div class="right">
                                    <button class="btn btn-info">등록하기</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 답글영역 -->
                    <div class="reply-wrap">
                        <div class="reply-img">
                            <!-- 이미지영역 -->
                            <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="user" style="border-radius: 20px;">
                        </div>
                        <div class="reply-content">
                            <div class="reply-group">
                                <!-- 부모영역 -->
                                <strong>honggildong </strong>
                                <small style="padding-left: 15px;">2019/12/10</small>
                                <a href="#"><span class="glyphicon glyphicon-pencil"></span>수정</a>
                                <a href="#"><span class="glyphicon glyphicon-remove"></span>삭제</a>
                            </div>
                            <p>댓글영역</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

   <!--  <footer style="height: 100px; background-color: white;">
       
    </footer> -->
	 
	<!--별찍기-->
    <!-- 
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/star.js"></script> --> 

    <script>
        // 트위터
        function shareTwitter() {
            var sendText = "개발새발"; // 전달할 텍스트
            var sendUrl = "devpad.tistory.com/"; // 전달할 URL
            window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
        }

        //페이스북
        function shareFacebook() {
            var sendUrl = "devpad.tistory.com/"; // 전달할 URL
            window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
        }

        //카카오톡
        function shareKakao() {

            // 사용할 앱의 JavaScript 키 설정
            Kakao.init('4d5cac4ade929922b4a884e5a7d924d0');

            // 카카오링크 버튼 생성
            Kakao.Link.createDefaultButton({
                container: '#btnKakao', // 카카오공유버튼ID
                objectType: 'feed',
                content: {
                    title: "개발새발", // 보여질 제목
                    description: "개발새발 블로그입니다", // 보여질 설명
                    imageUrl: "devpad.tistory.com/", // 콘텐츠 URL
                    link: {
                        mobileWebUrl: "devpad.tistory.com/",
                        webUrl: "devpad.tistory.com/"
                    }
                }
            });
        }

        

    </script>
</body>

</html>