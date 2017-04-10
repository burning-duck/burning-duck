<div class="ui equal width center aligned padded grid">
    <div class="row" style="background-color: #F05440;color: #000000;">
        <div class="column">
            <h1>${content.title!"Placeholder"}</h1>

            [#assign myMapList = cmsfn.children(content, "mgnl:page")!]
            [#-- child pages link list --]
            <div class="ui list">
            [#list cmsfn.asNodeList(myMapList)! as child]
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
