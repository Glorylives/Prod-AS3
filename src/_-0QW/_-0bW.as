// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.0bW

package 0QW{
    import __AS3__.vec.Vector;
    import flash.display.BitmapData;
    import flash.geom.Rectangle;
    import flash.geom.Matrix;
    import flash.display.Bitmap;
    import flash.display.Sprite;
    import __AS3__.vec.*;

    public class 0bW {

        private static const 1OC:int = 0x0100;

        public var width_:int;
        public var height_:int;
        public var 0ah:uint;
        private var 25j:int;
        private var 0Yr:int;
        private var 1z0:Vector.<BitmapData>;

        public function 0bW(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:uint){
            var _local6:int;
            var _local7:int;
            var _local8:int;
            super();
            this.width_ = _arg1;
            this.height_ = _arg2;
            this.0ah = _arg4;
            this.25j = Math.ceil((this.width_ / 1OC));
            this.0Yr = Math.ceil((this.height_ / 1OC));
            this.1z0 = new Vector.<BitmapData>((this.25j * this.0Yr), true);
            var _local5:int;
            while (_local5 < this.25j)
            {
                _local6 = 0;
                while (_local6 < this.0Yr)
                {
                    _local7 = Math.min(1OC, (this.width_ - (_local5 * 1OC)));
                    _local8 = Math.min(1OC, (this.height_ - (_local6 * 1OC)));
                    this.1z0[(_local5 + (_local6 * this.25j))] = new HL(_local7, _local8, _arg3, this.0ah);
                    _local6++;
                };
                _local5++;
            };
        }

        public function copyTo(_arg1:BitmapData, _arg2:Rectangle, _arg3:Rectangle):void{
            var _local12:int;
            var _local13:BitmapData;
            var _local14:Rectangle;
            var _local4:Number = (_arg3.width / _arg2.width);
            var _local5:Number = (_arg3.height / _arg2.height);
            var _local6:int = int((_arg3.x / 1OC));
            var _local7:int = int((_arg3.y / 1OC));
            var _local8:int = Math.ceil((_arg3.right / 1OC));
            var _local9:int = Math.ceil((_arg3.bottom / 1OC));
            var _local10:Matrix = new Matrix();
            var _local11:int = _local6;
            while (_local11 < _local8)
            {
                _local12 = _local7;
                while (_local12 < _local9)
                {
                    _local13 = this.1z0[(_local11 + (_local12 * this.25j))];
                    _local10.identity();
                    _local10.scale(_local4, _local5);
                    _local10.translate(((_arg3.x - (_local11 * 1OC)) - (_arg2.x * _local4)), ((_arg3.y - (_local12 * 1OC)) - (_arg2.x * _local5)));
                    _local14 = new Rectangle((_arg3.x - (_local11 * 1OC)), (_arg3.y - (_local12 * 1OC)), _arg3.width, _arg3.height);
                    _local13.draw(_arg1, _local10, null, null, _local14, false);
                    _local12++;
                };
                _local11++;
            };
        }

        public function Hn(_arg1:Rectangle, _arg2:BitmapData, _arg3:Rectangle):void{
            var _local13:int;
            var _local14:BitmapData;
            var _local4:Number = (_arg3.width / _arg1.width);
            var _local5:Number = (_arg3.height / _arg1.height);
            var _local6:int = Math.max(0, int((_arg1.x / 1OC)));
            var _local7:int = Math.max(0, int((_arg1.y / 1OC)));
            var _local8:int = Math.min((this.25j - 1), int((_arg1.right / 1OC)));
            var _local9:int = Math.min((this.0Yr - 1), int((_arg1.bottom / 1OC)));
            var _local10:Rectangle = new Rectangle();
            var _local11:Matrix = new Matrix();
            var _local12:int = _local6;
            while (_local12 <= _local8)
            {
                _local13 = _local7;
                while (_local13 <= _local9)
                {
                    _local14 = this.1z0[(_local12 + (_local13 * this.25j))];
                    _local11.identity();
                    _local11.translate((((_arg3.x / _local4) - _arg1.x) + (_local12 * 1OC)), (((_arg3.y / _local5) - _arg1.y) + (_local13 * 1OC)));
                    _local11.scale(_local4, _local5);
                    _arg2.draw(_local14, _local11, null, null, _arg3, false);
                    _local13++;
                };
                _local12++;
            };
        }

        public function 09R(_arg1:Rectangle):void{
            var _local8:int;
            var _local9:BitmapData;
            var _local2:int = int((_arg1.x / 1OC));
            var _local3:int = int((_arg1.y / 1OC));
            var _local4:int = Math.ceil((_arg1.right / 1OC));
            var _local5:int = Math.ceil((_arg1.bottom / 1OC));
            var _local6:Rectangle = new Rectangle();
            var _local7:int = _local2;
            while (_local7 < _local4)
            {
                _local8 = _local3;
                while (_local8 < _local5)
                {
                    _local9 = this.1z0[(_local7 + (_local8 * this.25j))];
                    _local6.x = (_arg1.x - (_local7 * 1OC));
                    _local6.y = (_arg1.y - (_local8 * 1OC));
                    _local6.right = (_arg1.right - (_local7 * 1OC));
                    _local6.bottom = (_arg1.bottom - (_local8 * 1OC));
                    _local9.fillRect(_local6, this.0ah);
                    _local8++;
                };
                _local7++;
            };
        }

        public function 0nb():Sprite{
            var _local3:int;
            var _local4:BitmapData;
            var _local5:Bitmap;
            var _local1:Sprite = new Sprite();
            var _local2:int;
            while (_local2 < this.25j)
            {
                _local3 = 0;
                while (_local3 < this.0Yr)
                {
                    _local4 = this.1z0[(_local2 + (_local3 * this.25j))];
                    _local5 = new Bitmap(_local4);
                    _local5.x = (_local2 * 1OC);
                    _local5.y = (_local3 * 1OC);
                    _local1.addChild(_local5);
                    _local3++;
                };
                _local2++;
            };
            return (_local1);
        }


    }
}//package 0QW

