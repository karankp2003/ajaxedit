// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


 $(document).ready(function() {
     $('p.ocean_name').editable($('p.ocean_name').attr('name') + '.js',{
     	method : 'PUT',
     	type : 'textarea',
     	submit : 'Ok',
     	name : 'ocean[name]'
     });
     return false;
 });