// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.appengine.1AQ

package com.company.assembleegameclient.appengine{
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;

    public class 1AQ {

        private static const FAME:String = "fame";

        private var 0lW:String;
        public var X:String;
        public var 16u:String;
        public var 0E0:String;
        public var 0K7:int;

        public function 1AQ(_arg1:String, _arg2:String, _arg3:String, _arg4:String, _arg5:int){
            this.0lW = _arg1;
            this.X = _arg2;
            this.16u = _arg3;
            this.0E0 = _arg4;
            this.0K7 = _arg5;
        }

        private static function 1X5():BitmapData{
            var _local1:BitmapData = AssetLibrary.1JR("lofiInterface2", 4);
            return (TextureRedrawer.redraw(_local1, 80, true, 0));
        }

        private static function Yc():BitmapData{
            var _local1:BitmapData = AssetLibrary.1JR("lofiObj3", 224);
            return (TextureRedrawer.redraw(_local1, 80, true, 0));
        }


        public function getIcon():BitmapData{
            return ((((this.0lW == FAME)) ? Yc() : 1X5()));
        }

        public function 1xI():Boolean{
            return ((this.0lW == FAME));
        }


    }
}//package com.company.assembleegameclient.appengine

