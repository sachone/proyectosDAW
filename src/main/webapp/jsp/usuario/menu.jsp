<div class="container">
    <div class="row">

        <form class="navbar-form navbar-right buscador " role="form" action="Controller" method="post" id="empresaForm">
            <select id="selectFilter" class="form-control hidden" name="filter" style="width: 160px">
                <option value="tags" >etiquetas</option>
            </select>
            <select id="selectFilteroperator" class="form-control hidden" name="filteroperator" style="width: 200px">
                <option value="like" >contiene</option>
            </select>
            <input type="text" id="buscador" class="form-control" name="buscador" placeholder="inserta busqueda" style="width: 200px"/>
            <input type="submit" class="btn" id="btnBuscar" name="btnBuscar" value="Buscar " />
        </form>


    </div>


    <div class="row cuerpo" >
        <div class="col-md-12"  id="carruselCentral">
            <div class="imgIzq"> SlideIzq </div>
            <div class="imgCentro">slideCentro </div>
            <div class="imgDer"> SlideDer</div>
        </div>


    </div>
</div>

