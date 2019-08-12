<cfscript>
	menuItems = args.menuItems ?: [];
	home = args.home ?: "home";
</cfscript>
<cfoutput>
	<li class="nav-item">
		<a href="/" class="nav-link">#args.home.title#</a>
	</li>
	<cfloop array="#menuItems#" index="menuItem">
		<cfset menuItemClass = "site-head-nav-dropdown" />
		<cfif menuItem.active>
			<cfset menuItemClass &= " active" />
		</cfif>
		<li class="nav-item #menuItemClass#">
			<a href="#event.buildLink( page=menuItem.id )#" class="nav-link">#menuItem.title#</a>
		</li>
	</cfloop>
</cfoutput>