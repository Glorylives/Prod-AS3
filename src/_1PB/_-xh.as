// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.xh

package 1PB{
    import flash.display.Sprite;
    import mx.core.BitmapAsset;
    import __AS3__.vec.Vector;
    import 0xo.1hX;
    import __AS3__.vec.*;

    public class xh extends Sprite {

        private static var 0pv:Class = 1k-;
        private static var 0Ho:Class = EG;
        private static var 8E:Class = 0Lj;
        private static var 05O:Class = 0nD;
        private static var zF:Class = v1;

        private var base:BitmapAsset;
        private var zK:Vector.<BitmapAsset>;

        public function xh(){
            this.base = new 0pv();
            addChild(this.base);
            this.zK = new Vector.<BitmapAsset>(4, true);
            this.zK[0] = new zF();
            this.zK[1] = new 0Ho();
            this.zK[2] = new 8E();
            this.zK[3] = new 05O();
            var _local1:int;
            while (_local1 < 4)
            {
                this.zK[_local1].x = (12 + (40 * _local1));
                this.zK[_local1].y = 12;
                _local1++;
            }
        }

        public function Iv(_arg1:1hX):void{
            var _local2:BitmapAsset = this.zK[_arg1.position];
            if (!contains(_local2))
            {
                addChild(_local2);
            }
        }

        public function Aa(_arg1:1hX):void{
            var _local2:BitmapAsset = this.zK[_arg1.position];
            if (contains(_local2))
            {
                removeChild(_local2);
            }
        }


    }
}//package 1PB

