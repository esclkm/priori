<!-- BEGIN: LIST -->
<div class="block">
	<h3>{PHP.L.Structure}</h3>
	<!-- BEGIN: ADMIN_STRUCTURE_EXT -->
	<a href="{ADMIN_STRUCTURE_EXT_URL}" class="thumbicons">
		<!-- IF {ADMIN_STRUCTURE_EXT_ICO} --> 
		<img src="{ADMIN_STRUCTURE_EXT_ICO}"/>
		<!-- ELSE -->
		<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
		<!-- ENDIF -->
		{ADMIN_STRUCTURE_EXT_NAME}
	</a>
	<!-- END: ADMIN_STRUCTURE_EXT -->
	<!-- BEGIN: ADMIN_STRUCTURE_EMPTY -->
	<p>{PHP.L.adm_listisempty}</p>
	<!-- END: ADMIN_STRUCTURE_EMPTY -->
	<div class="clear height0"></div>
</div>
<div class="button-toolbar">
	<a href="{PHP.db_structure|cot_url('admin', 'm=extrafields&n=$this')}" class="button large">{PHP.L.adm_extrafields_desc}</a>
</div>
<!-- END: LIST -->

<!-- BEGIN: MAIN -->

	<div class="quick-actions">

		<a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" class="quick-action icon cycle" title="{PHP.L.adm_tpl_resyncalltitle}">
			{PHP.L.Resync}</a>
		<!-- IF {ADMIN_STRUCTURE_I18N_URL} -->
		<a href="{ADMIN_STRUCTURE_I18N_URL}" class="quick-action icon globe">
			{PHP.L.i18n_structure}</a>
		<!-- ENDIF -->
		<div class="clear height0"></div>
	</div>

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}


<!-- BEGIN: OPTIONS -->

	<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" enctype="multipart/form-data">
<div class="block">
<h3>{PHP.row.structure_title}</h3>
	<table class="cells">
			<tr>
				<td class="width20">{PHP.L.Path}:</td>
				<td class="width80">{ADMIN_STRUCTURE_PATH}</td>
			</tr>
			<tr>
				<td>{PHP.L.Code}:</td>
				<td>{ADMIN_STRUCTURE_CODE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Title}:</td>
				<td>{ADMIN_STRUCTURE_TITLE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Description}:</td>
				<td>{ADMIN_STRUCTURE_DESC}</td>
			</tr>
			<tr>
				<td>{PHP.L.Icon}:</td>
				<td>{ADMIN_STRUCTURE_ICON}</td>
			</tr>
			<tr>
				<td>{PHP.L.Locked}:</td>
				<td>{ADMIN_STRUCTURE_LOCKED}</td>
			</tr>
			<tr>
				<td>{PHP.L.adm_tpl_mode}:</td>
				<td>
					{ADMIN_STRUCTURE_TPLMODE} {ADMIN_STRUCTURE_SELECT}<br />
					{PHP.L.adm_tpl_quickcat}: {ADMIN_STRUCTURE_TPLQUICK}
				</td>
			</tr>
			<!-- BEGIN: EXTRAFLD -->
			<tr>
				<td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
				<td class="{ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_EXTRAFLD}</td>
			</tr>
			<!-- END: EXTRAFLD -->
		</table>
	</div>		

		<!-- BEGIN: CONFIG -->

		<div class="block">
		<h3>{PHP.L.Configuration}</h3>{CONFIG_HIDDEN}
		{ADMIN_CONFIG_EDIT_CUSTOM}

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
		<!-- END: CONFIG -->
		<div class="action_bar valid">
			<input type="submit" class="submit" value="{PHP.L.Update}" />
		</div>
		
	</form>
</div>
<!-- END: OPTIONS -->

