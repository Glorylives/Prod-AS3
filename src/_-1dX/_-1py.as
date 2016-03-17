// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1dX.1py

package 1dX{
    import flash.display.Sprite;
    import 0uE.0Gd;
    import _0OG._22M;
    import flash.display.DisplayObject;
    import 5z.0tK;

    public class 1py extends Sprite {

        [Inject]
        public var sB:0Gd;
        [Inject]
        public var kf:_22M;
        public var 1hI:aQ;
        public var 0QZ:aQ;
        public var BX:DisplayObject;
        private var petVO:0tK;


        public function Sz(_arg1:0tK):void{
            this.sB.0YD = 8;
            this.petVO = _arg1;
            this.0QZ = this.EE();
            this.1hI = this.EE();
            this.1yd(_arg1);
            this.1qE();
        }

        public function 0It():0tK{
            return (this.petVO);
        }

        private function 1yd(_arg1:0tK):void{
            this.BX = this.sB.create(_arg1, 120);
            this.BX.x = ((-1 * this.BX.width) / 2);
            this.BX.y = ((-1 * this.BX.height) / 2);
            addChild(this.BX);
        }

        private function 1qE():void{
            this.0QZ.0hE = 50;
            this.1hI.0hE = (this.0QZ.0hE * 1.5);
            var _local1:Number = 0.7;
            this.1hI.width = (this.0QZ.width * _local1);
            this.1hI.height = (this.0QZ.height * _local1);
            this.1hI.alpha = (this.0QZ.alpha = 0.7);
        }

        private function EE():aQ{
            var _local1:aQ = this.kf.getInstance(aQ);
            addChild(_local1);
            return (_local1);
        }


    }
}//package 1dX

