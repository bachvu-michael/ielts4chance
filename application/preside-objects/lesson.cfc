/*
 * This preside object has been scaffolded by the Preside dev tools scaffolder
 *
 * For speed of scaffolding, we have just created all your properties with the default
 * settings. You will almost certainly want to define your properties in more detail
 * here. Some examples:
 *
 * property name="myTextField" type="string" dbtype="varchar" maxLength=200 required=true uniqueindexes="myUX|2";
 * property name="myFlag" type="boolean" dbtype="boolean" required=false default=false;
 * property name="somecategory" relationship="many-to-one" relatedto="some_category_object" required=true uniqueindexes="myUX|1;
 *
 * You should remove this comment once you are done with it.
 */
/**
 * @labelField code
 * @datamanagerGridFields name,price,short_description,start_time
 * @dataManagerGroup products
 */
component dataManagerGroup="products" {
    property name="code" 				type="string" 		dbtype ="varchar" 			maxLength=50 				required="true";
	property name="name" 				type="string" 		dbtype ="varchar" 			maxLength=200 				required="true";
	property name="short_description" 	type="string" 		dbtype ="varchar" 			maxLength=1000;
	property name="description"			type="string" 		dbtype ="varchar" 			maxLength=3000;
    property name="video"				required="true";
	property name="course" 		relationship="many-to-one"	relatedto="course" quickadd="true" quickedit="true" required="true";
}