<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->
<cfparam name="args.title_1" default="" />
<cfparam name="args.title_2" default="" />
<cfparam name="args.sub_title" default="" />
<cfparam name="args.background_color" default="##ffffff" />
<cfparam name="args.offline_course" default="" />
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
	</style>
    <section class="ftco-section py-3">
    	<div class="py-3 mx-3" style="background-color:#args.background_color#;">
    		<div class="row justify-content-center pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
            <h2 class="mb-1"><span>#args.title_1#</span> #args.title_2#</h2>
            <p>#args.sub_title#</p>
          </div>
		</div>
		<div class="container">
			<div class="row">
				<cfif !isEmpty(args.offline_course)>
					#renderView(
						view          = "/widgets/widget_offline_course_list/_item"
					  , presideObject = "offline_course"
					  , filter        = { id=listToArray( args.offline_course ) }
					  , orderBy       = "FIELD( id, #listqualify( args.offline_course, "'" )# )"
					)#
				</cfif>				
			</div>
		</div>
    	</div>
    </section>
</cfoutput>