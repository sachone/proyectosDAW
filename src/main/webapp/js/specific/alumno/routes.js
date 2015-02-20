/* 
 * Copyright (C) 2014 rafa
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */


function fAlumnoRoutes() {

    Path.map("#/alumno").to(function () {
        $('#indexContenidoJsp').spinner();
        oAlumnoControl.list($('#indexContenido'), param().defaultizeUrlObjectParameters({}), null, oAlumnoModel, oAlumnoView);
        //alumnoControl.modalListEventsLoading(alumnoObject, alumnoView, $('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);        
        $('#indexContenidoJsp').empty();
        //$('#indexContenidoJsp').append(oAlumnoControl.getClassNameAlumno());
        return false;
    });

    Path.map("#/alumno/list/:url").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oAlumnoControl.list($('#indexContenido'), paramsObject, null, oAlumnoModel, oAlumnoView);
        $('#indexContenidoJsp').empty();
        return false;
    });

    Path.map("#/alumno/view/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oAlumnoControl.view($('#indexContenido'), paramsObject['id'], oAlumnoModel, oAlumnoView);
        $('#indexContenidoJsp').empty();

        return false;
    });

    Path.map("#/alumno/edit/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oAlumnoControl.edit($('#indexContenido'), paramsObject['id'], oAlumnoModel, oAlumnoView);
        $('#indexContenidoJsp').empty();
    });

    Path.map("#/alumno/new").to(function () {
        $('#indexContenidoJsp').spinner();
        //var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oAlumnoControl.new($('#indexContenido'), null, oAlumnoModel, oAlumnoView);
        $('#indexContenidoJsp').empty();
        return false;
    });

    Path.map("#/alumno/new/:url").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oAlumnoControl.new($('#indexContenido'), paramsObject, oAlumnoModel, oAlumnoView);
        $('#indexContenidoJsp').empty();
        return false;
    });

    Path.map("#/alumno/remove/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oAlumnoControl.remove($('#indexContenido'), paramsObject['id'], oAlumnoModel, oAlumnoView);
        $('#indexContenidoJsp').empty();
        return false;
    });
}