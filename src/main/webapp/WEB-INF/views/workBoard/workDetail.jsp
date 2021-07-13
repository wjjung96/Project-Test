<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('${pageContext.request.contextPath }/resources/img/grade_img.png')no-repeat;}
.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
.star-input>.input.focus{outline:1px dotted #ddd;}
.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input>.input>label:hover~label{background-image: none;}
.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
</style>

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
                           
                        </div>
                        <div class="order" style="padding-top: 45px;">
                            <!-- 버튼영역 -->
                            <button type="button" onclick="Buy();" class ="btn btn-primary" style="border-radius: 15px; float: right;">Buy</button>
                            
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
    
    <script src="${pageContext.request.contextPath }/resources/js/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/star.js"></script> 

</body>

</html>