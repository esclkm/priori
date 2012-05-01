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
	<a href="{PHP.db_structure|cot_url('admin', '?m=extrafields&n=$this')}" class="button large">{PHP.L.adm_extrafields_desc}</a>
</div>
<!-- END: LIST -->

<!-- BEGIN: MAIN -->

	<div class="bigbutpanel">

		<a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" class="thumbicons" title="{PHP.L.adm_tpl_resyncalltitle}"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>{PHP.L.Resync}</a>
		<!-- IF {ADMIN_STRUCTURE_I18N_URL} -->
		<a href="{ADMIN_STRUCTURE_I18N_URL}" class="thumbicons"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>{PHP.L.i18n_structure}</a>
		<!-- ENDIF -->
		<div class="clear height0"></div>
	</div>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}


<!-- BEGIN: OPTIONS -->
<div class="block">
	<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" enctype="multipart/form-data">
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
			<tr>
				<td class="valid" colspan="2"><input type="submit" class="submit" value="{PHP.L.Update}" /></td>
			</tr>
		</table>
		<p class="paging"><a href="{ADMIN_STRUCTURE_CONFIG_URL}" class="button">{PHP.L.Configuration}</a></p>
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
							<!-- IF {ADMIN_STRUCTURE_OPTIONS_URL} --><a href="{ADMIN_STRUCTURE_OPTIONS_URL}" title="{PHP.L.Edit}" class="ajax button"><span class="options icon"></span>{PHP.L.Edit}</a><!-- ENDIF -->
							<!-- IF {ADMIN_STRUCTURE_CONFIG_URL} --><a href="{ADMIN_STRUCTURE_CONFIG_URL}" title="{PHP.L.short_config}" class="button"><span class="cog icon"></span>{PHP.L.short_config}</a><!-- ENDIF -->
							<!-- IF {ADMIN_STRUCTURE_RIGHTS_URL} --><a href="{ADMIN_STRUCTURE_RIGHTS_URL}" title="{PHP.L.short_rights}" class="button"><span class="lock icon"></span>{PHP.L.short_rights}</a><!-- ENDIF -->
							<!-- IF {ADMIN_STRUCTURE_JUMPTO_URL} --><a href="{ADMIN_STRUCTURE_JUMPTO_URL}" title="{PHP.L.short_open}" class="button special positive"><span class="file icon"></span>{PHP.L.short_open}</a><!-- ENDIF -->
							<!-- IF {PHP.dozvil} --><a href="{ADMIN_STRUCTURE_UPDATE_DEL_URL}" title="{PHP.L.short_delete}" class="confirmLink negative button"><span class="trash icon"></span>{PHP.L.short_delete}</a><!-- ENDIF -->
						</div>
					</td>
				</tr>
				<!-- END: ROW -->
				<tr>
					<td class="valid" colspan="8"><input type="submit" class="submit" value="{PHP.L.Update}" /></td>
				</tr>
			</table>
		</form>
	</div>
	<p class="paging">{ADMIN_STRUCTURE_PAGINATION_PREV}{ADMIN_STRUCTURE_PAGNAV}{ADMIN_STRUCTURE_PAGINATION_NEXT} <span>{PHP.L.Total}: {ADMIN_STRUCTURE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_STRUCTURE_COUNTER_ROW}</span></p>
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
			<tr>
				<td class="valid" colspan="2">
					<input type="submit" class="submit" value="{PHP.L.Add}" />
				</td>
			</tr>
		</table>

	</div>
</form>
<!-- END: NEWCAT -->

<!-- END: MAIN -->