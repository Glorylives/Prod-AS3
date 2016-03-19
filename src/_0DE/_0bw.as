// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0DE.0bw

package _0DE{
import _0Px._0J9;

import _1n4._1WS;

import flash.display.Sprite;
    import flash.filters.ColorMatrixFilter;
    import flash.geom.Matrix;
    import flash.display.Bitmap;
    import _CU._1CD;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.objects.ObjectLibrary;

    public class _0bw extends Sprite {

        protected static const _0Bv:Array = [new ColorMatrixFilter([0.4, 0, 0, 0, 0, 0, 0.4, 0, 0, 0, 0, 0, 0.4, 0, 0, 0, 0, 0, 1, 0])];
        private static const _1Ab:Matrix = new Matrix();
        private static const _0sv:Matrix = function ():Matrix{
            var _local1:* = new Matrix();
            _local1.translate(10, 5);
            return (_local1);
        }();

        public var itemId:int;
        public var mQ:Bitmap;
        private var nE:_1CD;

        public function _0bw(){
            this.mQ = new Bitmap();
            addChild(this.mQ);
            this.itemId = -1;
        }

        public function setDim(_arg1:Boolean):void{
            filters = ((_arg1) ? _0Bv : null);
        }

        public function setType(_arg1:int):void{
            this.itemId = _arg1;
            this._0Wb();
        }

        public function _0Wb():void{
            var _local1:BitmapData;
            var _local2:XML;
            var _local3:BitmapData;
            if (this.itemId != _0J9._1Qx)
            {
                _local1 = ObjectLibrary.getRedrawnTextureFromType(this.itemId, 80, true);
                _local2 = ObjectLibrary.GD[this.itemId];
                if (((((_local2) && (_local2.hasOwnProperty("Doses")))) && (this.nE)))
                {
                    _local1 = _local1.clone();
                    _local3 = this.nE.make(new _1WS(String(_local2.Doses)), 12, 0xFFFFFF, false, _1Ab, false);
                    _local1.draw(_local3, _0sv);
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

        public function Hk(_arg1:_1CD):void{
            this.nE = _arg1;
        }


    }
}//package _0DE

