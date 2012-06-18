<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<!-- BEGIN: CONFIG_URL -->
<ul>
	<li><a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_CONFIG_URL}">{PHP.L.Configuration}: {PHP.R.admin_icon_config}</a></li>
</ul>
<!-- END: CONFIG_URL -->
<!-- BEGIN: DETAILS -->

<div class="">



</div>

<div class="block">
	<h3>{PHP.L.adm_infos}</h3>
	<div class="icon_panel">
		<!-- IF {ADMIN_EXTENSIONS_ICO} --> 
		<img src="{ADMIN_EXTENSIONS_ICO}" />
		<!-- ELSE -->
		<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"  />
		<!-- ENDIF -->
	</div>
	<div class="extension_info">
	<ul class="table">
		<li>
			<span>{PHP.L.Name}:</span>
			{ADMIN_EXTENSIONS_NAME}
		</li>	
		<li>
			<span>{PHP.L.Code}:</span>
			{ADMIN_EXTENSIONS_CODE}
		</li>
		<li>
			<span>{PHP.L.Description}:</span>
			{ADMIN_EXTENSIONS_DESCRIPTION}
		</li>
		<li>
			<span>{PHP.L.Version}:</span>
			
				<!-- IF {PHP.isinstalled} AND {ADMIN_EXTENSIONS_VERSION} > {ADMIN_EXTENSIONS_VERSION_INSTALLED} -->
				<span class="highlight_red">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> / <span class="highlight_green">{ADMIN_EXTENSIONS_VERSION}</span>
				<!-- ELSE -->
				{ADMIN_EXTENSIONS_VERSION}
				<!-- ENDIF -->
			
		</li>
		<li>
			<span>{PHP.L.Date}:</span>
			{ADMIN_EXTENSIONS_DATE}
		</li>
		<!--//<tr>
			<td>{PHP.L.adm_defauth_guests}:</td>
			<td>{ADMIN_EXTENSIONS_ADMRIGHTS_AUTH_GUESTS} ({ADMIN_EXTENSIONS_AUTH_GUESTS})</td>
		</tr>
		<tr>
			<td>{PHP.L.adm_deflock_guests}:</td>
			<td>{ADMIN_EXTENSIONS_ADMRIGHTS_LOCK_GUESTS} ({ADMIN_EXTENSIONS_LOCK_GUESTS})</td>
		</tr>
		<tr>
			<td>{PHP.L.adm_defauth_members}:</td>
			<td>{ADMIN_EXTENSIONS_ADMRIGHTS_AUTH_MEMBERS} ({ADMIN_EXTENSIONS_AUTH_MEMBERS})</td>
		</tr>
		<tr>
			<td>{PHP.L.adm_deflock_members}:</td>
			<td>{ADMIN_EXTENSIONS_ADMRIGHTS_LOCK_MEMBERS} ({ADMIN_EXTENSIONS_LOCK_MEMBERS})</td>
		</tr>//-->
		<li>
			<span>{PHP.L.Author}:</span>
			{ADMIN_EXTENSIONS_AUTHOR}
		</li>
		<li>
			<span>{PHP.L.Copyright}:</span>
			{ADMIN_EXTENSIONS_COPYRIGHT}
		</li>
		<li>
			<span>{PHP.L.Notes}:</span>
			{ADMIN_EXTENSIONS_NOTES}
		</li>
		<!-- BEGIN: DEPENDENCIES -->
		<li>
			<span>{ADMIN_EXTENSIONS_DEPENDENCIES_TITLE}:</span>
			
				<ul>
					<!-- BEGIN: DEPENDENCIES_ROW -->
					<li>
						<a href="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_URL}" class="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS}">{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_NAME}</a>
					</li>
					<!-- END: DEPENDENCIES_ROW -->
				</ul>
		</li>
		<!-- END: DEPENDENCIES -->
	</ul>
	</div>
	<div class="action_bar clear">
			<!-- IF !{PHP.isinstalled} AND {PHP.dependencies_satisfied} -->

	<a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_INSTALL_URL}" class="ajax button special positive">
