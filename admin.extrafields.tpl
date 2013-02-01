<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: TABLELIST -->	
<div class="block">
	<h3>{PHP.L.adm_extrafields}</h3>
	<!-- BEGIN: ROW -->	
	<a href="{ADMIN_EXTRAFIELDS_ROW_TABLEURL}" class="ajax thumbicons">
		<!-- IF {ADMIN_EXTRAFIELDS_ROW_ICO} --> 
		<img src="{ADMIN_EXTRAFIELDS_ROW_ICO}"/>
		<!-- ELSE -->
		<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
		<!-- ENDIF -->
		{ADMIN_EXTRAFIELDS_ROW_TABLE}
		<span>
			<!-- IF {ADMIN_EXTRAFIELDS_ROW_TYPE} == 'module' -->{PHP.L.Module}<!-- ENDIF -->
			<!-- IF {ADMIN_EXTRAFIELDS_ROW_TYPE} == 'plug' -->{PHP.L.Plugin}<!-- ENDIF -->
			<!-- IF {ADMIN_EXTRAFIELDS_ROW_TYPE} != 'plug' AND {ADMIN_EXTRAFIELDS_ROW_TYPE} != 'module' -->{PHP.L.System}<!-- ENDIF -->
			<!-- IF {ADMIN_EXTRAFIELDS_ROW_ITEMNAME} --> - {ADMIN_EXTRAFIELDS_ROW_ITEMNAME}<!-- ENDIF -->
		</span>
	</a>
	<!-- END: ROW -->
	<div class="action_bar">
		<a href="{ADMIN_EXTRAFIELDS_ALLTABLES}" class="button">{PHP.L.adm_extrafields_all}</a>
	</div>
</div>
<!-- END: TABLELIST -->
<script type="text/javascript">
	//<![CDATA[
	var exFLDHELPERS = "{ADMIN_EXTRAFIELDS_TAGS}";
	var exnovars = "{PHP.L.adm_extrafields_help_notused}";
	var exvariants = "{PHP.L.adm_extrafields_help_variants}";
	var exrange = "{PHP.L.adm_extrafields_help_range}";
	var exdata = "{PHP.L.adm_extrafields_help_data}";
	var exregex = "{PHP.L.adm_extrafields_help_regex}";
	var exfile = "{PHP.L.adm_extrafields_help_file}";
	var exseparator = "{PHP.L.adm_extrafields_help_separator}";

	$(document).ready(function(){
		$('.exfldtype').live("change", function(){
			var exParent = $(this).closest('tr');
			var exvalid =  $(this).attr('value');
			if(exvalid == 'select' || exvalid == 'radio' || exvalid == 'checklistbox')
			{
				$(exParent).find('.exfldvariants').attr('title',exvariants);
				$(exParent).find('.exfldvariants').removeAttr("disabled");
			}
			else
			{
				$(exParent).find('.exfldvariants').attr('title', exnovars);
				$(exParent).find('.exfldvariants').attr('disabled', 'disabled');

			}
			switch(exvalid)
			{
				case 'input':
					$(exParent).find('.exfldparams').attr('title',exregex);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'inputint':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'currency':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'double':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'textarea':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'select':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'checkbox':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'radio':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'datetime':
					$(exParent).find('.exfldparams').attr('title',exdata);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'file':
					$(exParent).find('.exfldparams').attr('title',exfile);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'country':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'range':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'checklistbox':
					$(exParent).find('.exfldparams').attr('title',exseparator);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
			}
			if($(exParent).find('.exfldname').attr('value') != '')
			{
				var exhelper = $(exParent).find('.exfldname').attr('value').toUpperCase();
				exhelper = exFLDHELPERS.replace(/XXXXX/g, exhelper);
				$(exParent).find('.exfldname').attr('title',exhelper);
				$(exParent).find('.exflddesc').attr('title',exhelper);
			}
			else
			{
				$(exParent).find('.exfldname').removeAttr("title");
				$(exParent).find('.exflddesc').removeAttr("title");
			}
		});
		$(".exfldtype").change();
	});
	
	;
	//]]>
