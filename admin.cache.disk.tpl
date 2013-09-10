<!-- BEGIN: MAIN -->
		
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="quick-actions">
				<a href="{ADMIN_DISKCACHE_URL_REFRESH}" class="ajax quick-action icon cycle">
					{PHP.L.Refresh}</a>
				<a href="{ADMIN_DISKCACHE_URL_PURGE}" class="ajax quick-action icon trash">
					{PHP.L.adm_purgeall}</a>
		</div>
		<div class="block">
			<h3>Disk Cache</h3>
			<table class="cells">
				<tr>
					<td class="coltop width25">{PHP.L.Item}</td>
					<td class="coltop width25">{PHP.L.Files}</td>
					<td class="coltop width25">{PHP.L.Size}</td>
					<td class="coltop width25">{PHP.L.Delete}</td>
				</tr>
<!-- BEGIN: ADMIN_DISKCACHE_ROW -->
				<tr>
					<td class="textcenter">{ADMIN_DISKCACHE_ITEM_NAME}</td>
					<td class="textcenter">{ADMIN_DISKCACHE_FILES}</td>
					<td class="textcenter">{ADMIN_DISKCACHE_SIZE}</td>
					<td><a title="{PHP.L.Delete}" href="{ADMIN_DISKCACHE_ITEM_DEL_URL}" class="ajax negative button trash icon">{PHP.L.Delete}</a></td>
				</tr>
<!-- END: ADMIN_DISKCACHE_ROW -->
			<tr class="strong">
				<td class="centerall">{PHP.L.Total}:</td>
				<td class="centerall">{ADMIN_DISKCACHE_CACHEFILES}</td>
				<td class="centerall">{ADMIN_DISKCACHE_CACHESIZE}</td>
				<td class="centerall">&nbsp;</td>
			</tr>
			</table>
		</div>
<!-- END: MAIN -->