<span class="check icon"></span>
		{PHP.L.adm_opt_install}
	</a>
	<!-- ENDIF -->
	<!-- IF {PHP.isinstalled} -->
	<!-- IF {PHP.exists} -->

	<a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_UPDATE_URL}" class="ajax button special positive">
<span class="check icon"></span>
		{PHP.L.adm_opt_update}
	</a>
	<!-- ENDIF -->
	<a title="{PHP.L.adm_opt_uninstall_explain}" href="{ADMIN_EXTENSIONS_UNINSTALL_CONFIRM_URL|cot_confirm_url('$this', 'admin')}" class="confirmLink  negative button">
<span class="cross icon"></span>
		{PHP.L.adm_opt_uninstall}
	</a>
	<!-- ENDIF -->
	</div>
</div>
<!-- IF {PHP.isinstalled} AND {PHP.exists} -->
<div class="quick-actions">
		<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL} -->
		<a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="quick-action">
			<span class="file icon"><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/document.png"/></span>{PHP.L.Open}</a>
		<!-- ENDIF -->
		<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS} -->
		<a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="quick-action">
			<span class="admin icon"><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/flash.png"/></span>{PHP.L.Administration}</a>
		<!-- ENDIF -->
		<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} > 0 -->
		<a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_CONFIG_URL}" class="quick-action">
			<span class="cog icon"><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/settings.png"/></span>{PHP.L.Configuration} ({ADMIN_EXTENSIONS_TOTALCONFIG})</a>
		<!-- ENDIF -->	
		<a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS}" class="quick-action">
			<span class="lock icon"><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/lock.png"/></span>{PHP.L.short_rights}</a>
		<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT} -->
		<a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="quick-action">
			<span class="folder icon"><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/folder.png"/></span>{PHP.L.Structure}</a>
		<!-- ENDIF -->
</div>					
<!-- ENDIF -->


<div class="block">
	<h3>{PHP.L.Parts}:</h3>
	<table class="cells">
		<tr>
			<td class="coltop width5">#</td>
			<td class="coltop width15">{PHP.L.Part}</td>
			<td class="coltop width20">{PHP.L.File}</td>
			<td class="coltop width20">{PHP.L.Hooks}</td>
			<td class="coltop width10">{PHP.L.Order}</td>
			<td class="coltop width15">{PHP.L.Status}</td>
			<td class="coltop width15">{PHP.L.Action}</td>
		</tr>
		<!-- BEGIN: ROW_ERROR_PART -->
		<tr>
			<td colspan="3">{ADMIN_EXTENSIONS_DETAILS_ROW_X}</td>
			<td colspan="4">{ADMIN_EXTENSIONS_DETAILS_ROW_ERROR}</td>
		</tr>
		<!-- END: ROW_ERROR_PART -->
		<!-- BEGIN: ROW_PART -->
		<tr>
			<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
			<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
			<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</td>
			<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</td>
			<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_ORDER}</td>
			<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_STATUS}</td>
			<td class="centerall">
				<!-- BEGIN: ROW_PART_NOTINSTALLED -->
				&ndash;
				<!-- END: ROW_PART_NOTINSTALLED -->
				<!-- BEGIN: ROW_PART_PAUSE -->
				<a href="{ADMIN_EXTENSIONS_DETAILS_ROW_PAUSEPART_URL}" class="ajax button"><span class="icon stop"></span>{PHP.L.adm_opt_pause}</a>
				<!-- END: ROW_PART_PAUSE -->
				<!-- BEGIN: ROW_PART_UNPAUSE -->
				<a href="{ADMIN_EXTENSIONS_DETAILS_ROW_UNPAUSEPART_URL}" class="ajax button"><span class="icon play"></span>{PHP.L.adm_opt_unpause}</a>
				<!-- END: ROW_PART_UNPAUSE -->
			</td>
		</tr>
		<!-- END: ROW_PART -->
	</table>
	<div class="action_bar textright paddingright10">
	<!-- IF {PHP.isinstalled} -->
		<!-- IF {PHP.exists} -->
		<a title="{PHP.L.adm_opt_unpauseall_explain}" href="{ADMIN_EXTENSIONS_UNPAUSE_URL}" class="ajax button"><span class="icon play"></span>{PHP.L.adm_opt_unpauseall}</a>
		<!-- ENDIF -->
		<a title="{PHP.L.adm_opt_pauseall_explain}" href="{ADMIN_EXTENSIONS_PAUSE_URL}" class="ajax button"><span class="icon stop"></span>{PHP.L.adm_opt_pauseall}</a>
	<!-- ENDIF -->
	</div>