</script>
<!-- BEGIN: TABLE -->	
<div class="block">
	<h3>{PHP.L.editdeleteentries}:</h3>
	<form action="{ADMIN_EXTRAFIELDS_URL_FORM_EDIT}" method="post">
		<table class="cells form_table">
			<!-- BEGIN: EXTRAFIELDS_ROW -->	
			<tr id="ex{ADMIN_EXTRAFIELDS_ROW_ID}">
				<td class="{ADMIN_EXTRAFIELDS_ROW_ODDEVEN} width1">
					{ADMIN_EXTRAFIELDS_ROW_ENABLED}
				</td>
				<td class="{ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
					<div class="row">

						<div>
							<span class="small">{PHP.L.extf_Name}</span>
							{ADMIN_EXTRAFIELDS_ROW_NAME}
						</div>

						<div>
							<span class="small">{PHP.L.extf_Description}</span>
							{ADMIN_EXTRAFIELDS_ROW_DESCRIPTION}
						</div>
						<div>
							<span class="small">{PHP.L.extf_Type}</span>
							{ADMIN_EXTRAFIELDS_ROW_SELECT}
							<input type="hidden" name="field_parse[{ADMIN_EXTRAFIELDS_ROW_ID}]" value="Text" />
							<input type="checkbox" name="field_parse[{ADMIN_EXTRAFIELDS_ROW_ID}]" value="HTML" <!-- IF {PHP.row.field_parse} == "HTML" -->checked="checked"<!-- ENDIF -->/>{PHP.L.adm_extrafield_parse}
								   {ADMIN_EXTRAFIELDS_ROW_REQUIRED}{PHP.L.adm_extrafield_required}
						</div>
						<div>
							<span class="small">{PHP.L.extf_Base_HTML}</span>
							{ADMIN_EXTRAFIELDS_ROW_HTML}
						</div>
						<div>
							<span class="small">{PHP.L.adm_extrafield_params}</span>
							{ADMIN_EXTRAFIELDS_ROW_PARAMS}
						</div>
						<div>
							<span class="small">{PHP.L.adm_extrafield_selectable_values}</span>
							{ADMIN_EXTRAFIELDS_ROW_VARIANTS}
						</div>
						<div>
							<span class="small">{PHP.L.adm_extrafield_default}</span>
							{ADMIN_EXTRAFIELDS_ROW_DEFAULT}
						</div>
					</div>
				<td class="width5 {ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">

					<a title="{PHP.L.Delete}" href="{ADMIN_EXTRAFIELDS_ROW_DEL_URL}" class="ajax negative button trash icon">{PHP.L.Delete}</a>
				</td>
			</tr>
			<!-- END: EXTRAFIELDS_ROW -->
		</table>
		<div class="action_bar valid">
			<p class="paging">{ADMIN_EXTRAFIELDS_PAGINATION_PREV}{ADMIN_EXTRAFIELDS_PAGNAV}{ADMIN_EXTRAFIELDS_PAGINATION_NEXT} <span>{PHP.L.Total}: {ADMIN_EXTRAFIELDS_TOTALITEMS}</span></p>
			<input type="submit" value="{PHP.L.Update}" onclick="location.href='{ADMIN_EXTRAFIELDS_ROW_FORM_URL}'"  class="confirm" />
		</div>
	</form>
</div>

<div class="block">
	<h3>{PHP.L.adm_extrafield_new}:</h3>
	<form action="{ADMIN_EXTRAFIELDS_URL_FORM_ADD}" method="post">
		<table class="cells info form_table">
			<tr id="exnew">	
				<td class="width1"><input type="checkbox" disabled="disabled" checked="checked"></td>
				<td>
					<div class="row">

						<div>
							<span class="small">{PHP.L.extf_Name}</span>
							{ADMIN_EXTRAFIELDS_NAME}
						</div>

						<div>
							<span class="small">{PHP.L.extf_Description}</span>
							{ADMIN_EXTRAFIELDS_DESCRIPTION}
						</div>
						<div>
							<span class="small">{PHP.L.extf_Type}</span>
							{ADMIN_EXTRAFIELDS_SELECT}
							<input type="hidden" name="field_parse" value="Text" />
							<input type="checkbox" name="field_parse" value="HTML" />{PHP.L.adm_extrafield_parse}
							{ADMIN_EXTRAFIELDS_REQUIRED}{PHP.L.adm_extrafield_required}
						</div>
						<div>
							<span class="small">{PHP.L.extf_Base_HTML}</span>
							{ADMIN_EXTRAFIELDS_HTML}
						</div>
						<div>
							<span class="small">{PHP.L.adm_extrafield_params}</span>
							{ADMIN_EXTRAFIELDS_PARAMS}
						</div>
						<div>
							<span class="small">{PHP.L.adm_extrafield_selectable_values}</span>
							{ADMIN_EXTRAFIELDS_VARIANTS}
						</div>
						<div>
							<span class="small">{PHP.L.adm_extrafield_default}</span>
							{ADMIN_EXTRAFIELDS_DEFAULT}
						</div>
					</div>
				</td>
				<td class="width5"></td>
			</tr>
		</table>
		<div class="action_bar valid">
			<input type="submit" class="confirm" value="{PHP.L.Add}" />
			<input type="checkbox" name="field_noalter" /> {PHP.L.adm_extrafield_noalter}
		</div>
	</form>
</div>
<!-- END: TABLE -->
<!-- END: MAIN -->