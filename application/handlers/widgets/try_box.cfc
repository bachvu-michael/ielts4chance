component {
	private function index( event, rc, prc, args={} ) {
		// TODO: create your handler logic here
		return renderView( view='widgets/try_box/index', args=args );
	}

	private function placeholder( event, rc, prc, args={} ) {
		// TODO: create your handler logic here
		return renderView( view='widgets/try_box/placeholder', args=args );
	}
}
