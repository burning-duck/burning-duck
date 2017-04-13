<!DOCTYPE html>
    <!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}"><![endif]-->
    <!--[if IE 7]><html class="no-js lt-ie9 lt-ie8" xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}"><![endif]-->
    <!--[if IE 8]><html class="no-js lt-ie9" xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}"><![endif]-->
    <!--[if gt IE 8]><!--><html class="no-js" xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}"><!--<![endif]-->

    <head>
        [@cms.page /]
        [@cms.area name="htmlHeader"/]
    </head>

    <body>
        [@cms.area name="header"/]

        <div class="ui equal width grid">
            <div class="two wide column"></div>
            <div class="twelve wide column">
              <div class="ui very padded segment">
                [@cms.area name="main"/]
              </div>
            <div class="two wide column"></div>
            </div>
        </div>

        [@cms.area name="footer"/]

        [#if def.jsFiles??]
            [#list def.jsFiles as jsFile]
                <script src="${jsFile.link}"></script>
            [/#list]
        [/#if]
    </body>

</html>