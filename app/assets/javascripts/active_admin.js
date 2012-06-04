//= require active_admin/base

$(function(){
	tinyMCE.init({
  	mode : "textareas",
		plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,advlist",

		// Theme options
    theme_advanced_toolbar_location : "top",
    theme_advanced_buttons1 : "bold,italic,underline,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,outdent,indent,separator,undo,redo",
    theme_advanced_buttons2 : "",
    theme_advanced_buttons3 : "",
	});
})