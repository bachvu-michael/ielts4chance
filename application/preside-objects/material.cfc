
 /**
 * @labelField code
 * @datamanagerGridFields code,title,type,description
 * @dataManagerGroup products
 */
component  {
	property name="code" 				type="string" 		dbtype ="varchar" 			maxLength=50 				required="true";
	property name="title" 				type="string" 		dbtype ="varchar" 			maxLength=200 				required="true";
	property name="type" 				type="string" 		dbtype ="varchar" 		    control="select"  values="fa-file-word,fa-file-pdf,fa-file-audio" labels="doc,pdf,mp3"  default="doc" required="true";
	property name="link" 				type="string" 		dbtype ="varchar" 			control="linkPicker" 				required="true";
	property name="description"			type="string" 		dbtype ="varchar" 			maxLength=3000;
    property name="image"				type="string" 		dbtype ="varchar" 			control="assetPicker" allowedTypes="image" multiple="false" required="false";
}