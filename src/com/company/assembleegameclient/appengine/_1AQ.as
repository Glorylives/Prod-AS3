// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.appengine.1AQ

package com.company.assembleegameclient.appengine{
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;

    public class _1AQ {

        private static const FAME:String = "fame";

        private var _0lW:String;
        public var X:String;
        public var _16u:String;
        public var _0E0:String;
        public var _0K7:int;

        public function _1AQ(_arg1:String, _arg2:String, _arg3:String, _arg4:String, _arg5:int){
            this._0lW = _arg1;
            this.X = _arg2;
            this._16u = _arg3;
            this._0E0 = _arg4;
            this._0K7 = _arg5;
        }

        private static function _1X5():BitmapData{
            var _local1:BitmapData = AssetLibrary._1JR("lofiInterface2", 4);
            return (TextureRedrawer.redraw(_local1, 80, true, 0));
        }

        private static function Yc():BitmapData{
            var _local1:BitmapData = AssetLibrary._1JR("lofiObj3", 224);
            return (TextureRedrawer.redraw(_local1, 80, true, 0));
        }


        public function getIcon():BitmapData{
            return ((((this._0lW == FAME)) ? Yc() : _1X5()));
        }

        public function _1xI():Boolean{
            return ((this._0lW == FAME));
        }


    }
}//package com.company.assembleegameclient.appengine

