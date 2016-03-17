// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.Py

package 0uE{
    import flash.display.Sprite;
    import 1r-.1L6;
    import flash.display.Bitmap;
    import 5z.0tK;
    import flash.geom.ColorTransform;
    import flash.events.Event;
    import 1Bg.1hy;
    import 1Bg.of;
    import 2--.*;
    import 1r-.*;

    public class Py extends Sprite implements u-, 1b1 {

        public static const 1YN:uint = 0x292929;

        public var 1-P:1L6;
        private var kN:Bitmap;
        private var enabled:Boolean = true;
        private var petVO:0tK;
        private var 8K:Boolean = false;

        public function Py(_arg1:0tK){
            this.1-P = new 1L6();
            super();
            this.petVO = _arg1;
            this.1-P.1pS(this);
            this.1-P.tooltip = new 5f(_arg1);
        }

        public function disable():void{
            var _local1:ColorTransform = new ColorTransform();
            _local1.color = 1YN;
            this.kN.transform.colorTransform = _local1;
            this.enabled = false;
        }

        public function isEnabled():Boolean{
            return (this.enabled);
        }

        override public function dispatchEvent(_arg1:Event):Boolean{
            if (this.enabled)
            {
                return (super.dispatchEvent(_arg1));
            };
            return (false);
        }

        public function 2t(_arg1:Bitmap):void{
            this.kN = _arg1;
            addChild(_arg1);
        }

        public function 4-(_arg1:1hy):void{
            this.1-P.4-(_arg1);
        }

        public function Bs():1hy{
            return (this.1-P.Bs());
        }

        public function na(_arg1:of):void{
            this.1-P.na(_arg1);
        }

        public function w1():of{
            return (this.1-P.w1());
        }

        public function getPetVO():0tK{
            return (this.petVO);
        }

        public function Ta(_arg1:Boolean):void{
            this.8K = _arg1;
            if (!_arg1)
            {
            };
        }


    }
}//package 0uE

