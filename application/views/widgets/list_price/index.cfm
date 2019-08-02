<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->
<cfparam name="args.title_1" default="" />
<cfparam name="args.title_2" default="" />
<cfparam name="args.description" default="" />
<cfparam name="args.items" default="" />
<cfoutput>
	<section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-2">
                <div class="col-md-8 text-center heading-section ftco-animate">
                    <h2 class="mb-4"><span>#args.title_1#</span> #args.title_2#</h2>
                    <p>#args.description#</p>
                </div>
            </div>
			<div class="row">
				<cfif !isEmpty(args.items)>
					#renderView(
						view          = "/widgets/list_price/_item"
					  , presideObject = "widget_list_price_item"
					  , filter        = { id=listToArray( args.items ) }
					  , orderBy       = "FIELD( id, #listqualify( args.items, "'" )# )"
					)#
				</cfif>    
            </div>
        </div>
    </section>
</cfoutput>