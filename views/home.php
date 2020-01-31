<?php
$propietario_controler=new DtoPropietarioController();
$propietario=$propietario_controler->get($_SESSION['dni']);
$template='<section class="banner-area relative">
    <div class="overlay overlay-bg"></div>
    <div class="container">
        <div class="row fullscreen justify-content-center align-items-center">
            <div class="col-lg-8">
                <div class="banner-content text-center">
                    <p class="text-uppercase text-white">Bienbenido</p>
                    <h1 class="text-uppercase text-white">%s</h1>
                    <h2 class="text-uppercase text-white">%s</h2>
                    <!--<a href="pagos" class="primary-btn banner-btn">Ver Pagos</a>-->
                   
                    
                    ';

                    for ($n=0;$n<count($propietario);$n++){

                        $template.='  
                 <div class="row">
					<div class="col-lg-5 col-sm-6">
						<div class="single-product">
							<div class="icon">
								<span class="lnr lnr-star"></span>
							</div>
							<div class="desc">
								<h4>Unique Design</h4>
								<p>Most people who work in an office environment, buy computer products, or have </p>
							</div>
						</div>
					</div></div>
  <h3 class="text-uppercase text-white">Departamento '. $propietario[$n]['numdepartamento'].'</h3>';
                    }

                $template.='</div>
            </div>
        </div>
    </div>
</section>';

 printf($template,
           $_SESSION['nombre'],
           $_SESSION['apellido']);





