
<cfparam name="args.items" default="" />
<cfparam name="args.video_link" default="" />
<cfoutput>

	<section class="banner-custom">
		<div class="container-fulid banner-wraper">
			<div class="col-md-6 banner-video">
				<iframe width="650" height="400" src="#args.video_link#" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-md-6 offset-md-6 banner-slider">
				<div class="home-slider owl-carousel">
					#renderView(
						view          = "/widgets/banner_slider/_item"
					  , presideObject = "widget_banner_slider_item"
					  , filter        = { id=listToArray( args.items ) }
					  , orderBy       = "FIELD( id, #listqualify( args.items, "'" )# )"
					)#
				</div>
			</div>
		</div>
    </section>
</cfoutput>
