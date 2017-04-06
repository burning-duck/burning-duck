[#assign site = sitefn.site()!]
[#assign theme = sitefn.theme(site)!]

<div class="ui equal width grid">
  <div class="column">
    <div class="ui center aligned segment">
      <p>

        <img class="ui centered tiny circular image" src="${ctx.contextPath}/.resources/${theme.name}/webresources/img/burning-duck-logo.png" />

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
    </div>
  </div>
</div>
