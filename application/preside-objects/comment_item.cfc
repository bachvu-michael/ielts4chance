

/**
 * @dataManagerGroup sitewide
 * @labelField title
 */
component  {
	property name="title" type="string" dbtype="varchar" maxLength=200;
	property name="sub_title" type="string" dbtype="varchar" maxLength=100;
	property name="description" 	type="string" dbtype="varchar" maxLength=400;
	property name="image" type="string" dbtype="varchar" control="assetPicker"  required="true";
}