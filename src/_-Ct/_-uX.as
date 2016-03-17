// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.uX

package Ct{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import 5z.2w;
    import 0Z-.0Aq;
    import __AS3__.vec.Vector;
    import 0IN.1qO;
    import 5z.0tK;
    import 1n4.1cA;
    import 0IN.h;
    import 0uE.Py;
    import 2--.08G;
    import XF.1eq;
    import flash.events.MouseEvent;
    import 0uE.0Gd;
    import __AS3__.vec.*;

    public class uX extends Sprite {

        private const 1iT:uint = 55;
        public const initComplete:_1HZ = new _1HZ();

        private var 1gC:_13j;
        private var 5y:Sprite;
        private var 1fc:Sprite;
        private var 2-x:uint = 0;
        private var 1LR:uint = 0;
        private var 1Q6:2w;
        private var Qc:0Aq;
        private var 0LG:Vector.<0Aq>;
        public var 0aH:_1HZ;
        public var disabled:Boolean = false;
        public var index:uint;

        public function uX(_arg1:uint){
            this.1gC = 1qO.1H-(0xFFFFFF, 18, true);
            this.5y = new Sprite();
            this.1fc = new Sprite();
            this.0LG = new Vector.<0Aq>();
            this.0aH = new _1HZ(0tK);
            super();
            this.index = _arg1;
        }

        public function init(_arg1:2w):void{
            this.1Q6 = _arg1;
            this.1gC.setStringBuilder(new 1cA().setParams(_arg1.1tR));
            this.1Lg();
            this.Fl();
            this.0Ha();
            this.initComplete.dispatch();
        }

        private function 0Ha():void{
            this.5y.x = ((h.1h9 - this.5y.width) / 2);
            this.1fc.x = ((h.1h9 - this.1fc.width) / 2);
            this.1fc.y = 50;
        }

        private function Fl():void{
            addChild(this.1gC);
            addChild(this.5y);
            addChild(this.1fc);
        }

        private function 1Lg():void{
            var _local1:uint;
            var _local3:Py;
            var _local4:08G;
            var _local5:0Aq;
            var _local6:1eq;
            var _local2:uint = this.1Q6.18N.length;
            _local1 = 0;
            while (_local1 < _local2)
            {
                _local3 = this.1D8(this.1Q6.18N[_local1], 48);
                _local4 = new 08G();
                _local4.mL(_local3);
                _local5 = new 0Aq();
                _local5.mouseChildren = false;
                _local5.setIcon(_local4);
                _local6 = new 1eq(_local5, MouseEvent.CLICK, MouseEvent);
                _local6.add(this.1lS);
                if ((_local1 < 4))
                {
                    this.1xi(_local5);
                } else
                {
                    this.1Al(_local5);
                };
                this.0LG.push(_local5);
                if (this.disabled)
                {
                    _local4.disable();
                    _local5.mouseChildren = false;
                    _local5.mouseEnabled = false;
                };
                _local1++;
            };
        }

        private function 1D8(_arg1:0tK, _arg2:int):Py{
            var _local3:0Gd = new 0Gd();
            var _local4:Py = _local3.create(_arg1, _arg2);
            _local4.Ta(false);
            return (_local4);
        }

        private function 1lS(_arg1:MouseEvent):void{
            this.0aH.dispatch(08G(_arg1.target.getIcon()).getPetVO());
        }

        private function 1xi(_arg1:Sprite):void{
            _arg1.x = (this.1iT * this.2-x);
            this.5y.addChild(_arg1);
            this.2-x++;
        }

        private function 1Al(_arg1:Sprite):void{
            _arg1.x = (this.1iT * this.1LR);
            this.1fc.addChild(_arg1);
            this.1LR++;
        }

        public function 0vg(_arg1:int):void{
            var _local2:0Aq;
            var _local3:int;
            var _local4:uint;
            while (_local4 < this.0LG.length)
            {
                _local2 = 0Aq(this.0LG[_local4]);
                _local3 = 08G(_local2.getIcon()).getPetVO().u5();
                _local2.1ZU((_local3 == _arg1));
                _local4++;
            };
        }


    }
}//package Ct

