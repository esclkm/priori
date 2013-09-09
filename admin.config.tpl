<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: EDIT -->
{ADMIN_CONFIG_EDIT_CUSTOM}
<div class="block">
	<form name="saveconfig" id="saveconfig" action="{ADMIN_CONFIG_FORM_URL}" method="post" class="ajax">
		<table class="cells">
			<tr>
				<td class="coltop width250px">{PHP.L.Key}</td>
				<td class="coltop">{PHP.L.Value}</td>
				<td class="coltop width5">{PHP.L.Reset}</td>
			</tr>
			<!-- BEGIN: ADMIN_CONFIG_ROW -->
			<!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
			<tr>
				<td class="group_begin" colspan="3">
					<h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
				</td>
			</tr>
			<!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
			<!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
			<tr>
				<td><span title="
						<!-- IF {PHP.config_owner} == 'module'-->&#123;PHP.cfg.{PHP.config_cat}.{PHP.config_name}&#125;<!-- ENDIF-->
						<!-- IF {PHP.config_owner} == 'plug'-->&#123;PHP.cfg.plugin.{PHP.config_cat}.{PHP.config_name}&#125;<!-- ENDIF-->
						<!-- IF {PHP.config_owner} == 'core'-->&#123;PHP.cfg.{PHP.config_name}&#125;<!-- ENDIF-->
						">{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</span></td>
				<td>
					{ADMIN_CONFIG_ROW_CONFIG}
					<div class="adminconfigmore">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
				</td>
				<td class="centerall">
					<a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="ajax button cycle icon">{PHP.L.Reset}</a>
				</td>
			</tr>
			<!-- END: ADMIN_CONFIG_ROW_OPTION -->
			<!-- END: ADMIN_CONFIG_ROW -->
		</table>
		<div class="action_bar valid"><input type="submit" class="submit" value="{PHP.L.Update}" /></div>
	</form>
</div>
<!-- END: EDIT -->
<!-- BEGIN: DEFAULT -->

<!-- BEGIN: ADMIN_CONFIG_COL -->

<div class="block clear">
	<h3>{ADMIN_CONFIG_COL_CAPTION}:</h3>
	<!-- BEGIN: ADMIN_CONFIG_ROW -->
	<a href="{ADMIN_CONFIG_ROW_URL}" class="ajax thumbicons">
		<!-- IF {ADMIN_CONFIG_ROW_ICO} --> 
		<img src="{ADMIN_CONFIG_ROW_ICO}"/>
		<!-- ELSE -->
		<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
		<!-- ENDIF -->
		{ADMIN_CONFIG_ROW_NAME}
	</a>
	<!-- END: ADMIN_CONFIG_ROW -->
<div class="clear height0"></div>
</div>
<!-- END: ADMIN_CONFIG_COL -->

<!-- END: DEFAULT -->

<!-- END: MAIN -->