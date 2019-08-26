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
 * @dataManagerGroup sitewide
 * @labelField title
 */
component  {
	property name="icon" control="select" default="flaticon-kids" values="flaticon-kids,flaticon-jigsaw,flaticon-education,flaticon-security,flaticon-reading,flaticon-teacher,flaticon-books,flaticon-diploma";
	property name="background" default="##000000" control="SimpleColourPicker" colours="f1453d|5d50c6|8cc152|1eaaf1|ffffff|f7f7f7|cce5ff|e2e3e5|d4edda|f8d7da|fff3cd|d1ecf1|d6d8d9|8db9df|EAF2FF|ffd8d0|c7ecc7|ffa6ff|ffdcae|8cff8c|ffa0b4|ffe38f|d3d3d3|b2ffb2|9999cc|ff9999|ffcccc|7fbf7f";
	property name="title" type="string" dbtype="varchar" maxLength=200;
	property name="subtitle"  type="string" dbtype="varchar" maxLength=200;
}
