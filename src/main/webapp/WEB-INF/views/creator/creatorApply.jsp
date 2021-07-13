<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <section>

    <div class="container">

      <div class="creator-apply row">

        <div class="seller-form">

          <div class="sellerTitle">
            <h2>판매자 신청하기</h2>
          </div>
          <form action="#" method="POST">

            <div class="form-group">
              <label for="major">전공분야</label>
              <input type="text" class="seller-form-inner form-control" name="userMajor" id="userMajor">
            </div>
            <div class="form-group" id="careerBox">
              <label for="career">경력사항</label>
              <div class="input-group" id="careerGroup">
                <input type="text" class="seller-form-inner form-control" name="userCareer" id="userCareer" placeholder="최대 3개">
                <div class="seller-btn input-group-btn" >
                  <button type="button" class="btn btn-info" id="plusBtn"><i class="far fa-plus"></i></button>
                </div>
              </div>
            </div>
            <div class="form-group" id="awardsBox">
              <label for="awards">수상경력</label>
              <div class="input-group" id="awardsGroup">
                <input type="text" class="seller-form-inner form-control" name="userAwards" id="userAwards" placeholder="최대 3개">
                <div class="seller-btn input-group-btn" >
                  <button type="button" class="btn btn-info" id="plusBtn2"><i class="far fa-plus"></i></button>
                </div>
              </div>
            </div>

          </form>
          <div class="form-group">
            <button type="submit" class="btn btn-lg btn-info btn-block" id="loginBtn">신청하기</button>
          </div>
          
            
          
        </div>

      </div>

    </div>

  </section>
  
  <script>
  
  let careerBox = document.getElementById("careerBox");
  let plusBtn = document.getElementById("plusBtn");
  let count = 0;

  plusBtn.addEventListener("click", function() {
	  
    if(count >= 2) return;

    ++count;
    
    let div = document.createElement("div");
    div.setAttribute("id", "careerGroup");

    let input = document.createElement("input");
    input.setAttribute("type", "text");
    input.setAttribute("class", "form-control");
    input.setAttribute("name", "userCareer"+count);
    input.setAttribute("id", "userCareer");


    
    div.appendChild(input);
    

    careerBox.appendChild(div);      
  
  });
  
  let awardsBox = document.getElementById("awardsBox");
  let plusBtn2 = document.getElementById("plusBtn2");
  let count2 = 0;

  plusBtn2.onclick = function() {
    if(count2 >= 2) return;

    ++count2;

    let div = document.createElement("div");
    div.setAttribute("id", "awardsGroup");

    let input = document.createElement("input");
    input.setAttribute("type", "text");
    input.setAttribute("class", "form-control");
    input.setAttribute("name", "userAwards"+count);
    input.setAttribute("id", "userAwards");


    
    div.appendChild(input);
    

    awardsBox.appendChild(div);  
  }
  
  </script>