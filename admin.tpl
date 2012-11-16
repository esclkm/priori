<!-- BEGIN: MAIN -->
<div id="ajaxBlock">
	<!-- BEGIN: BODY -->
	<div id="header"><div class="body"><h1>{ADMIN_TITLE}</h1></div></div>

	<div id="main" class="body clear<!-- IF {PHP.m} --> mode_{PHP.m}<!-- ENDIF -->">

		{ADMIN_MAIN}

		<!-- IF {ADMIN_HELP} -->
		<div class="help">
			<h4>{PHP.L.Help}:</h4>
			<p>{ADMIN_HELP}</p>
		</div>
		<!-- ENDIF -->
	</div>
	<!-- END: BODY -->
</div>
<!-- END: MAIN -->