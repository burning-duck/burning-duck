<!DOCTYPE html>
    <head>
        [@cms.page /]
        [@cms.area name="htmlHeader"/]
        <style>
          html, body {
              margin: 0;
              padding: 0;
              background-color: #0A0A0A;
              font-size: 100%;
              overflow-x: hidden;
              font-family: 'Roboto', serif;
              font-weight: 300;
          }
          i, a {
            color: #f05440;
          }
        </style>
    </head>

    <body>
        [@cms.area name="header"/]

        [@cms.area name="main"/]

        [@cms.area name="footer"/]

        [#if def.jsFiles??]
            [#list def.jsFiles as jsFile]
                <div>FOO</div>
                <script src="${jsFile.link}"></script>
            [/#list]
        [/#if]
    </body>

</html>
