// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.FusionStrength

package 0uE{
    import flash.display.Sprite;
    import _CU._13j;
    import 1n4.1cA;

    public class FusionStrength extends Sprite {

        public static const 0lp:uint = 8768801;
        public static const 21J:uint = 0xFF0000;
        public static const Oj:int = 0xB3B3B3;
        public static const LOW:String = "FusionStrength.Low";
        public static const 1XZ:String = "FusionStrength.Bad";
        public static const 2C:String = "FusionStrength.Good";
        public static const 1O4:String = "FusionStrength.Great";
        public static const 1RC:String = "FusionStrength.Fantastic";
        public static const Dr:String = "FusionStrength.Maxed";
        public static const NONE:String = "FusionStrength.None";
        private static const 1ss:Number = 16;

        public var Vx:_13j;

        public function FusionStrength():void{
            addChild(KR.K());
            this.OW();
            this.1lL();
        }

        private static function 1I0(_arg1:Number):String{
            if (1dm(_arg1))
            {
                return (Dr);
            };
            if (_arg1 > 0.8)
            {
                return (1RC);
            };
            if (_arg1 > 0.6)
            {
                return (1O4);
            };
            if (_arg1 > 0.4)
            {
                return (2C);
            };
            if (_arg1 > 0.2)
            {
                return (LOW);
            };
            return (1XZ);
        }

        private static function 1dm(_arg1:Number):Boolean{
            return ((Math.abs((_arg1 - 1)) < 0.001));
        }

        private static function 05u(_arg1:Number):Boolean{
            return ((_arg1 < 0.2));
        }


        public function reset():void{
            this.Vx.setStringBuilder(new 1cA().setParams(NONE));
            this.Vx.setColor(Oj);
        }

        private function OW():void{
            var _local1:_13j = KR.makeText();
            _local1.x = 1ss;
            _local1.y = this.09a();
            addChild(_local1);
        }

        private function 1lL():void{
            this.Vx = KR.1l8();
            this.Vx.x = (width - 1ss);
            this.Vx.y = this.09a();
            this.Vx.setStringBuilder(new 1cA().setParams(NONE));
            this.Vx.setColor(Oj);
            addChild(this.Vx);
        }

        private function 09a():Number{
            return ((height / 2));
        }

        public function 1dO(_arg1:Number):void{
            var _local2:String = 1I0(_arg1);
            this.Vx.setStringBuilder(new 1cA().setParams(_local2));
            this.9E(_arg1);
        }

        private function 9E(_arg1:Number):void{
            if (1dm(_arg1))
            {
                this.Vx.setColor(0lp);
            } else
            {
                if (05u(_arg1))
                {
                    this.Vx.setColor(21J);
                } else
                {
                    this.Vx.setColor(Oj);
                };
            };
        }


    }
}//package 0uE

