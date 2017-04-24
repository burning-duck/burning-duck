[#-------------- ASSIGNMENTS --------------]
[#-- Page's model & definition, based on the rendering hierarchy and not the node hierarchy --]
[#assign site = sitefn.site()!]
[#assign theme = sitefn.theme(site)!]

[#-------------- RENDERING --------------]
<title>${content.windowTitle!content.title!}</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="${content.description!""}" />
<meta name="keywords" content="${content.keywords!""}" />
<meta name="author" content="burning-duck.de" />

<link rel="icon" href="${ctx.contextPath}/.resources/${theme.name}/webresources/img/favicon.ico" />

[#list theme.cssFiles as cssFile]
    [#if cssFile.conditionalComment?has_content]<!--[if ${cssFile.conditionalComment}]>[/#if]
        <link rel="stylesheet" type="text/css" href="${cssFile.link}" media="${cssFile.media}" />
    [#if cssFile.conditionalComment?has_content]<![endif]-->[/#if]
[/#list]

[#if def.cssFiles??]
    [#list def.cssFiles as cssFile]
        <link rel="stylesheet" type="text/css" href="${cssFile.link}" media="${cssFile.media}" />
    [/#list]
[/#if]

[#-- jsFiles from the theme are here --]
[#list theme.jsFiles as jsFile]
    <script src="${jsFile.link}"></script>
[/#list]

