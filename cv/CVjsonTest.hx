package cv;
import cv.CVTypeDef;
import cv.loaders.CVLoader;
import cv.components.Layout;
import js.html.*;
class CVjsonTest{ public static function main(){ new CVjsonTest(); }
    var cvLoader: CVLoader;
    public function new(){
        cvLoader = new CVLoader( 'testCV.json', loaded );
    }
    public function loaded(){
        var layout = new Layout( cvLoader.cv );
    }
}
