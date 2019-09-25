/**
 * The login page type object is used to store any fields that are distinct to the system page type 'login'
 *
 * @isSystemPageType true
 * @parentSystemPageType login
 * @pagetypeViewlet  login.registerPage
 * @feature          websiteUsers
 */

component extends="preside.system.base.SystemPresideObject" displayName="Page type: Register" {
    property name="LoginId" 			type="string" 		dbtype ="varchar" 			maxLength=100 				required="false";
	property name="email" 				type="string" 		dbtype ="varchar" 			maxLength=100 				required="false";
	property name="fullName" 			type="string" 		dbtype ="varchar" 			maxLength=200 				required="false";
    property name="address" 			type="string" 		dbtype ="varchar" 			maxLength=300 				required="false";
    
}