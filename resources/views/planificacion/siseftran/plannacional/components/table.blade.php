<div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">
    <?php foreach ($ejes as $eje): ?>
    <div class="panel">
        <a class="panel-heading" role="tab" id="heading{{ $eje->id }}" data-toggle="collapse" data-parent="#accordion" href="#collapse{{ $eje->id }}" aria-expanded="true" aria-controls="collapseOne">
            <h4 class="panel-title">Eje {{ $eje->codigo }}: {{ $eje->nombre }}</h4>
        </a>
        <div id="collapse{{ $eje->id }}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading{{ $eje->id }}">
            <div class="panel-body">
                <p><strong>Objetivo</strong>
                </p>
                Informacion de Objetivo
            </div>
        </div>
    </div>
    <?php endforeach ?>
</div>
<!-- end of accordion -->
