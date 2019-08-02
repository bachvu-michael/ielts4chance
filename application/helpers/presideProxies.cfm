<cffunction name="renderLinkOnly" access="public" returntype="any" output="false">
	<cfargument name="id" type="string" required="true" />
	<cfreturn getController().renderViewlet( event="renderers.linkonly.default", args=arguments ) />
</cffunction>