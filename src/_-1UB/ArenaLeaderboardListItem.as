// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.ArenaLeaderboardListItem

package 1UB{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import flash.display.Bitmap;
    import 1RM.kX;
    import 0uE.5f;
    import 0uE.0Gd;
    import _CU.sb;
    import 1n4.1WS;
    import 1n4.1cA;
    import _04_._1JZ;
    import flash.text.TextFieldAutoSize;
    import flash.events.MouseEvent;
    import Wn.0EB;
    import AO.du;
    import 5z.0tK;
    import flash.filters.DropShadowFilter;

    public class ArenaLeaderboardListItem extends Sprite {

        private static const HEIGHT:int = 60;

        public const X4:_1HZ = new _1HZ(Sprite);
        public const hideTooltip:_1HZ = new _1HZ();

        private var Uf:Sprite;
        private var 1tE:Sprite;
        private var p0:Bitmap;
        private var 1fD:kX;
        private var jg:5f;
        private var rank:int = 0;
        private var 1tY:Bitmap;
        private var T0:Sprite;
        private var sB:0Gd;
        private var tE:sb;
        private var playerName:sb;
        private var waveNumber:sb;
        private var O4:sb;
        private var background:Sprite;
        private var 1cX:Boolean = false;
        private var 1L3:Boolean = false;
        private var 07j:1WS;
        private var 0lL:1WS;
        private var 0bt:1cA;
        private var 18U:1WS;

        public function ArenaLeaderboardListItem(){
            this.Uf = new Sprite();
            this.1tE = new Sprite();
            this.p0 = new Bitmap();
            this.T0 = this.WJ();
            this.tE = this.0Ui();
            this.playerName = this.0Ui();
            this.waveNumber = this.0Ui();
            this.O4 = this.0Ui();
            this.background = this.lg();
            this.07j = new 1WS();
            this.0lL = new 1WS();
            this.0bt = new 1cA();
            this.18U = new 1WS();
            super();
            this.sB = _1JZ.0JF().getInstance(0Gd);
            this.tE.setAutoSize(TextFieldAutoSize.RIGHT);
            this.Fl();
            this.addEventListeners();
        }

        private function addEventListeners():void{
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            this.Uf.addEventListener(MouseEvent.MOUSE_OVER, this.0U5);
            this.Uf.addEventListener(MouseEvent.MOUSE_OUT, this.1jt);
            this.1tE.addEventListener(MouseEvent.MOUSE_OVER, this.e7);
            this.1tE.addEventListener(MouseEvent.MOUSE_OUT, this.0Rf);
        }

        private function Fl():void{
            addChild(this.background);
            addChild(this.Uf);
            addChild(this.T0);
            addChild(this.1tE);
            addChild(this.tE);
            addChild(this.playerName);
            addChild(this.waveNumber);
            addChild(this.O4);
            this.Uf.addChild(this.p0);
        }

        private function 1jt(_arg1:MouseEvent):void{
            this.hideTooltip.dispatch();
        }

        private function 0U5(_arg1:MouseEvent):void{
            if (this.1fD)
            {
                this.X4.dispatch(this.1fD);
            };
        }

        private function 0Rf(_arg1:MouseEvent):void{
            this.hideTooltip.dispatch();
        }

        private function e7(_arg1:MouseEvent):void{
            if (this.1fD)
            {
                this.X4.dispatch(this.jg);
            };
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            if (this.1cX)
            {
                this.background.alpha = 0;
            };
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            if (this.1cX)
            {
                this.background.alpha = 1;
            };
        }

        public function apply(_arg1:0EB, _arg2:Boolean):void{
            this.1cX = !((_arg1 == null));
            if (_arg1)
            {
                this.0J2(_arg1);
                this.1uJ(_arg1);
                if (((_arg1.rank) && (_arg2)))
                {
                    this.tE.visible = true;
                    this.tE.setStringBuilder(this.07j.setString((_arg1.rank + ".")));
                } else
                {
                    this.tE.visible = false;
                };
                if (this.1tY)
                {
                    this.1k2();
                };
                if (_arg1.pet)
                {
                    this.23S(_arg1);
                };
                this.rank = _arg1.rank;
                this.1L3 = _arg1.1L3;
                this.setColor();
            } else
            {
                this.clear();
            };
            this.align();
        }

        private function 1uJ(_arg1:0EB):void{
            this.waveNumber.setStringBuilder(this.0bt.setParams(du.1mC, {waveNumber:(_arg1.R - 1).toString()}));
            this.O4.setStringBuilder(this.18U.setString(this.Ek(Math.floor(_arg1.0e8))));
        }

        private function 0J2(_arg1:0EB):void{
            this.p0.bitmapData = _arg1.1me;
            this.1fD = new kX(_arg1);
            this.playerName.setStringBuilder(this.0lL.setString(_arg1.name));
        }

        private function 23S(_arg1:0EB):void{
            this.jg = new 5f(_arg1.pet);
            this.1tY = this.Qx(_arg1.pet, 48);
            this.1tE.addChild(this.1tY);
            this.T0.visible = true;
        }

        private function 1k2():void{
            this.1tE.removeChild(this.1tY);
            this.jg = null;
            this.1tY = null;
            this.T0.visible = false;
        }

        private function Qx(_arg1:0tK, _arg2:int):Bitmap{
            return (new Bitmap(this.sB.1ZW(_arg1, _arg2)));
        }

        public function setColor():void{
            var _local1:uint = 0xFFFFFF;
            if (this.1L3)
            {
                _local1 = 16567065;
            } else
            {
                if (this.rank == 1)
                {
                    _local1 = 16777103;
                };
            };
            this.playerName.setColor(_local1);
            this.waveNumber.setColor(_local1);
            this.O4.setColor(_local1);
            this.tE.setColor(_local1);
        }

        public function clear():void{
            this.p0.bitmapData = null;
            this.playerName.setStringBuilder(this.0lL.setString(""));
            this.waveNumber.setStringBuilder(this.0bt.setParams(""));
            this.O4.setStringBuilder(this.18U.setString(""));
            this.tE.setStringBuilder(this.07j.setString(""));
            if (this.1tY)
            {
                this.1k2();
            };
            this.1tY = null;
            this.T0.visible = false;
            this.rank = 0;
        }

        private function 0Ui():sb{
            var _local1:sb;
            _local1 = new sb();
            _local1.setBold(true).setSize(24);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            return (_local1);
        }

        private function lg():Sprite{
            var _local1:Sprite = new Sprite();
            _local1.graphics.beginFill(0, 0.5);
            _local1.graphics.drawRect(0, 0, 750, 60);
            _local1.graphics.endFill();
            _local1.alpha = 0;
            return (_local1);
        }

        private function WJ():Sprite{
            var _local1:Sprite = new Sprite();
            _local1.graphics.beginFill(0x545454);
            _local1.graphics.drawRoundRect(0, 0, 40, 40, 10, 10);
            _local1.graphics.endFill();
            _local1.visible = false;
            return (_local1);
        }

        private function Ek(_arg1:int):String{
            var _local2:int = Math.floor((_arg1 / 60));
            var _local3:String = ((((_local2 < 10)) ? "0" : "") + _local2.toString());
            var _local4:int = (_arg1 % 60);
            var _local5:String = ((((_local4 < 10)) ? "0" : "") + _local4.toString());
            return (((_local3 + ":") + _local5));
        }

        private function align():void{
            this.tE.x = 75;
            this.tE.y = ((HEIGHT / 2) - (this.tE.height / 2));
            this.p0.x = 110;
            this.p0.y = (((HEIGHT / 2) - (this.p0.height / 2)) - 3);
            if (this.1tY)
            {
                this.1tY.x = 170;
                this.1tY.y = ((HEIGHT / 2) - (this.1tY.height / 2));
                this.T0.x = 175;
                this.T0.y = ((HEIGHT / 2) - (this.T0.height / 2));
            };
            this.playerName.x = 230;
            this.playerName.y = ((HEIGHT / 2) - (this.playerName.height / 2));
            this.waveNumber.x = 485;
            this.waveNumber.y = ((HEIGHT / 2) - (this.waveNumber.height / 2));
            this.O4.x = 635;
            this.O4.y = ((HEIGHT / 2) - (this.O4.height / 2));
        }


    }
}//package 1UB

