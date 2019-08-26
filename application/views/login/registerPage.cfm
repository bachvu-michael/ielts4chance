<cfparam name="args.title"           field="page.title" editable="true" />

<cfparam name="args.loginId"      field="false" default="" />
<cfparam name="args.email"        field="false" default="" />
<cfparam name="args.fullName"     field="false" default="" />
<cfparam name="args.address"      field="false" default="" />
<cfparam name="args.message"      field="false" default="" />
<cfscript>
    
</cfscript>

<cfoutput>
    <div class="container"  style="width: 100%;max-width: 330px;padding: 15px; margin: auto;background-color:##7a7a7a;">
        <h2>#args.title#</h2>
        <cfswitch expression="#args.message#">
            <cfcase value="EMAIL_VALIDATE">
                <div class="alert alert-warning">
                    EMAIL_VALIDATE
                </div>
            </cfcase>
            <cfcase value="NULL_FIELD">
                <div class="alert alert-warning">
                    NULL_FIELD
                </div>
            </cfcase>
            <cfcase value="REGISTER_FAILD">
                <div class="alert alert-warning">
                    REGISTER_FAILD
                </div>
            </cfcase>
            <cfcase value="EMAIL_ID_DUPLICATE">
                <div class="alert alert-warning">
                    EMAIL_ID_DUPLICATE
                </div>
            </cfcase>
            
        </cfswitch>
    
        <form action="#event.buildLink( linkTo="login.registerPost" )#" method="post">
    
            <div class="form-group">
                <label for="loginId">loginId</label>
                <input type="text" id="loginId" name="loginId" value="#args.loginId#" class="form-control" required>
            </div>
    
            <div class="form-group">
                <label for="email">email</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="fullName">full name</label>
                <input type="text" id="fullName" name="fullName" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="address">address</label>
                <input type="text" id="address" name="address" class="form-control">
            </div>
    
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Register</button>
            </div>
        </form>
    </div>
</cfoutput>