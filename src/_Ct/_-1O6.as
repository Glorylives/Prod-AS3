// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.1O6

package Ct{
    import _Jy._1HZ;
    import 0uE.IJ;
    import 0IN.1qO;
    import _CU._13j;
    import 0uE.KC;
    import 0IN.h;
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.ui.1nN;
    import XF.1eq;
    import AO.du;
    import flash.events.MouseEvent;
    import 1n4.1cA;
    import 0q4.Size;
    import 2--.PetPicker;
    import 5z.0tK;
    import 1PB.cO;
    import 5z.0cu;
    import 1t6.*;

    public class 1O6 extends 23L implements 0DY {

        private static const 1tT:_1HZ = new _1HZ();

        private const background:IJ = 1qO.1A9();
        private const r4:_13j = 1qO.18-(0xB3B3B3, 18, true);
        private const 1tf:KC = 1qO.19W(h.1h9);
        private const pA:int = 3;
        public const closed:_1HZ = new _1HZ();
        public const 10Z:_1HZ = new _1HZ();
        public const e3:_1HZ = new _1HZ();

        private var 1yf:Sprite;
        private var 0I1:Sprite;
        private var 0Er:Vector.<uX>;
        private var 03I:uint = 60;
        public var 23f:1nN;
        public var 1wc:1eq;
        public var z0:uint = 0;

        public function 1O6(){
            this.1yf = new Sprite();
            this.0I1 = new Sprite();
            this.23f = new 1nN(14, du.1MH);
            this.1wc = new 1eq(this.23f, MouseEvent.CLICK);
            super();
        }

        public function init():void{
            this.r4.setStringBuilder(new 1cA().setParams(du.2-s));
            this.1tf.clicked.add(this.D2);
            this.1wc.add(this.mW);
            this.23f.textChanged.add(this.0ke);
            this.04K();
            this.Fl();
            this.1bZ();
        }

        private function mW(_arg1:MouseEvent):void{
            this.e3.dispatch();
        }

        public function ol(_arg1:Vector.<uX>):void{
            var _local2:uX;
            var _local3:uint;
            while (_local3 < this.pA)
            {
                _local2 = _arg1[_local3];
                this.0Er = _arg1;
                _arg1[_local3].initComplete.add(this.1L-);
                this.0I1.addChild(_arg1[_local3]);
                _local3++;
            };
        }

        public function 1L-(){
            this.z0++;
            if (this.z0 == this.pA)
            {
                this.0Yq();
                this.10Z.dispatch();
            };
        }

        private function 0Yq():void{
            var _local1:uint;
            _local1 = 0;
            while (_local1 < this.pA)
            {
                this.0Er[_local1].x = 0;
                this.0Er[_local1].y = this.03I;
                this.03I = (this.03I + this.0Er[_local1].height);
                _local1++;
            };
            this.23f.y = (this.03I + 10);
            this.background.height = (this.03I + 50);
        }

        public function 0xw(_arg1:PetPicker, _arg2:Vector.<0tK>):void{
            _arg1.setSize(new Size((this.background.width - 10), 240));
            _arg1.1Xp(5);
            _arg1.eB(52);
            _arg1.1EI = false;
            this.1yf.addChild(_arg1);
            this.1yf.x = 4;
            this.1yf.y = 35;
        }

        private function 09H():void{
            1tT.dispatch();
        }

        private function Fl():void{
            addChild(this.background);
            addChild(this.r4);
            addChild(this.1tf);
            this.0I1.addChild(this.23f);
        }

        private function 1bZ():void{
            cp();
        }

        private function 0ke():void{
            this.23f.x = ((this.background.width - this.23f.width) / 2);
            this.23f.y = (this.background.height - (this.23f.height + 10));
        }

        private function 04K():void{
            var _local1:cO = new cO();
            _local1.push(this.r4.textChanged);
            _local1.complete.addOnce(this.FO);
        }

        private function FO():void{
            this.r4.y = 5;
            this.r4.x = ((h.1h9 - this.r4.width) * 0.5);
        }

        private function D2():void{
            this.closed.dispatch();
        }

        public function PC():_1HZ{
            return (1tT);
        }

        public function setState(_arg1:String):void{
            if (_arg1 == 0cu.PETPICKER)
            {
                addChild(this.1yf);
                if (contains(this.0I1))
                {
                    removeChild(this.0I1);
                };
            } else
            {
                if (_arg1 == 0cu.SKINPICKER)
                {
                    addChild(this.0I1);
                    if (contains(this.1yf))
                    {
                        removeChild(this.1yf);
                    };
                };
            };
        }


    }
}//package Ct

