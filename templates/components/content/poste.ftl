<div class="ui equal width grid">
    <div class="row">
        <div class="two wide column"></div>
        <div class="column">
            <div class="ui orange segment">
                <a class="ui orange ribbon label">
                    ${content.title}
                </a>
                <span>${content.subtitle}</span> ${cmsfn.metaData(content,"mgnl:created")}
                <p></p>
                ${cmsfn.decode(content).poste!""}
            </div>
        </div>
        <div class="two wide column"></div>
    </div>
</div>