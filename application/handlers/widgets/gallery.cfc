component {
	private function index( event, rc, prc, args={} ) {
		// TODO: create your handler logic here
		return renderView( view='widgets/gallery/index', args=args );
	}

	private function placeholder( event, rc, prc, args={} ) {
		// TODO: create your handler logic here
		return renderView( view='widgets/gallery/placeholder', args=args );
	}
}
