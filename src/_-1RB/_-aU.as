// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1RB.aU

package 1RB{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 8u.Timespan;
    import 8u.1QY;
    import __AS3__.vec.Vector;
    import _CU._13j;
    import _1aA.Lz;
    import com.company.assembleegameclient.ui.0DJ;
    import zD.05l;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import flash.display.Shape;
    import flash.display.Graphics;
    import com.company.rotmg.graphics.ScreenGraphic;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import __AS3__.vec.*;

    public class aU extends Sprite {

        public const 4N:_1HZ = new _1HZ(Timespan);
        public const 1Bk:_1HZ = new _1HZ(1QY);
        public const close:_1HZ = new _1HZ();
        private const 1YB:Vector.<hz> = new <hz>[];
        private const ug:Object = {}

        private var title:_13j;
        private var 0d4:_13j;
        private var 3B:_13j;
        private var BB:Sprite;
        private var 1tf:Lz;
        private var 1I-:0DJ;
        private var mw:Sprite;
        private var lt:0mX;
        private var legends:Vector.<1QY>;
        private var count:int;

        public function aU(){
            this.0w();
            this.qn();
            this.0Yb();
            this.dI();
            this.1kR();
            this.1A-();
            this.8G();
            this.VB();
            this.0uR();
            this.1gH();
        }

        private function 0w():void{
            addChild(new 05l());
        }

        private function qn():void{
            this.title = new _13j().setSize(32).setColor(0xB3B3B3);
            this.title.setAutoSize(TextFieldAutoSize.CENTER);
            this.title.setBold(true);
            this.title.setStringBuilder(new 1cA().setParams(du.QJ));
            this.title.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.title.x = (400 - (this.title.width / 2));
            this.title.y = 24;
            addChild(this.title);
        }

        private function 0Yb():void{
            this.0d4 = new _13j().setSize(22).setColor(0xB3B3B3);
            this.0d4.setBold(true);
            this.0d4.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE);
            this.0d4.setStringBuilder(new 1cA().setParams(du.1d3));
            this.0d4.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.0d4.x = (800 / 2);
            this.0d4.y = (600 / 2);
            this.0d4.visible = false;
            addChild(this.0d4);
        }

        private function dI():void{
            this.3B = new _13j().setSize(22).setColor(0xB3B3B3);
            this.3B.setBold(true);
            this.3B.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE);
            this.3B.setStringBuilder(new 1cA().setParams(du.1sV));
            this.3B.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.3B.x = (800 / 2);
            this.3B.y = (600 / 2);
            this.3B.visible = false;
            addChild(this.3B);
        }

        private function 1kR():void{
            var _local1:Shape;
            _local1 = new Shape();
            var _local2:Graphics = _local1.graphics;
            _local2.beginFill(0);
            _local2.drawRect(0, 0, hz.WIDTH, 430);
            _local2.endFill();
            this.BB = new Sprite();
            this.BB.x = 10;
            this.BB.y = 110;
            this.BB.addChild(_local1);
            this.BB.mask = _local1;
            addChild(this.BB);
        }

        private function 1A-():void{
            addChild(new ScreenGraphic());
        }

        private function 8G():void{
            var _local1:Shape = new Shape();
            addChild(_local1);
            var _local2:Graphics = _local1.graphics;
            _local2.lineStyle(2, 0x545454);
            _local2.moveTo(0, 100);
            _local2.lineTo(800, 100);
        }

        private function VB():void{
            this.1I- = new 0DJ(16, 400);
            this.1I-.x = ((800 - this.1I-.width) - 4);
            this.1I-.y = 104;
            addChild(this.1I-);
        }

        private function 0uR():void{
            var _local1:Vector.<Timespan> = Timespan.0hP;
            var _local2:int = _local1.length;
            var _local3:int;
            while (_local3 < _local2)
            {
                this.0VN(_local1[_local3], _local3);
                _local3++;
            }
        }

        private function 0VN(_arg1:Timespan, _arg2:int):0mX{
            var _local3:0mX = new 0mX(_arg1);
            this.ug[_arg1.67()] = _local3;
            _local3.x = (20 + (_arg2 * 90));
            _local3.y = 70;
            _local3.selected.add(this.0fF);
            addChild(_local3);
            return (_local3);
        }

        private function 0fF(_arg1:0mX):void{
            if (this.lt != _arg1)
            {
                this.0dx(_arg1);
            }
        }

        private function 0dx(_arg1:0mX):void{
            this.ae(_arg1);
            this.4N.dispatch(this.lt.0A());
        }

        private function ae(_arg1:0mX):void{
            ((this.lt) && (this.lt.eR(false)));
            this.lt = _arg1;
            this.lt.eR(true);
        }

        private function 1gH():void{
            this.1tf = new Lz(du.1vx, 36, false);
            this.1tf.setAutoSize(TextFieldAutoSize.CENTER);
            this.1tf.setVerticalAlign(_13j.MIDDLE);
            this.1tf.x = 400;
            this.1tf.y = 553;
            addChild(this.1tf);
            this.1tf.addEventListener(MouseEvent.CLICK, this.onCloseClick);
        }

        private function onCloseClick(_arg1:MouseEvent):void{
            this.close.dispatch();
        }

        public function clear():void{
            ((this.mw) && (this.1GQ()));
            this.mw = null;
            this.1I-.visible = false;
        }

        private function 1GQ():void{
            var _local1:hz;
            for each (_local1 in this.1YB)
            {
                _local1.selected.remove(this.24X);
            }
            this.1YB.length = 0;
            this.BB.removeChild(this.mw);
            this.mw = null;
        }

        public function RU(_arg1:Timespan, _arg2:Vector.<1QY>):void{
            this.clear();
            this.ae(this.ug[_arg1.67()]);
            this.mw = new Sprite();
            this.legends = _arg2;
            this.count = _arg2.length;
            this.1YB.length = this.count;
            this.3B.visible = (this.count == 0);
            this.4l();
            this.BB.addChild(this.mw);
            this.1fT();
        }

        private function 4l():void{
            var _local1:int;
            while (_local1 < this.count)
            {
                this.1YB[_local1] = this.1b9(_local1);
                _local1++;
            }
        }

        private function 1b9(_arg1:int):hz{
            var _local2:1QY = this.legends[_arg1];
            _local2.0am = (_arg1 + 1);
            var _local3:hz = new hz(_local2);
            _local3.y = (_arg1 * hz.HEIGHT);
            _local3.selected.add(this.24X);
            this.mw.addChild(_local3);
            return (_local3);
        }

        private function 1fT():void{
            if (this.mw.height > 400)
            {
                this.1I-.visible = true;
                this.1I-.1OQ(400, this.mw.height);
                this.1I-.addEventListener(Event.CHANGE, this.ef);
                this.gu();
            } else
            {
                this.1I-.removeEventListener(Event.CHANGE, this.ef);
                this.1I-.visible = false;
            }
        }

        private function gu():void{
            var _local2:int;
            var _local3:int;
            var _local1:1QY = this.zc();
            if (_local1)
            {
                _local2 = this.legends.indexOf(_local1);
                _local3 = ((_local2 + 0.5) * hz.HEIGHT);
                this.1I-.Gx(((_local3 - 200) / (this.mw.height - 400)));
            }
        }

        private function zc():1QY{
            var _local1:1QY;
            var _local2:1QY;
            for each (_local2 in this.legends)
            {
                if (_local2.0dy)
                {
                    _local1 = _local2;
                    break;
                }
            }
            return (_local1);
        }

        private function 24X(_arg1:1QY):void{
            this.1Bk.dispatch(_arg1);
        }

        private function ef(_arg1:Event):void{
            this.mw.y = (-(this.1I-.0md()) * (this.mw.height - 400));
        }

        public function 0Hk():void{
            this.0d4.visible = true;
        }

        public function 1Pi():void{
            this.0d4.visible = false;
        }


    }
}//package 1RB

