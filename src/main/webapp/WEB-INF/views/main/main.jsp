<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- main -->

<section class="main-section">
	<div class="main-text-container">

		<div class="main-text1">
			<div>PROMOTE YOURSELF BETTER, SMARTER, FASTER</div>
		</div>

		<div class="main-chart">
			<div>
				<canvas id="mainChart" width="530" height="280"></canvas>
			</div>
		</div>

		<div class="main-text2">
			<div class="main-stats">
				<div class="main-stats-container">
					<div class="main-stats-container-inner1">
						TOTAL VISITS
						<!--data 동적처리-->
						<div class="main-stats-container-inner2">
							${sessionScope.totalVisits}
						</div>
					</div>
				</div>
				<div class="main-stats-container">
					<div class="main-stats-container-inner1">
						TOTAL POSTS
						<!--data 동적처리-->
						<div class="main-stats-container-inner2">
							${sessionScope.totalPosts}
						</div>
					</div>
				</div>
				<div class="main-stats-container">
					<div class="main-stats-container-inner1">
						TOTAL USERS
						<!--data 동적처리-->
						<div class="main-stats-container-inner2">
							${sessionScope.totalUsers}
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</section>

<script>
	
</script>
