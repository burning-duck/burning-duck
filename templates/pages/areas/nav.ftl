[#assign site = sitefn.site()!]
[#assign theme = sitefn.theme(site)!]
[#assign homeLink = cmsfn.link(cmsfn.root(content, "mgnl:page"))]

<div class="ui equal width grid">
  <div class="column">
    <div class="ui center aligned segment">
      <p>
        <a href="${homeLink}">
            <img class="ui centered tiny circular image" src="${ctx.contextPath}/.resources/${theme.name}/webresources/img/burning-duck-logo.png" />
        </a>
      </p>
      <p>

        Until the duck is burning

      </p>
      <p>

        <a href="mailto:burning.duck.org@gmail.com">
          <i class="big mail outline icon"></i>
        </a>
        
        <i class="mini circle icon"></i>

        <a href="https://github.com/burning-duck" target="_blank">
          <i class="big github icon"></i>
        </a>

        <i class="mini circle icon"></i>

        <a href="https://discord.gg/5KGSrfd" target="_blank">
          <i class="big talk outline icon"></i>
        </a>

      </p>

        <div class="ui center aligned segment">
        [#-- child pages link list --]
            <div class="ui list">
                [#assign isContent = cmsfn.contentListByTemplateId(cmsfn.asJCRNode(content), "burning-duck:pages/placeholder")]
                [#assign isRoot = cmsfn.contentListByTemplateId(cmsfn.asJCRNode(cmsfn.root(content, "mgnl:page")), "burning-duck:pages/placeholder")]

            [#if isContent?has_content]
                [#assign pages = isContent]
            [#else]
                [#assign pages = isRoot]
            [/#if]
            [#list pages as child ]
                [#assign childPage = cmsfn.asContentMap(child)]
            <div class="item">
                <i class="${childPage.title!} icon"></i>
                    <div class="content">
                    <a class="item" href="${cmsfn.link(childPage)}">${childPage.title!}</a>
                    </div>
            </div>
            [/#list]
            </div>
        </div>
    </div>
  </div>
</div>
