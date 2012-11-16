<!-- BEGIN: MAIN -->
<!-- IF !{AJAX_MODE} -->
<div id="header">
<div class="body">
<h1>{MESSAGE_TITLE}</h1>
</div>
</div>
<div id="main" class="body clear">
<!-- ENDIF -->
	<div class="warning">
					{MESSAGE_BODY}
		<!-- BEGIN: MESSAGE_CONFIRM -->
		<div class="messagebox">
		<div class="messagebutton">
			<a class="button icon check" id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="confirmButton">{PHP.L.Yes}</a>
		</div>
		<div class="messagebutton">
			<a class="button icon cross"id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="confirmButton">{PHP.L.No}</a>
		</div>
		</div>
		<!-- END: MESSAGE_CONFIRM -->
	</div>
<!-- IF !{AJAX_MODE} -->
</div>
<!-- ENDIF -->
<!-- END: MAIN -->