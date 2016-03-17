// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0DE.0bw

package 0DE{
    import flash.display.Sprite;
    import flash.filters.ColorMatrixFilter;
    import flash.geom.Matrix;
    import flash.display.Bitmap;
    import _CU.1CD;
    import flash.display.BitmapData;
    import 0Px.0J9;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import 1n4.1WS;

    public class 0bw extends Sprite {

        protected static const 0Bv:Array = [new ColorMatrixFilter([0.4, 0, 0, 0, 0, 0, 0.4, 0, 0, 0, 0, 0, 0.4, 0, 0, 0, 0, 0, 1, 0])];
        private static const 1Ab:Matrix = new Matrix();
        private static const 0sv:Matrix = function ():Matrix{
            var _local1:* = new Matrix();
            _local1.translate(10, 5);
            return (_local1);
        }();

        public var itemId:int;
        public var mQ:Bitmap;
        private var nE:1CD;

        public function 0bw(){
            this.mQ = new Bitmap();
            addChild(this.mQ);
            this.itemId = -1;
        }

        public function setDim(_arg1:Boolean):void{
            filters = ((_arg1) ? 0Bv : null);
        }

        public function setType(_arg1:int):void{
            this.itemId = _arg1;
            this.0Wb();
        }

        public function 0Wb():void{
            var _local1:BitmapData;
            var _local2:XML;
            var _local3:BitmapData;
            if (this.itemId != 0J9.1Qx)
            {
                _local1 = ObjectLibrary.getRedrawnTextureFromType(this.itemId, 80, true);
                _local2 = ObjectLibrary.GD[this.itemId];
                if (((((_local2) && (_local2.hasOwnProperty("Doses")))) && (this.nE)))
                {
                    _local1 = _local1.clone();
                    _local3 = this.nE.make(new 1WS(String(_local2.Doses)), 12, 0xFFFFFF, false, 1Ab, false);
                    _local1.draw(_local3, 0sv);
                };
                this.mQ.bitmapData = _local1;
                this.mQ.x = (-(_local1.width) / 2);
                this.mQ.y = (-(_local1.height) / 2);
                visible = true;
            } else
            {
                visible = false;
            };
        }

        public function Hk(_arg1:1CD):void{
            this.nE = _arg1;
        }


    }
}//package 0DE

