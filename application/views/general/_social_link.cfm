<cfparam name="args.link" default="" />
<cfparam name="args.type" default="" />
<cfoutput>
	<cfif !IsEmpty( args.link )>
		<li class="ftco-animate">#renderLink( id=args.link, body="<span class='icon-#args.type#''></span>" )#</li>
	</cfif>
</cfoutput>