component extends="preside.system.config.Config" {

	public void function configure() {
		super.configure();
		
		settings.autoSyncDb = true;
		settings.preside_admin_path  = "admin";
		settings.system_users        = "sysadmin";
		settings.default_locale      = "en";

		settings.default_log_name    = "ielts4chane";
		settings.default_log_level   = "information";
		settings.sql_log_name        = "ielts4chane";
		settings.sql_log_level       = "information";

		settings.ckeditor.defaults.stylesheets.append( "css-core-google-font" );
		settings.ckeditor.defaults.stylesheets.append( "css-core-bootstrap"   );
		settings.ckeditor.defaults.stylesheets.append( "/css/core/" 		  );

		settings.features.websiteUsers.enabled = true;
	}

	private struct function _getConfiguredAssetDerivatives() {
		var derivatives  = super._getConfiguredAssetDerivatives();

		derivatives.headerLogo = {
			permissions = "inherit"
			, transformations = [
				  { method="Resize", args={ height=100, maintainaspectratio=true } }
			  ]
		};
		derivatives.400x425 = {
			permissions = "inherit"
			, transformations = [
					{ method="Resize", args={ width=400, height=425, maintainaspectratio=true } }
				]
		};
		derivatives.400x450 = {
			permissions = "inherit"
			, transformations = [
					{ method="Resize", args={ width=400, height=450, maintainaspectratio=true } }
				]
		};
		derivatives.400x250 = {
			permissions = "inherit"
			, transformations = [
					{ method="Resize", args={ width=400, height=250, maintainaspectratio=true } }
				]
		};
		derivatives.400x400 = {
			permissions = "inherit"
			, transformations = [
					{ method="Resize", args={ width=400, height=400, maintainaspectratio=true } }
				]
		};
		

		return derivatives;
	}
}
