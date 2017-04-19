[#assign site = sitefn.site()!]
[#assign theme = sitefn.theme(site)!]
[#assign rootPage = cmsfn.root(content, "mgnl:page")!]
[#if rootPage?has_content]
    [#assign homeLink = cmsfn.link(rootPage)]
[#else]
    [#assign homeLink = cmsfn.link(content)]
[/#if]

<div class="ui equal width grid">
    <div class="column">
        <div class="ui center aligned inverted segment">

            [#if homeLink?has_content]
              <a href="${homeLink!}">
            [/#if]

              <img class="ui centered tiny circular image" src="${ctx.contextPath}/.resources/${theme.name}/webresources/img/00_burning-duck-red.svg" />

            [#if homeLink?has_content]
              </a>
            [/#if]
            <p></p>
            <p>
                Until the duck is burning
            </p>
            <p>
                <a href="mailto:burning.duck.org@gmail.com">
                    <i class="large mail outline icon"></i>
                </a>

                <i class="mini circle icon"></i>

                <a href="https://github.com/burning-duck" target="_blank">
                    <i class="large github icon"></i>
                </a>

                <i class="mini circle icon"></i>

                <a href="https://discord.gg/5KGSrfd" target="_blank">
                    <i class="large talk outline icon"></i>
                </a>
            </p>

            <div class="ui divider"></div>

            <p>
              [@cms.area name="headerLinkList"/]
            </p>
        </div>
    </div>
</div>
