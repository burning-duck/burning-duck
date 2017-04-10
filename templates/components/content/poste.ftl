<div class="ui equal width grid">
    <div class="row">
        <div class="two wide column"></div>
        <div class="column">
            <div class="ui orange segment">
                <a class="ui orange ribbon label">
                    ${cmsfn.metaData(content,"mgnl:created")}
                </a>
                <h1>${content.title}</h1>
                <h3>${content.subtitle}</h3>
                <p></p>
                ${cmsfn.decode(content).poste!""}
            </div>
        </div>
        <div class="two wide column"></div>
    </div>
</div>
