// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.0DJ

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import flash.geom.Rectangle;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import flash.display.Graphics;
    import flash.geom.ColorTransform;
    import flash.utils.getTimer;


    public class _0DJ_ extends Sprite {

        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[_0B9, path_, com.company.util._tu.END_FILL];

        private var width_:int;
        private var height_:int;
        private var speed_:Number;
        private var _0CT:Rectangle;
        private var _1cV:Number;
        private var background_:Sprite;
        private var _1X:Sprite;
        private var yz:Sprite;
        private var _0F4:Sprite;
        private var _1n3:Sprite;
        private var _0zr:int;
        private var _0Bh:Number;
        private var _0B9:GraphicsSolidFill;
        private var path_:GraphicsPath;

        public function _0DJ_(_arg1:int, _arg2:int, _arg3:Number=1, _arg4:Sprite=null){
            this._0B9 = new GraphicsSolidFill(0xFFFFFF, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this._1n3 = _arg4;
            this.background_ = new Sprite();
            this.background_.addEventListener(MouseEvent.MOUSE_DOWN, this.Bp);
            addChild(this.background_);
            this._1X = this._0a3(this.u);
            addChild(this._1X);
            this.yz = this._0a3(this._0Pp);
            addChild(this.yz);
            this._0F4 = this._0a3(this._04C);
            addChild(this._0F4);
            this.resize(_arg1, _arg2, _arg3);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private static function _24v(_arg1:int, _arg2:int, _arg3:Graphics):void{
            _arg3.clear();
            _arg3.beginFill(0x353535, 0.01);
            _arg3.drawRect((-(_arg1) / 2), (-(_arg2) / 2), _arg1, _arg2);
            _arg3.endFill();
            _arg3.beginFill(0xFFFFFF, 1);
            _arg3.moveTo((-(_arg1) / 2), (-(_arg2) / 2));
            _arg3.lineTo((_arg1 / 2), 0);
            _arg3.lineTo((-(_arg1) / 2), (_arg2 / 2));
            _arg3.lineTo((-(_arg1) / 2), (-(_arg2) / 2));
            _arg3.endFill();
        }


        public function _0md():Number{
            return (((this._0F4.y - this._0CT.y) / (this._0CT.height - this._0F4.height)));
        }

        public function _1OQ(_arg1:Number, _arg2:Number, _arg3:Boolean=true):void{
            var _local4:int = (((_arg2 == 0)) ? this._0CT.height : ((_arg1 / _arg2) * this._0CT.height));
            _local4 = Math.min(this._0CT.height, Math.max(this.width_, _local4));
            this._1tw(this.width_, _local4, this._0F4.graphics);
            this._1cV = ((_arg1 / (_arg2 - _arg1)) * 0.33);
            if (_arg3)
            {
                this.Gx(0);
            };
        }

        public function Gx(_arg1:Number):void{
            _arg1 = Math.max(0, Math.min(1, _arg1));
            this._0F4.y = ((_arg1 * (this._0CT.height - this._0F4.height)) + this._0CT.y);
            this._0KN();
        }

        public function _0Ci():void{
            this.Gx((this._0md() - this._1cV));
        }

        public function _1qD():void{
            this.Gx((this._0md() + this._1cV));
        }

        private function _0a3(_arg1:Function):Sprite{
            var _local2:Sprite = new Sprite();
            _local2.addEventListener(MouseEvent.MOUSE_DOWN, _arg1);
            _local2.addEventListener(MouseEvent.ROLL_OVER, this._0bV);
            _local2.addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            return (_local2);
        }

        private function _0bV(_arg1:MouseEvent):void{
            var _local2:Sprite = (_arg1.target as Sprite);
            _local2.transform.colorTransform = new ColorTransform(1, 0.8627, 0.5216);
        }

        private function onRollOut(_arg1:MouseEvent):void{
            var _local2:Sprite = (_arg1.target as Sprite);
            _local2.transform.colorTransform = new ColorTransform(1, 1, 1);
        }

        private function Bp(_arg1:MouseEvent):void{
            if (_arg1.localY < this._0F4.y)
            {
                this._0Ci();
            } else
            {
                this._1qD();
            };
        }

        protected function onAddedToStage(_arg1:Event):void{
            if (this._1n3 != null)
            {
                this._1n3.addEventListener(MouseEvent.MOUSE_WHEEL, this._1Av);
            } else
            {
                if (parent)
                {
                    parent.addEventListener(MouseEvent.MOUSE_WHEEL, this._1Av);
                } else
                {
                    WebMain._0Kr.addEventListener(MouseEvent.MOUSE_WHEEL, this._1Av);
                };
            };
        }

        protected function onRemovedFromStage(_arg1:Event):void{
            if (this._1n3 != null)
            {
                this._1n3.removeEventListener(MouseEvent.MOUSE_WHEEL, this._1Av);
            } else
            {
                if (parent)
                {
                    parent.removeEventListener(MouseEvent.MOUSE_WHEEL, this._1Av);
                } else
                {
                    WebMain._0Kr.removeEventListener(MouseEvent.MOUSE_WHEEL, this._1Av);
                };
            };
            removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        protected function _1Av(_arg1:MouseEvent):void{
            if (_arg1.delta > 0)
            {
                this._0Ci();
            } else
            {
                if (_arg1.delta < 0)
                {
                    this._1qD();
                };
            };
        }

        private function u(_arg1:MouseEvent):void{
            addEventListener(Event.ENTER_FRAME, this._1mn);
            addEventListener(MouseEvent.MOUSE_UP, this._0Pw);
            this._0zr = getTimer();
            this._0Bh = -(this.speed_);
        }

        private function _0Pp(_arg1:MouseEvent):void{
            addEventListener(Event.ENTER_FRAME, this._1mn);
            addEventListener(MouseEvent.MOUSE_UP, this._0Pw);
            this._0zr = getTimer();
            this._0Bh = this.speed_;
        }

        private function _1mn(_arg1:Event):void{
            var _local2:int = getTimer();
            var _local3:Number = ((_local2 - this._0zr) / 1000);
            var _local4:Number = (((this.height_ - (this.width_ * 3)) * _local3) * this._0Bh);
            this.Gx((((this._0F4.y + _local4) - this._0CT.y) / (this._0CT.height - this._0F4.height)));
            this._0zr = _local2;
        }

        private function _0Pw(_arg1:Event):void{
            removeEventListener(Event.ENTER_FRAME, this._1mn);
            removeEventListener(MouseEvent.MOUSE_UP, this._0Pw);
        }

        private function _04C(_arg1:MouseEvent):void{
            this._0F4.startDrag(false, new Rectangle(0, this._0CT.y, 0, (this._0CT.height - this._0F4.height)));
            stage.addEventListener(MouseEvent.MOUSE_UP, this.aJ);
            stage.addEventListener(MouseEvent.MOUSE_MOVE, this._20s);
            this._0KN();
        }

        private function aJ(_arg1:MouseEvent):void{
            stage.removeEventListener(MouseEvent.MOUSE_UP, this.aJ);
            stage.removeEventListener(MouseEvent.MOUSE_MOVE, this._20s);
            this._0F4.stopDrag();
            this._0KN();
        }

        private function _20s(_arg1:MouseEvent):void{
            this._0KN();
        }

        private function _0KN():void{
            dispatchEvent(new Event(Event.CHANGE));
        }

        public function resize(_arg1:int, _arg2:int, _arg3:Number=1):void{
            this.width_ = _arg1;
            this.height_ = _arg2;
            this.speed_ = _arg3;
            var _local4:int = (this.width_ * 0.75);
            this._0CT = new Rectangle(0, (_local4 + 5), this.width_, ((this.height_ - (_local4 * 2)) - 10));
            var _local5:Graphics = this.background_.graphics;
            _local5.clear();
            _local5.beginFill(0x545454, 1);
            _local5.drawRect(this._0CT.x, this._0CT.y, this._0CT.width, this._0CT.height);
            _local5.endFill();
            _24v(_local4, this.width_, this._1X.graphics);
            this._1X.rotation = -90;
            this._1X.x = (this.width_ / 2);
            this._1X.y = (_local4 / 2);
            _24v(_local4, this.width_, this.yz.graphics);
            this.yz.x = (this.width_ / 2);
            this.yz.y = (this.height_ - (_local4 / 2));
            this.yz.rotation = 90;
            this._1tw(this.width_, this.height_, this._0F4.graphics);
            this._0F4.x = 0;
            this._0F4.y = this._0CT.y;
        }

        private function _1tw(_arg1:int, _arg2:int, _arg3:Graphics):void{
            tu.ln(this.path_);
            tu._0S(0, 0, _arg1, _arg2, 4, [1, 1, 1, 1], this.path_);
            _arg3.clear();
            _arg3.drawGraphicsData(this.graphicsData_);
        }


    }
}//package com.company.assembleegameclient.ui

