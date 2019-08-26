component {

	property name="websiteLoginService"   	inject="websiteLoginService";
	property name="passwordPolicyService" 	inject="passwordPolicyService";
	property name="userDao" 				inject="presidecms:object:website_user";
	property name="sessionStorage" 			inject="sessionStorage";

// core events
	public void function attemptLogin( event, rc, prc ) output=false {
		announceInterception( "preAttemptLogin" );

		if ( websiteLoginService.isLoggedIn() && !websiteLoginService.isAutoLoggedIn() ) {
			setNextEvent( url=_getDefaultPostLoginUrl( argumentCollection=arguments ) );
		}
		var loginId      = rc.loginId  ?: "";
		var password     = rc.password ?: "";
		var postLoginUrl = Len( Trim( rc.postLoginUrl ?: "" ) ) ? rc.postLoginUrl : websiteLoginService.getPostLoginUrl( cgi.http_referer );
		var rememberMe   = _getRememberMeAllowed() && IsBoolean( rc.rememberMe ?: "" ) && rc.rememberMe;
		var loggedIn     = websiteLoginService.login(
			  loginId              = loginId
			, password             = password
			, rememberLogin        = rememberMe
			, rememberExpiryInDays = _getRememberMeExpiry()
		);

		if ( loggedIn ) {
			announceInterception( "onLoginSuccess"  );

			websiteLoginService.clearPostLoginUrl();
			setNextEvent( url=postLoginUrl );
		}

		announceInterception( "onLoginFailure"  );

		websiteLoginService.setPostLoginUrl( postLoginUrl );
		var persist = event.getCollectionWithoutSystemVars();
		    persist.message = "LOGIN_FAILED";

		setNextEvent( url=event.buildLink( page="login" ), persistStruct=persist );
	}

	public void function logout( event, rc, prc ) output=false {
		websiteLoginService.logout();
		setNextEvent( url=_getDefaultPostLogoutUrl( argumentCollection=arguments ) );
	}

	public void function sendResetInstructions( event, rc, prc ) output=false {
		if ( websiteLoginService.sendPasswordResetInstructions( rc.loginId ?: "" ) ) {
			setNextEvent( url=event.buildLink( page="forgotten_password" ), persistStruct={
				  message = "PASSWORD_RESET_INSTRUCTIONS_SENT"
				, loginId = ( rc.loginId ?: "" )
			} );
		}

		setNextEvent( url=event.buildLink( page="forgotten_password" ), persistStruct={
			message = "LOGINID_NOT_FOUND"
		} );
	}

	public void function resetPasswordAction( event, rc, prc ) output=false {
		var pw           = rc.password             ?: "";
		var confirmation = rc.passwordConfirmation ?: "";
		var token        = rc.token                ?: "";

		if ( !websiteLoginService.validateResetPasswordToken( rc.token ?: "" ) ) {
			setNextEvent( url=event.buildLink( page="forgotten_password" ), persistStruct={
				message = "INVALID_RESET_TOKEN"
			} );
		}

		if ( !Len( Trim( pw ) ) ) {
			setNextEvent( url=event.buildLink( page="reset_password" ), persistStruct={
				  message = "EMPTY_PASSWORD"
				, token   = token
			} );
		}

		if ( pw != confirmation ) {
			setNextEvent( url=event.buildLink( page="reset_password" ), persistStruct={
				  message = "PASSWORDS_DO_NOT_MATCH"
				, token   = token
			} );
		}

		if ( !passwordPolicyService.passwordMeetsPolicy( "website", pw ) ) {
			setNextEvent( url=event.buildLink( page="reset_password" ), persistStruct={
				  message = "PASSWORD_NOT_STRONG_ENOUGH"
				, token   = token
			} );
		}

		if ( websiteLoginService.resetPassword( token=token, password=pw ) ) {
			setNextEvent( url=event.buildLink( page="login" ), persistStruct={
				message = "PASSWORD_RESET"
			} );
		}

		setNextEvent( url=event.buildLink( page="reset_password" ), persistStruct={
			  message = "UNKNOWN_ERROR"
			, token   = token
		} );

	}
	public struct function checkLogin( event, rc, prc ) {

		if ( websiteLoginService.isLoggedIn() ) {
			var currenUser = userDao.selectData(id = sessionStorage.getStorage().website_user.id);
			result = currenUser.getrow(1);
			return result;
		}
		return {};
	}

	public void function registerPost( event, rc, prc ) output=false {
		announceInterception( "preAttemptLogin" );
		if ( websiteLoginService.isLoggedIn() && !websiteLoginService.isAutoLoggedIn() ) {
			setNextEvent( url=_getDefaultPostLoginUrl( argumentCollection=arguments ) );
		}
		var loginId      	= rc.loginId  	?: "";
		var email     		= rc.email 		?: "";
		var fullName     	= rc.fullName 	?: "";
		var address     	= rc.address 	?: "";
		if(!isEmpty(loginId) && !isEmpty(email) && !isEmpty(fullName)){
			var existEmail = userDao.selectData(
				filter       = "website_user.email_address LIKE :email AND website_user.login_id LIKE :loginId"
				, filterParams  = { "email" = {type="varchar", value="%#email#%"},"loginId" = {type="varchar",  value="%#loginId#%"} }
			);			
			if(!isEmpty(existEmail)){
				var persist = event.getCollectionWithoutSystemVars();
				persist.message = "EMAIL_ID_DUPLICATE";
	
				setNextEvent( url=event.buildLink( page="register" ), persistStruct=persist );
			}
			var newId = userDao.insertData(
				data = {
					login_id: loginId,
					email_address:email,
					display_name:fullName,
					address:address
				}
			);
			if(!isEmpty(newId)){
				var persist = event.getCollectionWithoutSystemVars();
				persist.message = "REGISTER_SUCCESS";
				websiteLoginService.sendWelcomeEmail(newId);
				setNextEvent( url=event.buildLink( page="login" ), persistStruct=persist );
			}else{
				var persist = event.getCollectionWithoutSystemVars();
				persist.message = "EMAIL_VALIDATE";
	
				setNextEvent( url=event.buildLink( page="register" ), persistStruct=persist );
			}
		}else{
			var persist = event.getCollectionWithoutSystemVars();
		    persist.message = "NULL_FIELD";

			setNextEvent( url=event.buildLink( page="register" ), persistStruct=persist );
		}
		

		var persist = event.getCollectionWithoutSystemVars();
		    persist.message = "REGISTER_FAILD";

		setNextEvent( url=event.buildLink( page="register" ), persistStruct=persist );
	}
	public boolean function profileInfoPost( event, rc, prc ) {
		announceInterception( "preAttemptLogin" );
		if ( !(websiteLoginService.isLoggedIn() && ( !websiteLoginService.isAutoLoggedIn() || _isDirectLoginPageRequest( event ) ) )) {
			setNextEvent( url=_getDefaultPostLoginUrl( argumentCollection=arguments ) );
		}
		var loginId      	= rc.loginId  	?: "";
		var email     		= rc.email 		?: "";
		var fullName     	= rc.fullName 	?: "";
		var address     	= rc.address 	?: "";
		var userId = websiteLoginService.getLoggedInUserId();

		var result = userDao.updateData( id=userId, data={
				login_id        = loginId
				, email_address = email
				, display_name 	= fullName
				,address 		= address
		} );
		if(result){
			return true;
		}
		return false;
	}
	public boolean function profilePasswordPost( event, rc, prc ) {
		announceInterception( "preAttemptLogin" );
		if ( !(websiteLoginService.isLoggedIn() && ( !websiteLoginService.isAutoLoggedIn() || _isDirectLoginPageRequest( event ) ) )) {
			setNextEvent( url=_getDefaultPostLoginUrl( argumentCollection=arguments ) );
		}
		var password      	= rc.password  	?: "";
		var rePassword     	= rc.rePassword 		?: "";
		var userId = websiteLoginService.getLoggedInUserId();
		if(password != rePassword || password=="" || rePassword ==""){
			return false;
		}
		websiteLoginService.changePassword(password);
		return true;

		// var result = userDao.updateData( id=userId, data={
		// 		, email_address = email
		// 		, display_name 	= fullName
		// 		,address 		= address
		// } );
		// if(result){
		// 	return true;
		// }
		// return false;
	}
	
	

// page type viewlets
	private string function loginPage( event, rc, prc, args={} ) output=false {
		if ( websiteLoginService.isLoggedIn() && ( !websiteLoginService.isAutoLoggedIn() || _isDirectLoginPageRequest( event ) ) ) {
			setNextEvent( url=_getDefaultPostLoginUrl( argumentCollection=arguments ) );
		}

		args.allowRememberMe = _getRememberMeAllowed();
		args.postLoginUrl    = websiteLoginService.getPostLoginUrl( rc.postLoginUrl ?: event.getCurrentUrl() );
		args.loginId         = args.loginId      ?: ( rc.loginId      ?: "" );
		args.rememberMe      = args.rememberMe   ?: ( rc.rememberMe   ?: "" );
		args.message         = args.message      ?: ( rc.message      ?: "" );

		return renderView( view="/login/loginPage", presideObject="login", id=event.getCurrentPageId(), args=args );
	}

	private string function forgottenPassword( event, rc, prc, args={} ) output=false {
		if ( websiteLoginService.isLoggedIn() ) {
			setNextEvent( url=_getDefaultPostLoginUrl( argumentCollection=arguments ) );
		}

		args.postLoginUrl = websiteLoginService.getPostLoginUrl( rc.postLoginUrl ?: cgi.http_referer );

		return renderView( view="/login/forgottenPassword", presideObject="forgotten_password", id=event.getCurrentPageId(), args=args );
	}

	private string function resetPassword( event, rc, prc, args={} ) output=false {
		if ( websiteLoginService.isLoggedIn() ) {
			setNextEvent( url=_getDefaultPostLoginUrl( argumentCollection=arguments ) );
		}

		if ( !websiteLoginService.validateResetPasswordToken( rc.token ?: "" ) ) {
			setNextEvent( url=event.buildLink( page="forgotten_password" ), persistStruct={
				message = "INVALID_RESET_TOKEN"
			} );
		}

		var passwordPolicy = passwordPolicyService.getPolicy( "website" );

		if ( Len( Trim( passwordPolicy.message ?: "" ) ) ) {
			prc.policyMessage = renderContent( "richeditor", passwordPolicy.message );
		}

		return renderView( view="/login/resetPassword", presideObject="reset_password", id=event.getCurrentPageId(), args=args );
	}

	private string function registerPage( event, rc, prc, args={} ) output=false {
		if ( websiteLoginService.isLoggedIn() && ( !websiteLoginService.isAutoLoggedIn() || _isDirectLoginPageRequest( event ) ) ) {
			setNextEvent( url=_getDefaultPostLoginUrl( argumentCollection=arguments ) );
		}
		
		args.loginId         	= args.loginId      	?: ( rc.loginId      	?: "" );
		args.email         		= args.email      		?: ( rc.email      		?: "" );
		args.fullName         	= args.fullName      	?: ( rc.fullName      	?: "" );
		args.address         	= args.address      	?: ( rc.address      	?: "" );
		args.message         	= args.message      	?: ( rc.message      	?: "" );

		return renderView( view="/login/registerPage", presideObject="register", id=event.getCurrentPageId(), args=args );
	}
	private string function profilePage( event, rc, prc, args={} ) output=false {
		if ( !(websiteLoginService.isLoggedIn() && ( !websiteLoginService.isAutoLoggedIn() || _isDirectLoginPageRequest( event ) ) )) {
			setNextEvent( url=_getDefaultPostLoginUrl( argumentCollection=arguments ) );
		}

		var userId = websiteLoginService.getLoggedInUserId();
		var currenUser = userDao.selectData(id =userId);
		args.loginId         	= currenUser.login_id      			?:  "";
		args.email         		= currenUser.email_address      	?:  "";
		args.fullName         	= currenUser.display_name      		?:  "";
		args.address         	= currenUser.address      			?:  "";

		return renderView( view="/login/profilePage", presideObject="profile", id=event.getCurrentPageId(), args=args );
	}
	
// private helpers
	private string function _getDefaultPostLoginUrl( event, rc, prc ) output=false {
		var defaultPage = getSystemSetting( "website_users", "default_post_login_page", "" );

		if ( Len( Trim( defaultPage ) ) ) {
			return event.buildLink( page=defaultPage );
		}
		return "/";
	}

	private string function _getDefaultPostLogoutUrl( event, rc, prc ) output=false {
		var defaultPage = getSystemSetting( "website_users", "default_post_logout_page", "" );

		if ( Len( Trim( defaultPage ) ) ) {
			return event.buildLink( page=defaultPage );
		}
		return "/";
	}

	private boolean function _getRememberMeAllowed() output=false {
		var allowed = getSystemSetting( "website_users", "allow_remember_me", true );
		return IsBoolean( allowed ) && allowed;
	}

	private boolean function _getRememberMeExpiry() output=false {
		return getSystemSetting( "website_users", "remember_me_expiry", 90 );
	}

	private boolean function _isDirectLoginPageRequest( event ) {
		var currentUrl = event.getSiteUrl() & event.getCurrentUrl( includeQueryString=false );
		var loginPage  = event.buildLink( page="login" );

		return currentUrl == loginPage;
	}

}