<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>Home page AdminStore </title>
	<meta content="" name="description">
	<meta content="" name="keywords">
	<jsp:include page="include/commonup.jsp" />
	<!-- Animation CSS Only for home page -->
	<link href="/resources/css/flowerAnimation.css" rel="stylesheet">
</head>
<body>
<!-- ======= Header ======= -->
<jsp:include page="include/header.jsp" />
<!-- ======= Header Sidebar ======= -->
<!-- ======= Sidebar ======= -->
<jsp:include page="include/sidebar.jsp" />
<!-- ======= End Sidebar ======= -->
<main id="main" class="main">
	<section class="section">
		<div class="row">
			<!-- Animation -->
			<div class="animation">
				<div class="flower">
					<div class="f-wrapper">
						<div class="flower__line"></div>
						<div class="f">
							<div class="flower__leaf flower__leaf--1"></div>
							<div class="flower__leaf flower__leaf--2"></div>
							<div class="flower__leaf flower__leaf--3"></div>
							<div class="flower__leaf flower__leaf--4"></div>
							<div class="flower__leaf flower__leaf--5"></div>
							<div class="flower__leaf flower__leaf--6"></div>
							<div class="flower__leaf flower__leaf--7"></div>
							<div class="flower__leaf flower__leaf--8 flower__fall-down--yellow"></div>
						</div>
					</div>
					<div class="f-wrapper f-wrapper--2">
						<div class="flower__line"></div>
						<div class="f">
							<div class="flower__leaf flower__leaf--1"></div>
							<div class="flower__leaf flower__leaf--2"></div>
							<div class="flower__leaf flower__leaf--3"></div>
							<div class="flower__leaf flower__leaf--4"></div>
							<div class="flower__leaf flower__leaf--5"></div>
							<div class="flower__leaf flower__leaf--6"></div>
							<div class="flower__leaf flower__leaf--7"></div>
							<div class="flower__leaf flower__leaf--8 flower__fall-down--pink"></div>
						</div>
					</div>
					<div class="f-wrapper f-wrapper--3">
						<div class="flower__line"></div>
						<div class="f">
							<div class="flower__leaf flower__leaf--1"></div>
							<div class="flower__leaf flower__leaf--2"></div>
							<div class="flower__leaf flower__leaf--3"></div>
							<div class="flower__leaf flower__leaf--4"></div>
							<div class="flower__leaf flower__leaf--5"></div>
							<div class="flower__leaf flower__leaf--6"></div>
							<div class="flower__leaf flower__leaf--7"></div>
							<div class="flower__leaf flower__leaf--8 flower__fall-down--purple"></div>
						</div>
					</div>
					<div class="flower__glass"></div>
				</div>
			</div>
			<!-- Animation End -->
		</div>
	</section>

</main>
<!-- ======= Footer ======= -->
<jsp:include page="include/footer.jsp" />
<!-- ======= Footer End======= -->
<jsp:include page="include/commondown.jsp" />
</body>
</html>