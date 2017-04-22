[#assign site = sitefn.site()!]
[#assign theme = sitefn.theme(site)!]
[#assign pageContent = cmsfn.parent(content, "mgnl:page")! ]

[#---- INCLUDE ----]
  [#include "/burning-duck/common/snippets/pageListTeaserSnippet.ftl"]

[#list components as component ]
   [@cms.component content=component /]
[/#list]
