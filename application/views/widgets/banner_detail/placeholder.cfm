<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. The purpose of this file is to render the placeholder content
	for the banner_detail widget.
	Please fill with meaningful content and remove this comment
--->
<cfparam name="args.title" default="" />
<cfparam name="args.subtitle" default="" />
<cfparam name="args.image" default="" />


<cfoutput>#translateResource( uri='widgets.banner_detail:title' )#</cfoutput>