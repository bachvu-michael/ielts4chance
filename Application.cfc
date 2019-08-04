component extends="preside.system.Bootstrap" {
	
	super.setupApplication( id = "ielts4chane" );
	function onError() { dump( arguments ); abort; }

}
