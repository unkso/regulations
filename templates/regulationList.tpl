{include file='documentHeader'}
<head>
    <title>{lang}wcf.page.training.regulations{/lang} - {PAGE_TITLE|language}</title>

    {include file='headInclude' sandbox=false}
</head>

<body id="tpl{$templateName|ucfirst}">
{include file='header' title='Regulations' light=true paddingBottom=20}

{include file='userNotice'}

<div class="light container marginTop">

    <div class="row">
        <div class="col-md-4">
            <div class="tabs tabs-vertical tabs-left tabs-navigation">
                <ul class="nav nav-tabs col-sm-3">
                    {foreach from=$regulations item=category key=key}
                        {counter assign=tabNo name=tabNo print=false}
                        <li {if $tabNo == 1}class="active"{/if} data-toggle="tab">
                            <a href="#tabCategory{$key}">{$category['title']}</a>
                        </li>
                    {/foreach}
                </ul>
            </div>
        </div>

        <div class="col-md-8">
            {foreach from=$regulations item=category key=key}
                {counter assign=paneNo name=paneNo print=false}

                <div class="tab-pane tab-pane-navigation {if $paneNo == 1}active{/if}" id="tabCategory{$key}">
                    {foreach from=$category['regs'] item=regulation}

                        {counter assign=regNo name=regNo print=false}
                        <h4 {if $regNo > 1}class="marginTop"{/if}>{$regulation->name}</h4>
                        <p>{$regulation->description}</p>

                    {/foreach}
                </div>
            {/foreach}
        </div>

    </div>

</div>

{include file='footer' skipBreadcrumbs=true}
</body>
</html>