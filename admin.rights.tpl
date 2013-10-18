<!-- BEGIN: MAIN -->
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<form name="saverights" id="saverights" action="{ADMIN_RIGHTS_FORM_URL}" method="post" class="ajax">
			<!-- IF {PHP.g} > 5 -->
			<div class="block">
				<div class="padding10"> 
				<input type="checkbox" class="checkbox" name="ncopyrightsconf" />{PHP.L.adm_copyrightsfrom}: {ADMIN_RIGHTS_SELECTBOX_GROUPS}
				</div>
				<div class="action_bar valid">
					<button type="submit" class="submit">{PHP.L.Update}</button>
				</div>
			</div>
			<!-- ENDIF -->
<!-- BEGIN: RIGHTS_SECTION -->
			<div class="block">
			<h3>{RIGHTS_SECTION_TITLE}:</h3>
			<table class="cells">
				<tr>
					<td class="coltop width5"></td>
					<td class="coltop width25">{PHP.L.Section}</td>
					<td class="coltop">{PHP.R.admin_icon_auth_r}</td>
					<td class="coltop">{PHP.R.admin_icon_auth_w}</td>
					<td class="coltop">{PHP.R.admin_icon_auth_1}</td>
					<!-- IF {PHP.advanced} -->
					<td class="coltop">{PHP.R.admin_icon_auth_2}</td>
					<td class="coltop">{PHP.R.admin_icon_auth_3}</td>
					<td class="coltop">{PHP.R.admin_icon_auth_4}</td>
					<td class="coltop">{PHP.R.admin_icon_auth_5}</td>
					<!-- ENDIF -->
					<td class="coltop">{PHP.R.admin_icon_auth_a}</td>					
					<td class="coltop width15">{PHP.L.adm_rightspergroup}</td>
					<td class="coltop width15">{PHP.L.adm_setby}</td>
				</tr>
<!-- BEGIN: RIGHTS_ROW -->
				<tr>
					<td class="centerall">					
					<!-- IF {ADMIN_RIGHTS_ROW_ICO} --> 
					<img src="{ADMIN_RIGHTS_ROW_ICO}"/>
					<!-- ELSE -->
					<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
					<!-- ENDIF -->
					</td>
					<td>{ADMIN_RIGHTS_ROW_TITLE}</td>
<!-- BEGIN: RIGHTS_ROW_ITEMS -->
					<td class="centerall">
						<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} -->
						<input type="hidden" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" value="1" />
						{PHP.R.admin_icon_discheck1}
						<!-- ENDIF -->
						<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->
						{PHP.R.admin_icon_discheck0}
						<!-- ENDIF -->
						<!-- IF !{PHP.out.tpl_rights_parseline_locked} -->
						<input type="checkbox" class="checkbox" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}"{ADMIN_RIGHTS_ROW_ITEMS_CHECKED}{ADMIN_RIGHTS_ROW_ITEMS_DISABLED} />
						<!-- ENDIF -->
					</td>
<!-- END: RIGHTS_ROW_ITEMS -->
					<td class="centerall">			
						<a title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_LINK}" class="button special icon export">{PHP.L.Open}</a>
						<a title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_RIGHTSBYITEM}" class="button icon lock">{PHP.L.Rights}</a>
					</td>
					<td class="textcenter">{ADMIN_RIGHTS_ROW_USER}{ADMIN_RIGHTS_ROW_PRESERVE}</td>
				</tr>
<!-- END: RIGHTS_ROW -->
			</table>
				<div class="action_bar valid">
					<button type="submit" class="submit">{PHP.L.Update}</button>
					<a href="{ADMIN_RIGHTS_ADVANCED_URL}" class="button">{PHP.L.More}</a>
				</div>
			</div>
<!-- END: RIGHTS_SECTION -->
		</form>
<!-- END: MAIN -->

<!-- BEGIN: RIGHTS_HELP -->
		<p>{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}</p>
		<p>{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}</p>
		<p>{PHP.R.admin_icon_auth_1}&nbsp; {PHP.L.Custom} #1</p>
		<!-- IF {PHP.advanced} --><p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
		<p>{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3</p>
		<p>{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4</p>
		<p>{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5</p><!-- ENDIF -->
		<p>{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}</p>
<!-- END: RIGHTS_HELP -->