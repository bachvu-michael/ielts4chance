component {

	property name="presideObjectService" inject="PresideObjectService";

	public boolean function contactForm( event, rc, prc ) {
		if(!isEmpty(rc.email) && !isEmpty(rc.name) && !isEmpty(rc.message) && !isEmpty(rc.phone) ){
			newId = presideObjectService.insertData(
				objectName = "request_quote"
				, data           = {
					name = rc.name,
					email = rc.email,
					phone = rc.phone,
					message = rc.message
				}
			);
			return true;
		}
        return false;
	}

}