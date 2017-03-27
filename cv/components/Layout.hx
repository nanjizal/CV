package cv.components;
import cv.CVTypeDef;
import js.Browser.document;
import js.html.*;

// 2480 pixels x 3508 pixels
// 595 pixels x 842 pixels

class Layout {
    var cv: CV;
    var doc = js.Browser.window.document;
    var div: DivElement;
    var rowDivs: Array<DivElement>;
    var colDiv: DivElement; 
   
    public function new( cv_: CV ){
        cv = cv_;
        div = doc.createDivElement();
        var style = div.style;
        style.paddingLeft = "0px";
        style.paddingTop = "0px";
        style.left = '0px';
        style.top = '0px';
        style.width = '595px';
        style.height = '842px';
        //style.backgroundColor = '#ff0000';
        style.border = '1px solid #A6A6A6';
        style.position = 'absolute';
        style.alignSelf = 'center';
        style.display = 'flex';
        style.flexDirection = 'column';
        style.backgroundColor = 'transparent';
        style.position = 'absolute';
        style.margin = '0';
        style.padding = '0';
        style.alignItems = 'center';
        style.alignContent = 'center';
        doc.body.appendChild( div );
        // Rough test of laying out basic on CV.
        var basic: Basic = cv.basics;
        createLabel( div, basic.name, 15 );
        createLabel( div, basic.label, 15 );
        createLabel( div, basic.email, 15 );
        createLabel( div, basic.phone, 15 );
        createLabel( div, basic.url, 15 );
        createLabel( div, basic.summary, 15 );
        var location: Location = basic.location;
        createLabel( div, location.address, 12 );
        createLabel( div, location.postalCode, 12 );
        createLabel( div, location.city, 12 );
        createLabel( div, location.countryCode, 12 );
        createLabel( div, location.region, 12 );
    }
    
    inline function createLabel( holder: Element, str: String, size: Float ){
        var txt = document.createDivElement();
        var style = txt.style;
        style.fontFamily = "Trebuchet MS";
        style.fontSize = Std.string( size ) + 'px';
        style.color = '#000000';
        //style.margin = '20px';
        style.padding = '5px';
        style.display = 'flex';
        style.flexDirection = 'row';
        style.backgroundColor = 'transparent';
        style.flexWrap = 'noWrap';
        //style.position = 'absolute';
        style.justifyContent = 'space-between';
        style.width = '90%';
        style.alignItems = 'center';
        style.setProperty( 'pointer-events', 'none' );
        //txt.style.letterSpacing = '2.5px';
        txt.innerHTML = str;
        holder.appendChild( txt );
        return txt;
    }  
}