</div>
<div class="block">
	<h3>{PHP.L.Tags}:</h3>
	<table class="cells">
		<tr>
			<td class="coltop width5">#</td>
			<td class="coltop width25">{PHP.L.Part}</td>
			<td class="coltop width70">{PHP.L.Files} / {PHP.L.Tags}</td>
		</tr>
		<!-- BEGIN: ROW_ERROR_TAGS -->
		<tr>
			<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
			<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
			<td class="centerall">{PHP.L.None}</td>
		</tr>
		<!-- END: ROW_ERROR_TAGS -->
		<!-- BEGIN: ROW_TAGS -->
		<tr>
			<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
			<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
			<td>{ADMIN_EXTENSIONS_DETAILS_ROW_LISTTAGS}</td>
		</tr>
		<!-- END: ROW_TAGS -->
	</table>
</div>
<!-- END: DETAILS -->

<!-- BEGIN: HOOKS -->
<div class="block">
	<h3>{PHP.L.Hooks} ({ADMIN_EXTENSIONS_CNT_HOOK}):</h3>
	<table class="cells">
		<tr>
			<td class="coltop width40">{PHP.L.Hooks}</td>
			<td class="coltop width20">{PHP.L.Plugin}</td>
			<td class="coltop width20">{PHP.L.Order}</td>
			<td class="coltop width20">{PHP.L.Active}</td>
		</tr>
		<!-- BEGIN: HOOKS_ROW -->
		<tr>
			<td>{ADMIN_EXTENSIONS_HOOK}</td>
			<td>{ADMIN_EXTENSIONS_CODE}</td>
			<td class="centerall">{ADMIN_EXTENSIONS_ORDER}</td>
			<td class="centerall">{ADMIN_EXTENSIONS_ACTIVE}</td>
		</tr>
		<!-- END: HOOKS_ROW -->
	</table>
</div>
<!-- END: HOOKS -->

<!-- BEGIN: DEFAULT -->
<div class="quick-actions">

	<a href="{ADMIN_EXTENSIONS_SORT_ALP_URL}" class="quick-action <!-- IF {ADMIN_EXTENSIONS_SORT_ALP_SEL} -->special<!-- ENDIF -->">
		<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/sort_az.png"/></span>{PHP.L.adm_sort_alphabet}</a>
	<a href="{ADMIN_EXTENSIONS_SORT_CAT_URL}" class="quick-action <!-- IF {ADMIN_EXTENSIONS_SORT_CAT_SEL} -->special<!-- ENDIF -->">
		<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/folder_goto.png"/></span>{PHP.L.adm_sort_category}</a>
	<a href="{ADMIN_EXTENSIONS_HOOKS_URL}" class="quick-action">
		<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/flag.png"/></span>{PHP.L.Hooks}</a>
</div>

