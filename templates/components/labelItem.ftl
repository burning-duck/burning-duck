[#assign configClasses = ["ui", "label", content.color!, content.size!]?join(" ")]
<div class="${configClasses}">
    ${content.content!}
    [#if content.detail?has_content]
        <div class="detail">${content.detail!}</div>
    [/#if]
</div>

