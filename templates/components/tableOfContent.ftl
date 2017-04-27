[#assign thisArea = cmsfn.parent(content, "mgnl:area")! ]
[#assign parentArea = cmsfn.parent(thisArea, "mgnl:area")! ]
<div class="ui very padded inverted segment">
  <ul>
    [#list cmsfn.children(parentArea.contentArea, "mgnl:component") as mainContentChildComponents ]
      [#assign currentComponent = cmsfn.metaData(mainContentChildComponents, "mgnl:template")]
      [#if currentComponent?? && currentComponent == "burning-duck:components/paragraph"]
        <li>
          <a href="#${mainContentChildComponents.@uuid}">${mainContentChildComponents.headline}</a>
        </li>
      [/#if]
    [/#list]
  </ul>
</div>
