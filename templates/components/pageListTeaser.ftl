
[#if content.title?has_content]
  <h2>${content.title}</h2>
[/#if]

[#if content.page?has_content]
  [#assign parentPage = cmsfn.contentByPath(content.page) ]
  ${parentPage.title}
  [#list cmsfn.children(parentPage, "mgnl:page") as child ]
    [#assign area = cmsfn.children(parentPage, "mgnl:area") ]

      ${area.main[0]}

  [/#list]
[/#if]
