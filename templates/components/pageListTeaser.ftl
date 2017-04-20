
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

                      [#if firstContent.headline?has_content]
                        <h2>${firstContent.headline}</h2>
                      [/#if]

                      [#if firstContent.text?has_content]
                        ${firstContent.text?substring(0, 200)} . . .
                        <a href="${cmsfn.link(child)}">read more</a>
                      [/#if]
                      <hr />
                  [/#if]
                [/#list]

              [#assign count += 1]

          [/#if]
      [/#list]
[/#if]
