// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.PetAbilityMeter

package 0uE{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import 0IN.1qO;
    import 0IN.h;
    import 1r-.1L6;
    import flash.events.Event;
    import 0IN.0Mf;
    import 5z.25U;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import 1PB.cO;
    import 1Bg.1hy;
    import 1Bg.of;
    import 1r-.*;

    public class PetAbilityMeter extends Sprite implements u- {

        public const 0O-:_1HZ = new _1HZ(PetAbilityMeter, Boolean);
        private const lc:_13j = 1qO.18-(0xB3B3B3, 14, true, true);
        private const 0Yw:_13j = 1qO.18-(0xB3B3B3, 14, true, true);
        private const 08D:253 = new 253(h.1Aw, h.1Hv);

        private var 0MT:Boolean = true;
        private var 19h:int = 0;
        private var 0JX:int = 0;
        private var 0aG:Number = 0;
        public var 1yi:_1HZ;
        public var max:int;
        public var index:int;
        private var 1DY:1L6;

        public function PetAbilityMeter(){
            this.1yi = new _1HZ();
            this.1DY = new 1L6();
            super();
            this.08D.0O-.add(this.1Vk);
            this.04K();
            this.Fl();
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.1DY.1pS(this);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this.08D.0O-.remove(this.1Vk);
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        public function 1PF(_arg1:25U):void{
            var _local2:int;
            var _local3:int;
            this.19h = _arg1.points;
            this.0JX = _arg1.level;
            this.1Nv(_arg1.name);
            this.setUnlocked(_arg1.1AV());
            this.le(((this.0MT) ? _arg1.level : 0));
            this.1Vk(false);
            this.1DY.tooltip = new 1rq(_arg1);
            if (this.0MT)
            {
                _local2 = Math.max(0, 0Mf.0-s(_arg1.points, _arg1.level));
                _local3 = 0Mf.008(_arg1.level);
                _local2 = (((_arg1.level >= this.max)) ? _local3 : _local2);
                this.0u6(_local2, _local3);
            };
            _arg1.1iq.add(this.0v1);
        }

        private function 0v1(_arg1:25U):void{
            var _local2:Number;
            this.setUnlocked(_arg1.1AV());
            if ((((_arg1.points > this.19h)) && (this.0MT)))
            {
                this.19h = _arg1.points;
                this.0aG = 0Mf.0-s(_arg1.points, this.0JX);
                _local2 = 0Mf.008(this.0JX);
                if (((!((_local2 == 0))) && ((this.0aG > _local2))))
                {
                    this.0aG = (this.0aG - _local2);
                    this.08D.0zw.add(this.0Q-);
                    this.08D.fill();
                    this.1Vk(true);
                } else
                {
                    this.0u6(this.0aG, _local2);
                };
            };
        }

        private function 0Q-():void{
            var _local2:Number;
            var _local1:Boolean;
            if (!_local1)
            {
                this.0JX++;
                this.le(this.0JX, true);
                _local2 = 0Mf.008(this.0JX);
                if (this.0aG > _local2)
                {
                    this.08D.reset();
                    this.0aG = (this.0aG - _local2);
                    this.08D.fill();
                } else
                {
                    this.08D.0zw.remove(this.0Q-);
                    if (this.0JX >= this.max)
                    {
                        this.08D.0qP(null);
                        this.0aG = 0;
                    } else
                    {
                        this.08D.reset();
                        this.0u6(this.0aG, _local2);
                    };
                };
            };
        }

        public function 1Nv(_arg1:String):void{
            this.0Yw.setStringBuilder(new 1cA().setParams(_arg1));
        }

        public function le(_arg1:int, _arg2:Boolean=false):void{
            var _local3:String = (((_arg1 >= this.max)) ? du.1Oq : du.0eK);
            this.lc.setColor(((_arg2) ? 1572859 : (((_arg1 >= this.max)) ? h.YP : 0xB3B3B3)));
            this.lc.setStringBuilder(new 1cA().setParams(_local3, {level:_arg1.toString()}));
            this.lc.textChanged.addOnce(this.Jg);
        }

        public function 0u6(_arg1:int, _arg2:int):void{
            this.08D.1gg(_arg2);
            this.08D.11i(_arg1);
        }

        public function setUnlocked(_arg1:Boolean):void{
            var _local2:int;
            var _local3:Array;
            if (this.0MT != _arg1)
            {
                this.0MT = _arg1;
                _local2 = ((_arg1) ? 0xB3B3B3 : 0x565656);
                _local3 = ((_arg1) ? [new DropShadowFilter(0, 0, 0)] : []);
                this.0Yw.setColor(_local2);
                this.0Yw.filters = _local3;
                this.lc.visible = _arg1;
            };
        }

        private function Fl():void{
            addChild(this.0Yw);
            addChild(this.lc);
            addChild(this.08D);
        }

        private function 04K():void{
            var _local1:cO = new cO();
            _local1.push(this.lc.textChanged);
            _local1.push(this.0Yw.textChanged);
            _local1.complete.addOnce(this.FO);
        }

        private function Jg():void{
            this.08D.y = 21;
            this.lc.x = (h.1Aw - this.lc.width);
        }

        private function FO():void{
            this.Jg();
            this.1yi.dispatch();
        }

        private function 1Vk(_arg1:Boolean):void{
            this.lc.setColor(((_arg1) ? 1572859 : (((this.0JX >= this.max)) ? h.YP : 0xB3B3B3)));
            this.0Yw.setColor(((_arg1) ? 1572859 : (((this.0JX >= 100)) ? h.YP : 0xB3B3B3)));
            if (((!(_arg1)) && ((this.0JX >= 100))))
            {
                this.08D.02J(h.YP);
            };
            this.0O-.dispatch(this, _arg1);
        }

        public function 4-(_arg1:1hy):void{
            this.1DY.4-(_arg1);
        }

        public function Bs():1hy{
            return (this.1DY.Bs());
        }

        public function na(_arg1:of):void{
            this.1DY.na(_arg1);
        }

        public function w1():of{
            return (this.1DY.w1());
        }


    }
}//package 0uE

