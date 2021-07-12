<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- 4d5cac4ade929922b4a884e5a7d924d0 = 카카오톡 js키 -->
    <style>
        .star-input>.input,
        .star-input>.input>label:hover,
        .star-input>.input>input:focus+label,
        .star-input>.input>input:checked+label {
            display: inline-block;
            vertical-align: middle;
            background: url('img/grade_img.png')no-repeat;
        }

        .star-input {
            display: inline-block;
            white-space: nowrap;
            width: 225px;
            height: 40px;
            padding: 25px;
            line-height: 30px;
        }

        .star-input>.input {
            display: inline-block;
            width: 150px;
            background-size: 150px;
            height: 28px;
            white-space: nowrap;
            overflow: hidden;
            position: relative;
        }

        .star-input>.input>input {
            position: absolute;
            width: 1px;
            height: 1px;
            opacity: 0;
        }

        star-input>.input.focus {
            outline: 1px dotted #ddd;
        }

        .star-input>.input>label {
            width: 30px;
            height: 0;
            padding: 28px 0 0 0;
            overflow: hidden;
            float: left;
            cursor: pointer;
            position: absolute;
            top: 0;
            left: 0;
        }

        .star-input>.input>label:hover,
        .star-input>.input>input:focus+label,
        .star-input>.input>input:checked+label {
            background-size: 150px;
            background-position: 0 bottom;
        }

        .star-input>.input>label:hover~label {
            background-image: none;
        }

        .star-input>.input>label[for="p1"] {
            width: 30px;
            z-index: 5;
        }

        .star-input>.input>label[for="p2"] {
            width: 60px;
            z-index: 4;
        }

        .star-input>.input>label[for="p3"] {
            width: 90px;
            z-index: 3;
        }

        .star-input>.input>label[for="p4"] {
            width: 120px;
            z-index: 2;
        }

        .star-input>.input>label[for="p5"] {
            width: 150px;
            z-index: 1;
        }

        .star-input>output {
            display: inline-block;
            width: 60px;
            font-size: 18px;
            text-align: right;
            vertical-align: middle;
        }


        .description::-webkit-scrollbar {
            width: 10px;
        }

        .description::-webkit-scrollbar-thumb {
            background-color: #2f3542;
            border-radius: 10px;
            background-clip: padding-box;
            border: 2px solid transparent;
        }

        .description::-webkit-scrollbar-track {
            background-color: grey;
            border-radius: 10px;
            box-shadow: inset 0px 0px 5px white;
        }



        /* 공유하기 아이콘 */
        .link-icon {
            position: relative;
            display: inline-block;
            margin-right: 10px;
            padding-top: 50px;
        }

        .link-icon.twitter {
            background-image: url(./img/icon-twitter.png);
            background-repeat: no-repeat;
        }

        .link-icon.facebook {
            background-image: url(./img/icon-facebook.png);
            background-repeat: no-repeat;
        }

        .link-icon.kakao {
            background-image: url(./img/icon-kakao.png);
            background-repeat: no-repeat;
        }

        select {
            width: 40px;
            height: 40px;
            padding: .8em .5em;
            border: 1px solid #999;
            font-family: inherit;
            background: url('arrow.jpg') no-repeat 95% 50%;
            border-radius: 0px;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-color: white;
        }

        select::-ms-expand {
            display: none;
        }

        /* 내용 */
        textarea {
            width: 100%;
            height: 200px;
            padding: 10px;
            box-sizing: border-box;
            border-radius: 5px;
            font-size: 16px;
            resize: both;
        }
    </style>


</head>

