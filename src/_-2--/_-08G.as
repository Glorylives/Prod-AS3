// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.08G

package 2--{
    import flash.display.Sprite;
    import 0uE.Py;
    import 5z.0tK;

    public class 08G extends Sprite implements 1b1 {

        public static const 0yr:String = "topLeft";
        public static const 1BI:String = "topRight";
        public static const 1ky:String = "bottomRight";
        public static const 1Q3:String = "bottomLeft";
        public static const HJ:String = "regular";
        private static const 23z:Array = [0yr, 1BI, 1ky, 1Q3];

        public var 1Xj:mG;
        private var BX:Py;
        private var background:String;
        private var size:int;
        private var 0g9:7B;

        public function 08G(){
            this.1Xj = new mG();
            super();
        }

        public function mL(_arg1:Py):void{
            this.BX = _arg1;
            addChild(_arg1);
        }

        public function disable():void{
            this.BX.disable();
        }

        public function isEnabled():Boolean{
            return (this.BX.isEnabled());
        }

        public function setSize(_arg1:int):void{
            this.size = _arg1;
        }

        public function 0mR(_arg1:String):void{
            this.background = _arg1;
            if (this.0g9)
            {
                removeChild(this.0g9);
            };
            this.0g9 = 7B(this.1Xj.create(this.size, this.X0()));
            addChildAt(this.0g9, 0);
        }

        private function X0():Array{
            var _local1:Array = [0, 0, 0, 0];
            if (this.background != HJ)
            {
                _local1[23z.indexOf(this.background)] = 1;
            };
            return (_local1);
        }

        public function UN():String{
            return (this.background);
        }

        public function getPetVO():0tK{
            return (this.BX.getPetVO());
        }


    }
}//package 2--

