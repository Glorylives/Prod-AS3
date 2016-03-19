// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0y3.1O7

package _0y3{
    public final class _1O7 {

        private static const KQ:Number = (180 / Math.PI);//57.2957795130823
        private static const Do:Number = (Math.PI / 180);//0.0174532925199433
        private static const _1kn:Number = (((60 * 1.1515) * 1.609344) * 1000);//111189.57696

        public var _03m:Number;
        public var _0rj:Number;

        public function _1O7(_arg1:Number, _arg2:Number){
            this._03m = _arg1;
            this._0rj = _arg2;
        }

        public static function distance(_arg1:_1O7, _arg2:_1O7):Number{
            var _local3:Number = (Do * (_arg1._0rj - _arg2._0rj));
            var _local4:Number = (Do * _arg1._03m);
            var _local5:Number = (Do * _arg2._03m);
            var _local6:Number = ((Math.sin(_local4) * Math.sin(_local5)) + ((Math.cos(_local4) * Math.cos(_local5)) * Math.cos(_local3)));
            _local6 = ((KQ * Math.acos(_local6)) * _1kn);
            return (_local6);
        }


        public function toString():String{
            return ((((("(" + this._03m) + ", ") + this._0rj) + ")"));
        }


    }
}//package 0y3

