<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->
<cfparam name="args.title_1" default="" />
<cfparam name="args.title_2" default="" />
<cfparam name="args.sub_title" default="" />
<cfparam name="args.background_color" default="##ffffff" />
<cfparam name="args.materials" default="" />
<cfoutput>
	<style>
		.pricing-entry .img{
			height: 240px;
		}
		.pricing-entry .box-text{
			background-color:##033ca5;
			color:##fff;
		}
		.pricing-entry .box-text:hover{
			background-color:##a60300;
		}
		.pricing-entry .box-text h2{
			color:##fff;
		}
		.pricing-entry{
		   border: 1px ##033ca5 solid;
		}
	</style>
    <section class="ftco-section py-3">
    	<div class="py-3" style="background-color:#args.background_color#;">
    		<div class="row justify-content-center pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
            <h2 class="mb-1"><span>#args.title_1#</span> #args.title_2#</h2>
            <p>#args.sub_title#</p>
          </div>
		</div>
		<div class="container">
			<div class="row">
				<cfif !isEmpty(args.materials)>
					#renderView(
						view          = "/widgets/material/_item"
					  , presideObject = "material"
					  , filter        = { id=listToArray( args.materials ) }
					  , orderBy       = "FIELD( id, #listqualify( args.materials, "'" )# )"
					)#
				</cfif>				
			</div>
		</div>
    	</div>
    </section>

</cfoutput>