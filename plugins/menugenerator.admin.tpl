<!-- BEGIN: MAIN -->
<script type="text/javascript">
    var qid={PHP.local_max};
    function removemenugenerator(object)
    {
        var objectparent = $(object).parent();
        objectparent = $(objectparent).parent();
        $(objectparent).find('.item_title').attr('value', '');
        $(objectparent).hide();
        return false;
    }

    $(document).ready(function(){
        $("#mg_new").hide();

        $("#addoption").click(function () {
            var object = $('#mg_new').clone().attr("id", 'mg_'+qid);

            $(object).find('.item_id').attr('name', 'item_id['+qid+']');
            $(object).find('.item_title').attr('name', 'item_title['+qid+']');
            $(object).find('.item_href').attr('name', 'item_href['+qid+']');
            $(object).find('.item_desc').attr('name', 'item_desc['+qid+']');
            $(object).find('.item_path').attr('name', 'item_path['+qid+']');
            $(object).find('.item_users').attr('name', 'item_users['+qid+']');
			$(object).find('.item_extra').attr('name', 'item_extra['+qid+']');
            $(object).insertBefore('#mg_new').show();
            qid++;
        });
        $("#menugeneratorbefore").show();
        if(ident < 2)
        {$("#addoption").click();}

    });
</script>
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
<div class="quick-actions">
	<a title="{PHP.L.adm_extrafields_desc}" href="{PHP.db_menugenerator|cot_url('admin', 'm=extrafields&n=$this')}" class="quick-action">
		<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/flash.png"/></span>{PHP.L.adm_extrafields_table} {PHP.db_menugenerator}</a>
</div>

<!-- BEGIN: GENERAL -->
<div class="block">
<h3>{PHP.L.menugenerator}</h3>
<form action="{MENU_FORMACTION}" method="post" name="general">
    <table id="menugenerator" class="cells">
        <tr class="nodrag nodrop">
            <td class="coltop width5" style="text-align:right;">{PHP.L.Path}</td>
            <td class="coltop width30">{PHP.L.mg_title}</td>
            <td class="coltop width20">{PHP.L.mg_href}</td>           
            <td class="coltop width20">{PHP.L.mg_desc}</td>
            <td class="coltop width10">{PHP.L.mg_extra}</td>
			<td class="coltop width10">{PHP.L.mg_users}</td>
            <td class="coltop width5"></td>
        </tr>
        <!-- BEGIN: ITEMS  -->
        <tr id="mg_{MENU_ITEM_ID}">

            <td style="text-align:right;">{MENU_ITEM_PATH}</td>
            <td>{MENU_ITEM_LEVELC}{MENU_ITEM_TITLE}</td>

            <td>{MENU_ITEM_HREF}</td>
            <td>{MENU_ITEM_DESC}</td>
			<td>{MENU_ITEM_EXTRA}</td>
            <td>{MENU_ITEM_USERS}</td>
            <td><a title="{PHP.L.Delete}" onclick="removemenugenerator(this)" class="negative button trash icon">{PHP.L.short_delete}</a></td>
        </tr>
        <!-- END: ITEMS -->
        <tr id="menugeneratorbefore" class="nodrag nodrop centerall" style="display:none;"><td colspan='7'>
                <input  name="addoption" value="{PHP.L.Add}" id="addoption" type="button" class="button special" />
            </td></tr>
    </table>
    <div class="action_bar valid">
    
		<input name="paction" type="submit" value="{PHP.L.Update_menu}" class="button confirm" />
	</div>
</form>
</div>
<div class="help">
			<h4>{PHP.L.Help}:</h4>
			<p style="padding:10px;">{PHP.L.Tags}: {MENU_MENU_SET}. {PHP.L.mg_example}</p>
		<div id="footer-push"></div>
</div>
<!-- END: GENERAL -->

<!-- BEGIN: HELP -->

<!-- END: HELP -->

<!-- END: MAIN -->
