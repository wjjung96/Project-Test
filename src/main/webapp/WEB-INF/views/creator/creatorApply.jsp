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
            <div class="form-group">
              <label for="career">경력사항</label>
              <div class="input-group">
                <input type="text" class="seller-form-inner form-control" name="userCareer" id="userCareer">
                <div class="seller-btn input-group-btn" >
                  <button type="button" class="btn btn-info"><i class="far fa-plus"></i></button>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="awards">수상경력</label>
              <input type="text" class="seller-form-inner form-control" name="userAwards" id="userAwards">
            </div>

          </form>
          <div class="form-group">
            <button type="submit" class="btn btn-lg btn-info btn-block" id="loginBtn">신청하기</button>
          </div>
          
            
          
        </div>

      </div>

    </div>

  </section>