<!-- BEGIN: DEFAULT -->
<div class="block">
	<h3>{PHP.L.editdeleteentries}:</h3>
	<div class="overflow_x">
		<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" class="ajax" enctype="multipart/form-data" >
			<table class="cells">
				<tr>
					<td class="coltop width15">{PHP.L.Path}</td>
					<td class="coltop width10">{PHP.L.Code}</td>
					<td class="coltop width20">{PHP.L.Title}</td>
					<td class="coltop width10">{PHP.L.TPL}</td>
					<td class="coltop width0">{PHP.L.Pages}</td>
					<td class="coltop width45">{PHP.L.Action}</td>
				</tr>
				<!-- BEGIN: ROW -->
				<tr>
					<td class="{ADMIN_STRUCTURE_ODDEVEN}"><span class="nowrap" style="margin-left: {ADMIN_STRUCTURE_LEVEL}0px;">{ADMIN_STRUCTURE_PATH}</span></td>
					<td class="centerall {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_CODE}</td>
					<td class="centerall {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_TITLE}</td>
					<td class="centerall {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_TPLQUICK}</td>
					<td class="centerall {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_COUNT}</td>
					<td class="action {ADMIN_STRUCTURE_ODDEVEN}">
						<div class="buttonpanel">
							<!-- IF {ADMIN_STRUCTURE_OPTIONS_URL} --><a href="{ADMIN_STRUCTURE_OPTIONS_URL}" title="{PHP.L.Edit}" class="ajax button list icon">{PHP.L.Edit}</a><!-- ENDIF -->
							<!-- IF {ADMIN_STRUCTURE_RIGHTS_URL} --><a href="{ADMIN_STRUCTURE_RIGHTS_URL}" title="{PHP.L.short_rights}" class="button lock icon">{PHP.L.short_rights}</a><!-- ENDIF -->
							<!-- IF {ADMIN_STRUCTURE_JUMPTO_URL} --><a href="{ADMIN_STRUCTURE_JUMPTO_URL}" title="{PHP.L.short_open}" class="button special positive export icon">{PHP.L.short_open}</a><!-- ENDIF -->
							<!-- IF {PHP.n} == 'page' --><a href="{PHP.structure_code|cot_url('page', 'm=add&c=$this')}" title="{PHP.L.Add}" class="button icon plus-circled">{PHP.L.Add}</a><!-- ENDIF -->
							
							<!-- IF {PHP.dozvil} --><a href="{ADMIN_STRUCTURE_UPDATE_DEL_URL}" title="{PHP.L.short_delete}" class="confirmLink negative button trash icon">{PHP.L.short_delete}</a><!-- ENDIF -->
						</div>
					</td>
				</tr>
				<!-- END: ROW -->
			</table>
			<div class="action_bar valid">
				
				<p class="paging">{ADMIN_STRUCTURE_PAGINATION_PREV}{ADMIN_STRUCTURE_PAGNAV}{ADMIN_STRUCTURE_PAGINATION_NEXT} <span>{PHP.L.Total}: {ADMIN_STRUCTURE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_STRUCTURE_COUNTER_ROW}</span></p>
				<button type="submit" class="submit">{PHP.L.Update}</button>
			</div>
		</form>
	</div>
</div>
<!-- END: DEFAULT -->

<!-- BEGIN: NEWCAT -->
<form name="addstructure" id="addstructure" action="{ADMIN_STRUCTURE_URL_FORM_ADD}" method="post" class="ajax" enctype="multipart/form-data">
	<div class="block">
		<h3>{PHP.L.Add}:</h3>

		<table class="cells info">
			<tr>
				<td class="width20">{PHP.L.Path}:</td>
				<td class="width80">{ADMIN_STRUCTURE_PATH} {PHP.L.adm_required}</td>
			</tr>
			<tr>
				<td>{PHP.L.Code}:</td>
				<td>{ADMIN_STRUCTURE_CODE} {PHP.L.adm_required}</td>
			</tr>
			<tr>
				<td>{PHP.L.Title}:</td>
				<td>{ADMIN_STRUCTURE_TITLE} {PHP.L.adm_required}</td>
			</tr>
			<tr>
				<td>{PHP.L.Description}:</td>
				<td>{ADMIN_STRUCTURE_DESC}</td>
			</tr>
			<tr>
				<td>{PHP.L.Icon}:</td>
				<td>{ADMIN_STRUCTURE_ICON}</td>
			</tr>
			<tr>
				<td>{PHP.L.Locked}:</td>
				<td>{ADMIN_STRUCTURE_LOCKED}</td>
			</tr>
			<!-- BEGIN: EXTRAFLD -->
			<tr>
				<td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
				<td>{ADMIN_STRUCTURE_EXTRAFLD}</td>
			</tr>
			<!-- END: EXTRAFLD -->
		</table>
		<div class="action_bar valid">
			<button type="submit" class="submit">{PHP.L.Add}</button>
		</div>
	</div>
</form>
<!-- END: NEWCAT -->

<!-- END: MAIN -->