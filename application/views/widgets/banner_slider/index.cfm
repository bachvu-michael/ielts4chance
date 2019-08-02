
<cfparam name="args.items" default="" />
<cfoutput>
	<section class="home-slider owl-carousel">
		#renderView(
			view          = "/widgets/banner_slider/_item"
		  , presideObject = "widget_banner_slider_item"
		  , filter        = { id=listToArray( args.items ) }
		  , orderBy       = "FIELD( id, #listqualify( args.items, "'" )# )"
		)#
    </section>
</cfoutput>
