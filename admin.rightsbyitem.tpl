<!-- BEGIN: MAIN -->
		
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
		<h3>{PHP.L.Rights}</h3>	
			<form name="saverightsbyitem" id="saverightsbyitem" action="{ADMIN_RIGHTSBYITEM_FORM_URL}" method="post" class="ajax">
				<table class="cells">
					<tr>
						<td class="coltop width5"></td>
						<td class="coltop width15">{PHP.L.Groups}</td>
						<td class="coltop">{PHP.R.admin_icon_auth_r}</td>
						<td class="coltop">{PHP.R.admin_icon_auth_w}</td>
						
						<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' --><td class="coltop">{PHP.R.admin_icon_auth_1}</td><!-- ENDIF -->
						<!-- IF {PHP.advanced} -->
						<td class="coltop">{PHP.R.admin_icon_auth_2}</td>
						<td class="coltop">{PHP.R.admin_icon_auth_3}</td>
						<td class="coltop">{PHP.R.admin_icon_auth_4}</td>
						<td class="coltop">{PHP.R.admin_icon_auth_5}</td>
						<!-- ENDIF -->
						<td class="coltop">{PHP.R.admin_icon_auth_a}</td>
						<td class="coltop width25">{PHP.L.Open}</td>
						<td class="coltop width15">{PHP.L.adm_setby}</td>
					</tr>
<!-- BEGIN: RIGHTSBYITEM_ROW -->
					<tr>
						<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/users.png"/></td>
						<td><a href="{ADMIN_RIGHTSBYITEM_ROW_LINK}">{ADMIN_RIGHTSBYITEM_ROW_TITLE}</a></td>
<!-- BEGIN: ROW_ITEMS -->
						<td class="centerall">
							<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} --><input type="hidden" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}" value="1" />
							{PHP.R.admin_icon_discheck1}<!-- ENDIF -->
							<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->{PHP.R.admin_icon_discheck0}<!-- ENDIF -->
							<!-- IF !{PHP.out.tpl_rights_parseline_locked} --><input type="checkbox" class="checkbox" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}"{ADMIN_RIGHTSBYITEM_ROW_ITEMS_CHECKED}{ADMIN_RIGHTSBYITEM_ROW_ITEMS_DISABLED} /><!-- ENDIF -->
						</td>
<!-- END: ROW_ITEMS -->
						<td class="centerall">
							<a title="{PHP.L.Edit}" href="{ADMIN_RIGHTSBYITEM_ROW_JUMPTO}" class="button special icon list">{PHP.L.Edit}</a>
							<a title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_JUMPTO}" class="button special icon export">{PHP.L.Open}</a>
							<a title="{PHP.L.Rights}" href="{ADMIN_RIGHTSBYITEM_ROW_LINK}" class="button icon lock">{PHP.L.Rights}</a> </td>
						<td class="textcenter">{ADMIN_RIGHTSBYITEM_ROW_USER}{ADMIN_RIGHTSBYITEM_ROW_PRESERVE}</td>
						
					</tr>
<!-- END: RIGHTSBYITEM_ROW -->
			
				</table>
				<div class="action_bar valid">
					<button type="submit" class="submit">{PHP.L.Update}</button>
					<!-- IF {ADMIN_RIGHTSBYITEM_4ADV_COLUMNS} < 12 -->
						<a href="{ADMIN_RIGHTSBYITEM_ADVANCED_URL}" class="button">{PHP.L.More}</a>
					<!-- ENDIF -->
				</div>
			</form>
		</div>
<!-- END: MAIN -->

<!-- BEGIN: RIGHTSBYITEM_HELP -->
		<p>{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}</p>
		<p>{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}</p>
		<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' --><p>{PHP.R.admin_icon_auth_1}&nbsp; {PHP.l_custom1}</p><!-- ENDIF -->
		<!-- IF {PHP.advanced} --><p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
		<p>{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3</p>
		<p>{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4</p>
		<p>{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5</p><!-- ENDIF -->
		<p>{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}</p>
<!-- END: RIGHTSBYITEM_HELP -->