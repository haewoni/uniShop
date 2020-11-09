<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<jsp:include page="common_top.jsp"/>
    <!-- Open Ticket Modal-->
    <form class="modal fade" method="post" id="openTicket" tabindex="-1">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Submit New Ticket</h4>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body">
            <p class="text-muted">We normally respond tickets within 2 business days.</p>
            <div class="form-group">
              <label for="ticket-subject">Subject</label>
              <input class="form-control" type="text" id="ticket-subject" required>
            </div>
            <div class="row">
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="ticket-type">Type</label>
                  <select class="form-control" id="ticket-type">
                    <option>Choose type</option>
                    <option>Website problem</option>
                    <option>Partner request</option>
                    <option>Complaint</option>
                    <option>Info inquiry</option>
                  </select>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="ticket-priority">Priority</label>
                  <select class="form-control" id="ticket-priority">
                    <option>How urgent is your issue?</option>
                    <option>Urgent</option>
                    <option>High</option>
                    <option>Medium</option>
                    <option>Low</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="ticket-description">Description</label>
              <textarea class="form-control" id="ticket-description" rows="8" required></textarea>
            </div>
            <div class="custom-file mb-3">
              <input class="custom-file-input" type="file" id="file-input">
              <label class="custom-file-label" for="file-input">Choose file...</label>
            </div>
          </div>
          <div class="modal-footer">
            <button class="btn btn-primary" type="submit">Submit Ticket</button>
          </div>
        </div>
      </div>
    </form>
    <!-- Off-Canvas Wrapper-->
    <div class="offcanvas-wrapper">
      <!-- Page Title-->
      <div class="page-title">
        <div class="container">
          <div class="column">
            <h1>My Tickets</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="unishop_main">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="account-orders.html">Account</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>My Tickets</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Page Content-->
      <div class="container padding-bottom-3x mb-2">
        <div class="row">
          <div class="col-lg-4">
            <aside class="user-info-wrapper">
              <div class="user-cover" style="background-image: url(img/account/user-cover-img.jpg);">
                <div class="info-label" data-toggle="tooltip" title="You currently have 290 Reward Points to spend"><i class="icon-medal"></i>290 points</div>
              </div>
              <div class="user-info">
                <div class="user-avatar"><a class="edit-avatar" href="#"></a><img src="img/account/user-ava.jpg" alt="User"></div>
                <div class="user-data">
                  <h4>Daniel Adams</h4><span>Joined February 06, 2017</span>
                </div>
              </div>
            </aside>
            <nav class="list-group"><a class="list-group-item with-badge" href="member_jumun_list"><i class="icon-bag"></i>Orders<span class="badge badge-primary badge-pill">6</span></a><a class="list-group-item" href="member_profile_form"><i class="icon-head"></i>Profile</a><a class="list-group-item" href="member_address_detail"><i class="icon-map"></i>Addresses</a><a class="list-group-item with-badge" href="member_wishlist_detail"><i class="icon-heart"></i>Wishlist<span class="badge badge-primary badge-pill">3</span></a><a class="list-group-item with-badge active" href="member_question_list"><i class="icon-tag"></i>My Tickets<span class="badge badge-primary badge-pill">4</span></a></nav>
          </div>
          <div class="col-lg-8">
            <div class="padding-top-2x mt-2 hidden-lg-up"></div>
            <div class="table-responsive">
              <table class="table table-hover margin-bottom-none">
                <thead>
                  <tr>
                    <th>Ticket Subject</th>
                    <th>Date Submitted | Updated</th>
                    <th>Type</th>
                    <th>Priority</th>
                    <th>Status</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><a class="text-medium navi-link" href="member_question_detail">My new ticket</a></td>
                    <td>08/08/2017 | 08/14/2017</td>
                    <td>Website problem</td>
                    <td><span class="text-warning">High</span></td>
                    <td><span class="text-primary">Open</span></td>
                  </tr>
                  <tr>
                    <td><a class="text-medium navi-link" href="member_question_detail">Another ticket</a></td>
                    <td>07/21/2017 | 07/23/2017</td>
                    <td>Partner request</td>
                    <td><span class="text-info">Medium</span></td>
                    <td><span class="text-muted">Closed</span></td>
                  </tr>
                  <tr>
                    <td><a class="text-medium navi-link" href="member_question_detail">Yet another ticket</a></td>
                    <td>05/19/2017 | 05/20/2017</td>
                    <td>Complaint</td>
                    <td><span class="text-danger">Urgent</span></td>
                    <td><span class="text-muted">Closed</span></td>
                  </tr>
                  <tr>
                    <td><a class="text-medium navi-link" href="member_question_detail">My old ticket</a></td>
                    <td>05/19/2017 | 05/20/2017</td>
                    <td>Info inquiry</td>
                    <td><span class="text-success">Low</span></td>
                    <td><span class="text-muted">Closed</span></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <hr class="mb-4">
            <div class="text-right">
              <button class="btn btn-primary margin-bottom-none" data-toggle="modal" data-target="#openTicket">Submit New Ticket</button>
            </div>
          </div>
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