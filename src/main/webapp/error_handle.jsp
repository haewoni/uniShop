<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<jsp:include page="common_top.jsp"/>
    <!-- Off-Canvas Wrapper-->
    <div class="offcanvas-wrapper">
      <!-- Page Content-->
      <div class="container padding-top-3x padding-bottom-3x mb-1"><img class="d-block m-auto" src="img/404_art.jpg" style="width: 100%; max-width: 550px;" alt="404">
        <div class="padding-top-1x mt-2 text-center">
          <h3>Page Not Found</h3>
          <p>It seems we can’t find page you are looking for. <a href="index.html">Go back to Homepage</a><br>Or try using search at the top right corner of the page.</p>
        </div>
      </div>
      <!-- Site Footer-->
      <jsp:include page="common_bottom.jsp"/>
    </div>
    <!-- Back To Top Button--><a class="scroll-to-top-btn" href="#"><i class="icon-arrow-up"></i></a>
    <!-- Backdrop-->
    <div class="site-backdrop"></div>
    <!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
    <script src="js/vendor.min.js"></script>
    <script src="js/scripts.min.js"></script>
  </body>
</html>