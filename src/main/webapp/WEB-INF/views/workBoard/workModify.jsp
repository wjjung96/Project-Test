<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <style>
      

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

    <section class="product_page" style="height: 1000px;">
        <div class="container">
            <img src="${pageContext.request.contextPath }/resources/img/1.jpg" style="width: 50px;  border-radius: 70%; overflow: hidden;">
            <span style="margin-top:20px;font-size:18px; color: white;">Creator</span>
            <button type="button" onclick="modify();" class="btn btn-default detial-modify" style="float: right;">
                <span class="glyphicon glyphicon-cog" aria-hidden="true">
                </span>
            </button>
           <select style=" float: right; width: 10%; margin-right: 50px">
           	<option value="" disabled selected hidden>---Category---</option>
           	<option value="1">2D Art</option>
           	<option value="2">3D Art</option>
           	<option value="3">Video/Firm</option> 
           	<option value="4">Interior</option>
           	<option value="5">Architecture</option>
           </select>
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
                    <div class="detail-item" style="height: 500px; margin-top: 50px;">
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
                        <h2 style="color: white; margin-top: 90px;">Descriptoion</h2>
                        <form>
                            <textarea style="height: 300px;">Write Description</textarea>
                        </form>

                    </div>
                    <div class="detail-btn" style="height: 300px; position: relative; top: 120px;">
                        <!-- 버튼영역 -->
                     
                        <div class="menu">
                         
                        </div>
                        <div class="order" style="padding-top: 45px; height: 200px;">
                            <!-- 버튼영역 -->
                            <button type="button" onclick=modify(); class="btn btn-primary"
                                style="border-radius: 15px; float: right;">수정하기</button>                    
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


  

   
</body>

</html>