<!-- BEGIN: SECTION-->
<h2>{ADMIN_EXTENSIONS_SECTION_TITLE} ({ADMIN_EXTENSIONS_CNT_EXTP})</h2>
<div class="block">
	<table class="cells">
		<tr>
			<td class="coltop width5">&nbsp;</td>
			<td class="coltop width25">{PHP.L.Name} {PHP.L.adm_clicktoedit}</td>
			<td class="coltop width10">{PHP.L.Code}</td>
			<td class="coltop width10">{PHP.L.Version}</td>
			<td class="coltop width5">{PHP.L.Parts}</td>
			<td class="coltop width15">{PHP.L.Status}</td>
			<td class="coltop width30">{PHP.L.Action}</td>
		</tr>
		<!-- BEGIN: ROW -->
		<!-- BEGIN: ROW_CAT -->
		<tr>
			<td colspan="7">
				<h4>{ADMIN_EXTENSIONS_CAT_TITLE}</h4>
			</td>
		</tr>
		<!-- END: ROW_CAT -->
		<!-- BEGIN: ROW_ERROR_EXT-->
		<tr>
			<td>{ADMIN_EXTENSIONS_X_ERR}</td>
			<td colspan="5">{ADMIN_EXTENSIONS_ERROR_MSG}</td>
		</tr>
		<!-- END: ROW_ERROR_EXT -->
		<tr>
			<td class="centerall">
				<!-- IF {ADMIN_EXTENSIONS_ICO} --> 
				<img src="{ADMIN_EXTENSIONS_ICO}" />
				<!-- ELSE -->
				<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
				<!-- ENDIF -->
			</td>
			<td>
				<a href="{ADMIN_EXTENSIONS_DETAILS_URL}"><strong>{ADMIN_EXTENSIONS_NAME}</strong></a>
				<p class="small">{ADMIN_EXTENSIONS_DESCRIPTION|cot_cutstring($this,60)}</p>
			</td>
			<td>{ADMIN_EXTENSIONS_CODE_X}</td>
			<td>
				<!-- IF {PHP.part_status} != 3 AND {ADMIN_EXTENSIONS_VERSION} > {ADMIN_EXTENSIONS_VERSION_INSTALLED} -->
				<span class="highlight_red">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> / <span class="highlight_green">{ADMIN_EXTENSIONS_VERSION}</span>
				<!-- ELSE -->
				{ADMIN_EXTENSIONS_VERSION}
				<!-- ENDIF -->
			</td>
			<td class="centerall">{ADMIN_EXTENSIONS_PARTSCOUNT}</td>
			<td class="centerall">{ADMIN_EXTENSIONS_STATUS}</td>
			<td class="action">
				<div class="buttonpanel">
				<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} -->

				<a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_EDIT_URL}" class="button"><span class="cog icon"></span>{PHP.L.short_config}</a>
				<!-- ENDIF -->
				<!-- IF {PHP.ifstruct} -->
				<a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="button"><span class="folder icon"></span>{PHP.L.short_struct}</a>
				<!-- ENDIF -->
				<!-- IF {PHP.totalinstalled} -->
				<a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS_URL}" class="button"><span class="lock icon"></span>{PHP.L.short_rights}</a>
				<!-- ENDIF -->
				<!-- IF {PHP.ifthistools} -->
				<a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="button special"><span class="icon bolt"></span>{PHP.L.short_admin}</a>
				<!-- ENDIF -->
				<!-- IF {PHP.if_plg_standalone} -->
				<a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="button special"><span class="file icon"></span>{PHP.L.Open}</a>
				<!-- ENDIF -->
				</div>
			</td>
		</tr>
		<!-- END: ROW -->
		<!-- BEGIN: ROW_ERROR -->
		<tr>
			<td>{ADMIN_EXTENSIONS_X}</td>
			<td colspan="5">{PHP.L.adm_opt_setup_missing}</td>
		</tr>
		<!-- END: ROW_ERROR -->
	</table>
</div>
<!-- END: SECTION -->

<!-- END: DEFAULT -->
<!-- BEGIN: EDIT -->
<h2>{ADMIN_EXTENSIONS_EDIT_TITLE}</h2>
<div class="block">
	<div class="{ADMIN_EXTENSIONS_EDIT_RESULT}">
		{ADMIN_EXTENSIONS_EDIT_LOG}
	</div>
</div>
<div class="block button-toolbar">
	<a href="{ADMIN_EXTENSIONS_EDIT_CONTINUE_URL}" class="ajax button special large">{PHP.L.Clickhere}</a>
</div>
<!-- END: EDIT -->
<!-- END: MAIN -->