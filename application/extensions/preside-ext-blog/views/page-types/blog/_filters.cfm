<cfparam name="args.blogId" />
<cfparam name="args.authors" />
<cfparam name="args.archives" />
<cfparam name="args.tags" />

<cfif !isEmpty( args.authors ) || !isEmpty( args.archives ) || !isEmpty( args.tags )>
    <cfoutput>
        <div class="filter-tags tagcloud">
            <!--- TODO: i18n --->
            <span class="filter-tags-label">Showing result for</span>
            <cfloop query="args.authors">
                <cfset link = event.buildLink( page=args.blogId, querystring="filterAction=remove&filterType=authors&filterValue=" & id ) />
                <a href="#link#" class="filter-tags-item tag-cloud-link">#name#<i class="far fa-times-circle pl-2"></i></a>
            </cfloop>
            <cfloop query="args.archives">
                <cfset link = event.buildLink( page=args.blogId, querystring="filterAction=remove&filterType=archives&filterValue=" & key ) />
                <a  class="filter-tags-item tag-cloud-link" href="#link#">#label#<i class="far fa-times-circle pl-2"></i></a>
            </cfloop>
            <cfloop query="args.tags">
                <cfset link = event.buildLink( page=args.blogId, querystring="filterAction=remove&filterType=tags&filterValue=" & id ) />
                <a  class="filter-tags-item tag-cloud-link" href="#link#">#label#<i class="far fa-times-circle pl-2"></i></a>
            </cfloop>
        </div>
    </cfoutput>
</cfif>