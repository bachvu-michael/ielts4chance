
<cfparam name="args.items" default="" />
<cfparam name="args.title_1" default="" />
<cfparam name="args.title_2" default="" />
<cfparam name="args.sub_title" default="" />
<cfoutput>
	<section class="ftco-section testimony-section bg-light">
		<div class="container">
		  <div class="row justify-content-center mb-5 pb-2">
			<div class="col-md-8 text-center heading-section ftco-animate">
			  <h2 class="mb-4"><span>#args.title_1#</span> #args.title_2#</h2>
			  <p>#args.sub_title#</p>
			</div>
		  </div>
		  <div class="row ftco-animate justify-content-center">
			<div class="col-md-12">
			  <div class="carousel-testimony owl-carousel">
				<cfif !isEmpty(args.items)>
					#renderView(
						view          = "/widgets/comment/_item"
					  , presideObject = "comment_item"
					  , filter        = { id=listToArray( args.items ) }
					  , orderBy       = "FIELD( id, #listqualify( args.items, "'" )# )"
					)#
				</cfif>
			  </div>
			</div>
		  </div>
		</div>
	</section>
</cfoutput>
