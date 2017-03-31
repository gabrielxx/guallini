<div class="panel panel-danger" id="panelRender">
    <div class="panel-heading">
        <h1 class="panel-title">
            <i class="fa fa-question-circle fa-20" aria-hidden="true"></i>
            Todo lo que tenés que saber
        </h1>
    </div>
    <div class="panel-body" >
        <div class="row" id="contentPropiedad">
            <div class="col-md-12">
                <div class="bs-example">
                    <div class="panel-group" id="accordion">
                        <?php
                        $i = 1;
                        ?>
                        @foreach($preguntas as $row)
                        <div class="panel panel-default" id="faq">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" class="text-pregunta" data-parent="#accordion" href="#collapse{{$i}}">
                                        {{$i}}. {{$row->pregunta}}
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse{{$i}}" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p class="text-respuesta">
                                        {{$row->respuesta}} 
                                    </p>
                                </div>
                            </div>
                        </div>
                        <?php
                        $i++;
                        ?>
                        @endforeach
                    </div>
                    <p><strong>Note:</strong> Click on the linked heading text to expand or collapse accordion panels.</p>
                </div>
            </div>                     
        </div>
    </div>
</div>
