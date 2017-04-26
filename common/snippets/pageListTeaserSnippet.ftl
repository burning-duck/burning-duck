[#if pageContent.title?has_content]
  <h2>${pageContent.title}</h2>
[/#if]

[#if pageContent.teaserTitle?has_content]
  <h3>${pageContent.teaserTitle}</h3>
[/#if]


[#if pageContent.items?has_content]
  [#list cmsfn.children(pageContent.items) as item]


    [#assign configClasses = ["ui", "label", item.color!, item.size!]?join(" ")]
    <div class="${configClasses}">
        ${item.content!}
        [#if item.detail?has_content]
            <div class="detail">${item.detail!}</div>
        [/#if]
    </div>

  [/#list]
[/#if]


[#if pageContent.date?has_content]
  ${pageContent.date?date}
[/#if]

[#if pageContent.author?has_content]
  <img class="ui avatar image" src="${ctx.contextPath}/.resources/${theme.name}/webresources/img/${pageContent.author}">
[/#if]

[#if pageContent.teaserText?has_content]
  ${cmsfn.decode(pageContent).teaserText!""}
[/#if]
