// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.08G

package _2_{
    import flash.display.Sprite;
    import _0uE._Py;
    import _5z._0tK;

    public class _08G extends Sprite implements _1b1 {

        public static const _0yr:String = "topLeft";
        public static const _1BI:String = "topRight";
        public static const _1ky:String = "bottomRight";
        public static const _1Q3:String = "bottomLeft";
        public static const HJ:String = "regular";
        private static const _23z:Array = [_0yr, _1BI, _1ky, _1Q3];

        public var _1Xj:_mG;
        private var BX:_Py;
        private var background:String;
        private var size:int;
        private var _0g9:_7B;

        public function _08G(){
            this._1Xj = new _mG();
            super();
        }

        public function mL(_arg1:_Py):void{
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

        public function _0mR(_arg1:String):void{
            this.background = _arg1;
            if (this._0g9)
            {
                removeChild(this._0g9);
            }
            this._0g9 = _7B(this._1Xj.create(this.size, this.X0()));
            addChildAt(this._0g9, 0);
        }

        private function X0():Array{
            var _local1:Array = [0, 0, 0, 0];
            if (this.background != HJ)
            {
                _local1[_23z.indexOf(this.background)] = 1;
            }
            return (_local1);
        }

        public function UN():String{
            return (this.background);
        }

        public function getPetVO():_0tK{
            return (this.BX.getPetVO());
        }


    }
}//package 2--

