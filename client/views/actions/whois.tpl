<div>
	{{> ../user_name nick=whois.nick}}
	<i class="hostmask">({{whois.user}}@{{whois.host}})</i>:
	<b>{{whois.real_name}}</b>
</div>
{{#if whois.actuallhost}}
<div>
	{{> ../user_name nick=whois.nick}}
	is connecting from {{whois.actuallhost}}
</div>
{{/if}}
{{#if whois.account}}
<div>
	{{> ../user_name nick=whois.nick}}
	is logged in as <b>{{whois.account}}</b>
</div>
{{/if}}
{{#if whois.modes}}
<div>
	{{> ../user_name nick=whois.nick}}
	is using modes <i>{{whois.modes}}</i>
</div>
{{/if}}
{{#if whois.operator}}
<div>
	{{> ../user_name nick=whois.nick}}
	{{whois.operator}}
</div>
{{/if}}
{{#if whois.special}}
<div>
	{{> ../user_name nick=whois.nick}}
	{{whois.special}}
</div>
{{/if}}
{{#if whois.helpop}}
<div>
	{{> ../user_name nick=whois.nick}}
	{{whois.helpop}}
</div>
{{/if}}
{{#if whois.bot}}
<div>
	{{> ../user_name nick=whois.nick}}
	{{whois.bot}}
</div>
{{/if}}
{{#if whois.logon}}
<div>
	{{> ../user_name nick=whois.nick}}
	connected on {{localetime whois.logonTime}}
</div>
{{/if}}
{{#if whois.channels}}
<div>
	{{> ../user_name nick=whois.nick}}
	is on the following channels: {{{parse whois.channels}}}
</div>
{{/if}}
{{#if whois.server}}
<div>
	{{> ../user_name nick=whois.nick}}
	is connected to {{whois.server}} <i>({{whois.server_info}})</i>
</div>
{{/if}}
{{#if whois.secure}}
<div>
	{{> ../user_name nick=whois.nick}}
	is using a secure connection
</div>
{{/if}}
{{#if whois.away}}
<div>
	{{> ../user_name nick=whois.nick}}
	is away <i>({{whois.away}})</i>
</div>
{{/if}}
{{#if whois.idle}}
<div>
	{{> ../user_name nick=whois.nick}}
	has been idle since {{localetime whois.idleTime}}.
</div>
{{/if}}