<body>
    <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    document.getElementById('preview').src = e.target.result;
                };
                reader.readAsDataURL(input.files[0]);
            } else {
                document.getElementById('preview').src = "";
            }
        }

    </script>

    <!-- <header class="custom_header" style="height: 100px; background-color: white;">
        <nav class="navbar">

        </nav>
    </header> -->

    <section class="product_page">
        <div class="container">
            <img src="${pageContext.request.contextPath }/resources/img/1.jpg" style="width: 50px;  border-radius: 70%; overflow: hidden;">
            <span style="margin-top:20px;font-size:18px; color: white;">Creator</span>
            <button type="button" onclick="modify();" class="btn btn-default detial-modify" style="float: right;">
                <span class="glyphicon glyphicon-cog" aria-hidden="true">
                </span>
            </button>
            <span class="category" style=" float: right; font-size:18px; color: white; margin-right: 50px">Market >
                list</span>
            <div class="row">
                <!-- 이미지 영역 -->
                <div class="col-md-6" style="padding-top: 20px; height: 500px;">
                    <input type="file" onchange="readURL(this);">
                    <br />
                    <img id="preview" style="width: auto; height: 500px;" />
                    <button type="button" class="btn btn-info"
                        style="position: relative; top: 15px; left: 500px;">선택</button>
                </div>
                <div class="col-md-6" style="height: 300px;">
                    <!-- 상세영역 -->
                    <div class="detail-item" style="height: 200px;">
                        <span style="padding-right: 15px; color: white; font-size: 20px; font: bold;">TITLE
                            :</span><input type="text" style="height: 40px;"><br />
                        <!--<p class="title" style="color: white; margin-top: 10px;">Mountains Picture</p>-->
                        <span style="padding-right: 3px; color: white; font-size: 20px; font: bold;">PRICE :
                        </span><input type="number" style="height: 40px;">
                        <select style="position: relative; top: 2px; border-radius: 15%;">
                            <option>₩</option>
                            <option>$</option>
                            <option>€</option>
                        </select>
                        <!--<p class="price" style="color: white;">10.00$</p>-->

                        <!-- 상품정보 -->
                        <!--<p class="description"
                            style="color: white; font-size: medium; width: 557px; height: 200px; word-break:break-all; overflow-x: hidden; overflow-y: scroll;">
                            <span>
                                Description
                            </span>
                        </p>-->
                        <h2 style="color: white;">Descriptoion</h2>
                        <form>
                            <textarea style="height: 300px;">Write Description</textarea>
                        </form>

                    </div>
                    <div class="detail-btn" style="height: 300px; position: relative; top: 120px;">
                        <!-- 버튼영역 -->
                        <div class="price">
                            <!-- 금액영역 -->
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
                                <output for="star-input" name="star-result"><b>0.0</b>점</output>
                            </span>
                        </div>
                        <div class="menu">
                            <ul>
                                <li>

                                    <span>
                                        <script type="text/javascript"
                                            src="https://ssl.pstatic.net/share/js/naver_sharebutton.js"></script>
                                        <script type="text/javascript">
                                            new ShareNaver.makeButton({ "type": "f" });
                                        </script>
                                    </span>
                                </li>
                                <li><a id="btnTwitter" class="link-icon twitter" href="javascript:shareTwitter();"
                                        style="color: white;">트위터</a></li>
                                <li><a id="btnFacebook" class="link-icon facebook" href="javascript:shareFacebook();"
                                        style="color: white;">페이스북</a></li>
                                <li><a id="btnKakao" class="link-icon kakao" href="javascript:shareKakao();"
                                        style="color: white;">카카오</a>
                                </li>
                        </div>
                        <div class="order" style="padding-top: 45px; height: 200px;">
                            <!-- 버튼영역 -->
                            <button type="button" onclick=modify(); class="btn btn-primary"
                                style="border-radius: 15px; position: relative; bottom: 40px; left: 100px;">수정하기</button>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- <footer style="height: 100px; background-color: white;">

    </footer> -->
    <!-- 수정하기 -->
    <script type="text/javascript">
        function modify() {
            if (confirm("수정하시겠습니까?") == true) {    //확인
                window.location.href = "http://127.0.0.1:5501/project/detail.html";
                document.form.submit();
            } else {   //취소
                return;
            }
        }
        //-->
    </script>

    <!--별찍기-->
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/star.js"></script>


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