component {

	property name="linkDao"      inject="presidecms:object:link";
	property name="pageDao"      inject="presidecms:object:page";
	property name="linksService" inject="linksService";


// VIEWLETS
	private string function default( event, rc, prc, args={} ) {
		var link = linkDao.selectData( id=args.id ?: "" );
		if ( !link.recordCount ) {
			return "<!-- link not found -->";
		}

		href  = linksService.getLinkUrl( link.id );


		return href;
	}
}