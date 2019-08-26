
 /**
 * @labelField code
 * @datamanagerGridFields name,price,short_description,start_time
 * @dataManagerGroup products
 */
component  {
	property name="code" 				type="string" 		dbtype ="varchar" 			maxLength=50 				required="true";
	property name="name" 				type="string" 		dbtype ="varchar" 			maxLength=200 				required="true";
	property name="price" 				type= "numeric" 	dbtype = "int" 				minValue = 0 default = 0  	required="true";
	property name="short_description" 	type="string" 		dbtype ="varchar" 			maxLength=1000;
	property name="description"			type="string" 		dbtype ="varchar" 			maxLength=3000;
	property name="image"				type="string" 		dbtype ="varchar" 			control="assetPicker" allowedTypes="image" multiple="false" required="true";
	property name="start_time" 			type="string" 		dbtype ="varchar" 			control="datePicker" required="true";
	property name="teacher" 			type="string" 		dbtype ="varchar" 			maxLength=200;
	property name="student"     		relationship="many-to-many" relatedTo="website_user" sortable=true;
}