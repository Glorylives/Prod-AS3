// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0y3.1O7

package 0y3{
    public final class 1O7 {

        private static const KQ:Number = (180 / Math.PI);//57.2957795130823
        private static const Do:Number = (Math.PI / 180);//0.0174532925199433
        private static const 1kn:Number = (((60 * 1.1515) * 1.609344) * 1000);//111189.57696

        public var 03m:Number;
        public var 0rj:Number;

        public function 1O7(_arg1:Number, _arg2:Number){
            this.03m = _arg1;
            this.0rj = _arg2;
        }

        public static function distance(_arg1:1O7, _arg2:1O7):Number{
            var _local3:Number = (Do * (_arg1.0rj - _arg2.0rj));
            var _local4:Number = (Do * _arg1.03m);
            var _local5:Number = (Do * _arg2.03m);
            var _local6:Number = ((Math.sin(_local4) * Math.sin(_local5)) + ((Math.cos(_local4) * Math.cos(_local5)) * Math.cos(_local3)));
            _local6 = ((KQ * Math.acos(_local6)) * 1kn);
            return (_local6);
        }


        public function toString():String{
            return ((((("(" + this.03m) + ", ") + this.0rj) + ")"));
        }


    }
}//package 0y3

