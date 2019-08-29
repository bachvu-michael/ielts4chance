 /**
 * @labelField code
 * @datamanagerGridFields code,title,price,description
 * @dataManagerGroup products
 */
component {
	property name="code" 				type="string" 		dbtype ="varchar" 			maxLength=50 				required="true";
	property name="title" 				type="string" 		dbtype ="varchar" 			maxLength=200 				required="true";
	property name="description"			type="string" 		dbtype ="varchar" 			maxLength=3000;
    property name="image"				type="string" 		dbtype ="varchar" 			control="assetPicker" allowedTypes="image" multiple="false" required="false";
	property name="price" 				type="string" 		dbtype ="varchar" 			maxLength=200 				required="true";
	property name="time"				type="string" 		dbtype ="varchar" 			maxLength=200 				required="true";
}