// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.0Uj

package _1zp{
    import flash.display.Sprite;
    import flash.display.Shape;
    import _CU._13j;
    import flash.geom.Point;
    import flash.events.MouseEvent;
    import flash.text.TextFieldAutoSize;
    import _1n4._1WS;
    import flash.filters.DropShadowFilter;
    import flash.events.Event;

    public class _0Uj extends Sprite {

        private const _0xs:Number = 0;
        private const _0Hg:Number = 1;

        private var _1eH:Shape;
        private var _0Fw:_13j;
        private var w7:Number;
        private var Ao:Boolean;
        private var _case:Point;
        private var LL:Point;

        public function _0Uj(_arg1:Number, _arg2:Number=0xFFFFFF){
            this._case = new Point(0, 0);
            this.LL = new Point(0, 0);
            super();
            this.init();
            this._1nh = _arg1;
            this.draw(0x9B9B9B);
            this.Ao = false;
            this.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            this.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        }

        private function init():void{
            this._0Fw = new _13j().setSize(14).setColor(0xABABAB);
            this._0Fw.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE);
            this._0Fw.setStringBuilder(new _1WS("Vol:"));
            this._0Fw.setBold(true);
            this._0Fw.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            addChild(this._0Fw);
            this._1eH = new Shape();
            this._1eH.x = 20;
            addChild(this._1eH);
            graphics.beginFill(0, 0);
            graphics.drawRect(0, -30, 130, 30);
            graphics.endFill();
        }

        public function get _1nh():Number{
            return (this.w7);
        }

        public function set _1nh(_arg1:Number):void{
            _arg1 = (((_arg1)>this._0Hg) ? this._0Hg : (((_arg1)<this._0xs) ? this._0xs : _arg1));
            this.w7 = _arg1;
            this.draw();
        }

        private function draw(_arg1:uint=0x9B9B9B):void{
            var _local2:* = (this.w7 * 100);
            var _local3:Number = (_local2 * -0.2);
            this._1eH.graphics.clear();
            this._1eH.graphics.lineStyle(2, 0x9B9B9B);
            this._1eH.graphics.moveTo(0, 0);
            this._1eH.graphics.lineTo(0, -1);
            this._1eH.graphics.lineTo(100, -20);
            this._1eH.graphics.lineTo(100, 0);
            this._1eH.graphics.lineTo(0, 0);
            this._1eH.graphics.beginFill(_arg1, 0.8);
            this._1eH.graphics.moveTo(0, 0);
            this._1eH.graphics.lineTo(0, -1);
            this._1eH.graphics.lineTo(_local2, _local3);
            this._1eH.graphics.lineTo(_local2, 0);
            this._1eH.graphics.lineTo(0, 0);
            this._1eH.graphics.endFill();
        }

        private function onMouseDown(_arg1:MouseEvent):void{
            this.Ao = true;
            this._1nh = (_arg1.localX / 100);
            dispatchEvent(new Event(Event.CHANGE, true));
            if (stage)
            {
                stage.addEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
                stage.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            };
        }

        private function onMouseUp(_arg1:MouseEvent):void{
            this.Ao = false;
            if (stage)
            {
                stage.removeEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
            };
        }

        private function onMouseMove(_arg1:MouseEvent):void{
            if (!this.Ao)
            {
                return;
            };
            this._case.x = _arg1.currentTarget.mouseX;
            this.LL = this.globalToLocal(this._case);
            this._1nh = (this.LL.x / 100);
            dispatchEvent(new Event(Event.CHANGE, true));
        }


    }
}//package _1zp

