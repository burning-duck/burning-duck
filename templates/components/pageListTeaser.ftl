<style>
  .ui.raised.link.red.card {
    width: 100%;
    background-color: #CFCFCF;
  }
</style>

[#assign site = sitefn.site()!]
[#assign theme = sitefn.theme(site)!]

[#---- TITLE OF THE PAGE TEASER LIST ----]
  [#if content.title?has_content]
    <h2>${content.title}</h2>
  [/#if]

[#---- PAGE TEASER LIST ----]
  [#if content.page?has_content]

    [#---- GET THE PAGE LINK AND RUN TRUH THE CHILDS ----]
      [#assign parentPage = cmsfn.contentByPath(content.page)! ]
      [#assign count = 0]
      [#list cmsfn.children(parentPage, "mgnl:page") as child ]

        [#---- ONLY THE LIMIT IS NOT REACHED ----]
          [#if count < content.limit]

            [#---- GET AREAS FROM THE CHILD PAGE ----]
              [#assign childPageAreas = cmsfn.children(child, "mgnl:area")! ]

              [#---- CHECK AND GET THE MAIN AREA ----]
                [#list childPageAreas as area]
                  [#if area == "main"]

                    [#---- GET THE CONTENT FROM THE FIRST COMPONENT ----]
                      [#assign mainAreaNode = cmsfn.asJCRNode(area)]
                      [#assign firstContent = cmsfn.contentByPath(mainAreaNode.path + "/0")]
                      <div class="ui raised link red card">
                        <div class="content">
                          <div class="header">${firstContent.headline}</div>
                          <div class="meta">
                            <span class="right floated time">Date here</span>
                            <span class="category">Framework name</span>
                          </div>
                          <div class="description">
                            <p>
                              ${firstContent.text?substring(0, 200)} . . .
                            </p>
                            <p>
                              <a href="${cmsfn.link(child)}">read more</a>
                            </p>
                          </div>
                        </div>
                        <div class="extra content">
                        <div class="left floated author">
                          <img class="ui avatar image" src="${ctx.contextPath}/.resources/${theme.name}/webresources/img/00_burning-duck-black.svg">
                        </div>
                          <div class="right floated author">
                            <img class="ui avatar image" src="${ctx.contextPath}/.resources/${theme.name}/webresources/img/peter.jpg"> Peter
                          </div>
                        </div>
                      </div>


                  [/#if]
                [/#list]

              [#assign count += 1]

          [/#if]
      [/#list]
[/#if]
