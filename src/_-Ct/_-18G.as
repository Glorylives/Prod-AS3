// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.18G

package Ct{
    import 0uE.IJ;
    import 0IN.1qO;
    import 0IN.h;
    import _CU._13j;
    import 0uE.qZ;
    import AO.du;
    import 0uE.PetFeeder;
    import 0uE.KC;
    import __AS3__.vec.Vector;
    import 0uE.PetAbilityMeter;
    import com.company.assembleegameclient.ui.1-p;
    import _Jy._1HZ;
    import 1n4.1cA;
    import flash.events.Event;
    import 5z.1dH;
    import 0IN.1co;
    import 5z.0tK;
    import 5z.25U;
    import 1PB.cO;
    import __AS3__.vec.*;

    public class 18G extends 23L {

        private const background:IJ = 1qO.S3(h.1h9, h.16X);
        private const r4:_13j = 1qO.18-(0xB3B3B3, 18, true);
        private const Si:qZ = 1qO.2-j(du.0zt, (h.16X - 35));
        private const y8:PetFeeder = 1qO.wj();
        private const 1tf:KC = 1qO.19W(h.1h9);
        private const 0Io:Vector.<PetAbilityMeter> = 1qO.1jn();
        private const 1iL:Vector.<Boolean> = Vector.<Boolean>([false, false, false]);
        private const 1Eu:1-p = new 1-p((h.1h9 - 25), 0);
        public const 1oD:_1HZ = new _1HZ();
        public const closed:_1HZ = new _1HZ();

        public var 0Or:_1HZ;
        public var 1jE:_1HZ;


        public function init():void{
            this.r4.setStringBuilder(new 1cA().setParams(du.259));
            this.y8.1oD.addOnce(this.21K);
            this.0Or = this.Si.q1;
            this.1jE = this.Si.0su;
            this.1tf.clicked.add(this.1qf);
            this.y8.1Ua.add(this.0no);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.04K();
            this.Fl();
            this.1bZ();
        }

        public function 4T():void{
            this.y8.0Ng();
            this.y8.1Fl();
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this.y8.1Ua.remove(this.0no);
            this.1tf.clicked.remove(this.1qf);
        }

        private function 0no(_arg1:Boolean, _arg2:0tK):void{
            var _local3:1dH;
            this.Si.r3(!(_arg1));
            if (_arg2)
            {
                if (!_arg2.21t())
                {
                    this.Si.setPrefix(du.0zt);
                    _local3 = 1dH.0Yx(_arg2.1qz());
                    this.Si.0RN(1co.0ju(_local3));
                    this.Si.1vA(1co.10t(_local3));
                } else
                {
                    this.Si.Yo();
                    this.Si.setPrefix(du.261);
                };
            } else
            {
                this.Si.setPrefix(du.00V);
            };
        }

        private function 1qf():void{
            this.closed.dispatch();
        }

        private function 21K():void{
            this.1oD.dispatch();
        }

        public function destroy():void{
            var _local1:PetAbilityMeter;
            for each (_local1 in this.0Io)
            {
                _local1.0O-.remove(this.dp);
            };
            this.Si.1yi.remove(this.1Xa);
        }

        public function IS(_arg1:Array, _arg2:int):void{
            var _local4:25U;
            var _local5:PetAbilityMeter;
            var _local6:PetAbilityMeter;
            var _local3:int;
            if (_arg1 == null)
            {
                for each (_local5 in this.0Io)
                {
                    _local5.visible = false;
                };
            };
            for each (_local4 in _arg1)
            {
                if (_local3 < this.0Io.length)
                {
                    _local6 = this.0Io[_local3];
                    _local6.index = _local3;
                    _local6.max = _arg2;
                    _local6.visible = true;
                    _local6.1PF(_local4);
                    _local6.0O-.add(this.dp);
                    _local3++;
                };
            };
        }

        private function dp(_arg1:PetAbilityMeter, _arg2:Boolean):void{
            this.1iL[_arg1.index] = _arg2;
            var _local3:Boolean = this.pH();
            this.Si.r3(_local3);
            this.y8.dm(_local3);
            ((!(_local3)) && (this.y8.0Ng()));
        }

        private function pH():Boolean{
            var _local2:Boolean;
            var _local1:Boolean;
            for each (_local2 in this.1iL)
            {
                if (_local2)
                {
                    _local1 = true;
                    break;
                };
            };
            return (_local1);
        }

        private function Fl():void{
            var _local1:PetAbilityMeter;
            addChild(this.background);
            addChild(this.r4);
            addChild(this.Si);
            addChild(this.y8);
            addChild(this.1tf);
            addChild(this.1Eu);
            for each (_local1 in this.0Io)
            {
                _local1.visible = false;
                addChild(_local1);
            };
        }

        private function 1bZ():void{
            cp();
            this.0rz();
            this.1jo();
        }

        private function 1jo():void{
            this.y8.x = Math.round(((h.1h9 - this.y8.width) * 0.5));
        }

        private function 04K():void{
            var _local2:PetAbilityMeter;
            this.r4.textChanged.addOnce(this.FO);
            var _local1:cO = new cO();
            for each (_local2 in this.0Io)
            {
                _local1.push(_local2.1yi);
            };
            _local1.complete.addOnce(this.08o);
            this.Si.1yi.add(this.1Xa);
        }

        private function FO():void{
            this.r4.y = 5;
            this.r4.x = ((h.1h9 - this.r4.width) * 0.5);
        }

        private function 08o():void{
            var _local2:PetAbilityMeter;
            var _local1:int = (this.1Eu.y + 14);
            for each (_local2 in this.0Io)
            {
                _local2.x = ((h.1h9 - 227) * 0.5);
                _local2.y = _local1;
                _local1 = (_local1 + (_local2.height + 10));
            };
        }

        private function 0rz():void{
            this.1Eu.x = (((h.1h9 - this.1Eu.width) + 8) * 0.5);
            this.1Eu.y = 152;
        }

        private function 1Xa():void{
            this.Si.x = ((h.1h9 - this.Si.width) / 2);
        }


    }
}//package Ct

