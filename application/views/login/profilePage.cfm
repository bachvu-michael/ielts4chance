<cfparam name="args.title"              field="page.title" editable="true" />
<cfparam name="args.main_content"       field="page.main_content" />

<cfparam name="args.loginId"      field="false" default="" />
<cfparam name="args.email"        field="false" default="" />
<cfparam name="args.fullName"     field="false" default="" />
<cfparam name="args.address"      field="false" default="" />

<cfscript>
    event.include(assetId="js-profile");
</cfscript>
<cfoutput>
    <style>
        .tab-pane{
            padding: 1.5rem;
            border: solid ##f7f7f9;
            border-width: .2rem;

        }
    </style>
    #args.main_content#
    <div class="container pb-3">
        <div class="row">
            <div class="col-4">
              <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="##profileTab" role="tab" aria-controls="profile">Profile</a>
                <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="##passwordTab" role="tab" aria-controls="password">Password</a>
                <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="##coursesTab" role="tab" aria-controls="messages">Your courses</a>
              </div>
            </div>
            <div class="col-8">
              <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="profileTab" role="tabpanel" aria-labelledby="list-home-list">
                    <form id="profile-info" action="##" method="post">
                        <div class="form-group">
                          <label for="email">Your email</label>
                          <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" value="#args.email#" required>
                          <small id="emailHelp" class="form-text text-muted">Make sure the email is real</small>
                        </div>
                        <div class="form-group">
                            <label for="login-id">Your login ID</label>
                            <input type="text" class="form-control" id="login-id" aria-describedby="LoginHelp" placeholder="Enter login ID" value="#args.loginId#" required>
                            <small id="LoginHelp" class="form-text text-muted">The name you can use for login</small>
                        </div>
                        <div class="form-group">
                            <label for="fullname">Your full name</label>
                            <input type="text" class="form-control" id="fullname" placeholder="Enter your name" value="#args.fullName#" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Your address</label>
                            <input type="text" class="form-control" id="address" placeholder="Enter your address" value="#args.address#" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Save</button>
                      </form>
                </div>
                <div class="tab-pane fade" id="passwordTab" role="tabpanel" aria-labelledby="list-profile-list">
                    <form id="profile-password" action="##" method="post">
                        <div class="form-group row">
                          <label for="password" class="col-sm-2 col-form-label">Password</label>
                          <div class="col-sm-10">
                            <input type="password" class="form-control" id="password" placeholder="Password" required>
                          </div>
                        </div>
                        <div class="form-group row">
                            <label for="re-password" class="col-sm-2 col-form-label">Password Confirm</label>
                            <div class="col-sm-10">
                              <input type="password" class="form-control" id="re-password" placeholder="Confirm Password" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Change Password</button>
                    </form>
                </div>
                <div class="tab-pane fade" id="coursesTab" role="tabpanel" aria-labelledby="list-messages-list">
                    coursesTab
                </div>
              </div>
            </div>
        </div>
    </div>
</cfoutput>
