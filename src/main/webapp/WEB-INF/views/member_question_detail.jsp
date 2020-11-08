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
            <h1>Single Ticket</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="unishop_main">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="member_jumun_list">Account</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="member_question_list">My Tickets</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>Single Ticket</li>
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
            <div class="table-responsive margin-bottom-2x">
              <table class="table margin-bottom-none">
                <thead>
                  <tr>
                    <th>Date Submitted</th>
                    <th>Last Updated</th>
                    <th>Type</th>
                    <th>Priority</th>
                    <th>Status</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>08/08/2017</td>
                    <td>08/14/2017</td>
                    <td>Website problem</td>
                    <td><span class="text-warning">High</span></td>
                    <td><span class="text-primary">Open</span></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- Messages-->
            <div class="comment">
              <div class="comment-author-ava"><img src="img/reviews/01.jpg" alt="Avatar"></div>
              <div class="comment-body">
                <p class="comment-text">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.</p>
                <div class="comment-footer"><span class="comment-meta">Daniel Adams</span></div>
              </div>
            </div>
            <div class="comment">
              <div class="comment-author-ava"><img src="img/reviews/03.jpg" alt="Avatar"></div>
              <div class="comment-body">
                <p class="comment-text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                <div class="comment-footer"><span class="comment-meta">Jacob Hammond, Staff</span></div>
              </div>
            </div>
            <div class="comment">
              <div class="comment-author-ava"><img src="img/reviews/03.jpg" alt="Avatar"></div>
              <div class="comment-body">
                <p class="comment-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <div class="comment-footer"><span class="comment-meta">Jacob Hammond, Staff</span></div>
              </div>
            </div>
            <!-- Reply Form-->
            <h5 class="mb-30 padding-top-1x">Leave Message</h5>
            <form method="post">
              <div class="form-group">
                <textarea class="form-control form-control-rounded" id="review_text" rows="8" placeholder="Write your message here..." required></textarea>
              </div>
              <div class="text-right">
                <button class="btn btn-outline-primary" type="submit">Submit Message</button>
              </div>
            </form>
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