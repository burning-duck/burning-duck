<div class="paragraph">

  [#if content.headline?has_content]
    <div id="${content.@uuid}"></div>
    <h2>${content.headline}</h2>
  [/#if]

  [#if content.text?has_content]
    ${content.text}
  [/#if]

</div>
<hr />
