// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.20c

package _1aA{
    import flash.display.Sprite;
    import BG.02I;
    import _Jy._1HZ;
    import zD.05l;
    import com.company.rotmg.graphics.ScreenGraphic;
    import 1jB.1sM;
    import flash.events.MouseEvent;
    import _CU._13j;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.appengine._Cp;
    import com.company.googleanalytics.GA;
    import WZ.0Te;
    import flash.events.Event;

    public class 20c extends Sprite {

        private var 1w8:Lz;
        private var 0qv:02I;
        private var CC:Object;
        public var tooltip:_1HZ;
        public var close:_1HZ;
        public var selected:_1HZ;
        public var buy:_1HZ;
        private var 171:Boolean = false;

        public function 20c(){
            this.CC = {};
            super();
            this.tooltip = new _1HZ(Sprite);
            this.selected = new _1HZ(int);
            this.close = new _1HZ();
            this.buy = new _1HZ(int);
            addChild(new 05l());
            addChild(new 01l());
            addChild(new ScreenGraphic());
        }

        public function initialize(_arg1:0Te):void{
            var _local2:int;
            var _local3:XML;
            var _local4:int;
            var _local5:String;
            var _local6:Boolean;
            var _local7:CharacterBox;
            if (this.171)
            {
                return;
            };
            this.171 = true;
            this.1w8 = new Lz(1sM.BACK, 36, false);
            this.1w8.addEventListener(MouseEvent.CLICK, this.1XA);
            this.1w8.setVerticalAlign(_13j.MIDDLE);
            addChild(this.1w8);
            this.0qv = new 02I();
            this.0qv.draw(_arg1.0ce(), _arg1.15g());
            addChild(this.0qv);
            _local2 = 0;
            while (_local2 < ObjectLibrary.1wa.length)
            {
                _local3 = ObjectLibrary.1wa[_local2];
                _local4 = int(_local3.@type);
                _local5 = _local3.@id;
                if (_arg1.0Po(_local5, _Cp.1xE))
                {
                } else
                {
                    _local6 = _arg1.0Po(_local5, _Cp.5o);
                    _local7 = new CharacterBox(_local3, _arg1.OO()[_local4], _arg1, _local6);
                    _local7.x = (((50 + (140 * int((_local2 % 5)))) + 70) - (_local7.width / 2));
                    _local7.y = (88 + (140 * int((_local2 / 5))));
                    this.CC[_local4] = _local7;
                    _local7.addEventListener(MouseEvent.ROLL_OVER, this.2-o);
                    _local7.addEventListener(MouseEvent.ROLL_OUT, this.cw);
                    _local7.0En.add(this.1UH);
                    _local7.0it.add(this.1DM);
                    if ((((_local4 == 784)) && (!(_local7.0ma))))
                    {
                        _local7.KV(75);
                    };
                    addChild(_local7);
                };
                _local2++;
            };
            this.1w8.x = ((stage.stageWidth / 2) - (this.1w8.width / 2));
            this.1w8.y = 550;
            this.0qv.x = stage.stageWidth;
            this.0qv.y = 20;
            GA.global().trackPageview("/newCharScreen");
        }

        private function 1XA(_arg1:Event):void{
            this.close.dispatch();
        }

        private function 2-o(_arg1:MouseEvent):void{
            var _local2:CharacterBox = (_arg1.currentTarget as CharacterBox);
            _local2.pS(true);
            this.tooltip.dispatch(_local2.getTooltip());
        }

        private function cw(_arg1:MouseEvent):void{
            var _local2:CharacterBox = (_arg1.currentTarget as CharacterBox);
            _local2.pS(false);
            this.tooltip.dispatch(null);
        }

        private function 1UH(_arg1:MouseEvent):void{
            this.tooltip.dispatch(null);
            var _local2:CharacterBox = (_arg1.currentTarget.parent as CharacterBox);
            if (!_local2.0ma)
            {
                return;
            };
            var _local3:int = _local2.objectType();
            var _local4:String = ObjectLibrary.118[_local3];
            GA.global().trackEvent("character", "create", _local4);
            this.selected.dispatch(_local3);
        }

        public function 91(_arg1:int, _arg2:int):void{
            this.0qv.draw(_arg1, _arg2);
        }

        public function update(_arg1:0Te):void{
            var _local3:XML;
            var _local4:int;
            var _local5:String;
            var _local6:Boolean;
            var _local7:CharacterBox;
            var _local2:int;
            while (_local2 < ObjectLibrary.1wa.length)
            {
                _local3 = ObjectLibrary.1wa[_local2];
                _local4 = int(_local3.@type);
                _local5 = String(_local3.@id);
                if (_arg1.0Po(_local5, Cp.1xE))
                {
                } else
                {
                    _local6 = _arg1.0Po(_local5, Cp.5o);
                    _local7 = this.CC[_local4];
                    if (_local7)
                    {
                        _local7.0ok(true);
                        if (((_local6) || (_arg1.1if(_local4))))
                        {
                            _local7.unlock();
                        };
                    };
                };
                _local2++;
            };
        }

        private function 1DM(_arg1:MouseEvent):void{
            var _local3:int;
            var _local2:CharacterBox = (_arg1.currentTarget.parent as CharacterBox);
            if (((_local2) && (!(_local2.0ma))))
            {
                _local3 = int(_local2.playerXML_.@type);
                _local2.0ok(false);
                this.buy.dispatch(_local3);
            };
        }


    }
}//package _1aA

