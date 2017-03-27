package cv.loaders;
import cv.CVTypeDef;
import haxe.Json;
class CVLoader {
    var cvFile: String;
    public var cv: CV;
    var loaded: Void->Void;
    var txtLoader: TxtLoader;
    public function new( cvFile_: String, loaded_: Void->Void ){
        cvFile = cvFile_;
        loaded = loaded_;
        txtLoader = new TxtLoader( [ cvFile ], jsonsLoaded );
    }
    function jsonsLoaded(){
        cv = Json.parse( txtLoader.contents.get( cvFile ) );
        loaded();
    }
}
