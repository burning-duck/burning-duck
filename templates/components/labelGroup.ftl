[#assign configClasses = ["ui", "labels", content.color!, content.size!]?join(" ")]
<div class="${configClasses}">
[@cms.area name="labelItems"/]
</div>
