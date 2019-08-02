<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->
<cfparam name="args.items" default="" />
<cfoutput>
	<section class="ftco-services ftco-no-pb">
        <div class="container-wrap">
			<div class="row no-gutters">
				<cfif !isEmpty(args.items)>
					#renderView(
						view          = "/widgets/special_4_column/_item"
					  , presideObject = "widget_special_4_item"
					  , filter        = { id=listToArray( args.items ) }
					  , orderBy       = "FIELD( id, #listqualify( args.items, "'" )# )"
					)#
				</cfif>
            </div>
        </div>
    </section>
</cfoutput>