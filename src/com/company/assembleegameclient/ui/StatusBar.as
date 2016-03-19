// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.StatusBar

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import _1n4._1cA;
    import _1n4._1WS;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;

    public class StatusBar extends Sprite {

        public static var lQ:_1HZ = new _1HZ(Boolean);

        public var w_:int;
        public var h_:int;
        public var color_:uint;
        public var _9l:uint;
        public var _11:uint;
        public var _1Tw:uint;
        public var val_:int = -1;
        public var _22Y:int = -1;
        public var boost_:int = -1;
        public var _07M:int = -1;
        private var labelText_:_13j;
        private var _0b4:_1cA;
        private var rN:_13j;
        private var _0sS:_1WS;
        private var _14v:_13j;
        private var _1i8:_13j;
        public var _1w0:Sprite;
        private var NR:Sprite;
        private var _08p:Number;
        private var _0UR:Number;
        public var _01:Boolean = false;
        private var _0Qo:Boolean = false;
        private var _0vN:int;
        private var _0o8:int = -1;
        private var speed:Number = 0.1;

        public function StatusBar(_arg1:int, _arg2:int, _arg3:uint, _arg4:uint, _arg5:String=null){
            this.NR = new Sprite();
            super();
            addChild(this.NR);
            this.w_ = _arg1;
            this.h_ = _arg2;
            this._08p = (this.color_ = _arg3);
            this._0UR = (this._9l = _arg4);
            this._1Tw = 0xFFFFFF;
            if (((!((_arg5 == null))) && (!((_arg5.length == 0)))))
            {
                this.labelText_ = new _13j().setSize(14).setColor(this._1Tw);
                this.labelText_.setBold(true);
                this._0b4 = new _1cA().setParams(_arg5);
                this.labelText_.setStringBuilder(this._0b4);
                this._0yy(this.labelText_);
                this.labelText_.filters = [new DropShadowFilter(0, 0, 0)];
                addChild(this.labelText_);
            };
            this.rN = new _13j().setSize(14).setColor(0xFFFFFF);
            this.rN.setBold(true);
            this.rN.filters = [new DropShadowFilter(0, 0, 0)];
            this._0yy(this.rN);
            this._0sS = new _1WS();
            this._14v = new _13j().setSize(14).setColor(this._1Tw);
            this._14v.setBold(true);
            this._14v.alpha = 0.6;
            this._0yy(this._14v);
            this._14v.filters = [new DropShadowFilter(0, 0, 0)];
            this._1w0 = new Sprite();
            this._1w0.x = (this.w_ - 25);
            this._1w0.y = -3;
            this._1w0.graphics.beginFill(0xFF00FF, 0);
            this._1w0.graphics.drawRect(0, 0, 20, 20);
            this._1w0.addEventListener(MouseEvent.MOUSE_OVER, this._1g7);
            this._1w0.addEventListener(MouseEvent.MOUSE_OUT, this.qC);
            this._1i8 = new _13j().setSize(14).setColor(9493531);
            this._1i8.setBold(true);
            this._1i8.setStringBuilder(new _1WS("x2"));
            this._1i8.filters = [new DropShadowFilter(0, 0, 0)];
            this._1w0.addChild(this._1i8);
            if (!Parameters.data_.toggleBarText)
            {
                addEventListener(MouseEvent.ROLL_OVER, this.onMouseOver);
                addEventListener(MouseEvent.ROLL_OUT, this.onMouseOut);
            };
            lQ.add(this._1NO);
        }

        public function _0yy(_arg1:_13j):void{
            _arg1.setVerticalAlign(_13j.MIDDLE);
            _arg1.y = ((this.h_ / 2) + 1);
        }

        private function _1g7(_arg1:MouseEvent):void{
            dispatchEvent(new Event("MULTIPLIER_OVER"));
        }

        private function qC(_arg1:MouseEvent):void{
            dispatchEvent(new Event("MULTIPLIER_OUT"));
        }

        public function draw(_arg1:int, _arg2:int, _arg3:int, _arg4:int=-1):void{
            if (_arg2 > 0)
            {
                _arg1 = Math.min(_arg2, Math.max(0, _arg1));
            };
            if ((((((((_arg1 == this.val_)) && ((_arg2 == this._22Y)))) && ((_arg3 == this.boost_)))) && ((_arg4 == this._07M))))
            {
                return;
            };
            this.val_ = _arg1;
            this._22Y = _arg2;
            this.boost_ = _arg3;
            this._07M = _arg4;
            this._1xt();
        }

        public function bM(_arg1:String, _arg2:Object=null):void{
            this._0b4.setParams(_arg1, _arg2);
            this.labelText_.setStringBuilder(this._0b4);
        }

        private function _073(_arg1:uint):void{
            this._1Tw = _arg1;
            if (this._14v != null)
            {
                this._14v.setColor(this._1Tw);
            };
            this.rN.setColor(this._1Tw);
        }

        public function _1NO(_arg1:Boolean):void{
            this._01 = false;
            if (_arg1)
            {
                removeEventListener(MouseEvent.ROLL_OVER, this.onMouseOver);
                removeEventListener(MouseEvent.ROLL_OUT, this.onMouseOut);
            } else
            {
                addEventListener(MouseEvent.ROLL_OVER, this.onMouseOver);
                addEventListener(MouseEvent.ROLL_OUT, this.onMouseOut);
            };
            this._1xt();
        }

        private function _1xt():void{
            graphics.clear();
            this.NR.graphics.clear();
            var _local1:uint = 0xFFFFFF;
            if ((((this._07M > 0)) && (((this._22Y - this.boost_) == this._07M))))
            {
                _local1 = 0xFCDF00;
            } else
            {
                if (this.boost_ > 0)
                {
                    _local1 = 6206769;
                };
            };
            if (this._1Tw != _local1)
            {
                this._073(_local1);
            };
            graphics.beginFill(this._9l);
            graphics.drawRect(0, 0, this.w_, this.h_);
            graphics.endFill();
            if (this._0Qo)
            {
                this.NR.graphics.beginFill(this._11);
                this.NR.graphics.drawRect(0, 0, this.w_, this.h_);
            };
            this.NR.graphics.beginFill(this.color_);
            if (this._22Y > 0)
            {
                this.NR.graphics.drawRect(0, 0, (this.w_ * (this.val_ / this._22Y)), this.h_);
            } else
            {
                this.NR.graphics.drawRect(0, 0, this.w_, this.h_);
            };
            this.NR.graphics.endFill();
            if (contains(this.rN))
            {
                removeChild(this.rN);
            };
            if (contains(this._14v))
            {
                removeChild(this._14v);
            };
            if (((Parameters.data_.toggleBarText) || (((this._01) && ((this.h_ > 4))))))
            {
                this.yQ();
            };
        }

        public function yQ():void{
            if (this._22Y > 0)
            {
                this.rN.setStringBuilder(this._0sS.setString(((this.val_ + "/") + this._22Y)));
            } else
            {
                this.rN.setStringBuilder(this._0sS.setString(("" + this.val_)));
            };
            if (!contains(this.rN))
            {
                this.rN.mouseEnabled = false;
                this.rN.mouseChildren = false;
                addChild(this.rN);
            };
            if (this.boost_ != 0)
            {
                this._14v.setStringBuilder(this._0sS.setString((((" (" + (((this.boost_ > 0)) ? "+" : "")) + this.boost_.toString()) + ")")));
                if (!contains(this._14v))
                {
                    this._14v.mouseEnabled = false;
                    this._14v.mouseChildren = false;
                    addChild(this._14v);
                };
                this.rN.x = ((this.w_ / 2) - ((this.rN.width + this._14v.width) / 2));
                this._14v.x = (this.rN.x + this.rN.width);
            } else
            {
                this.rN.x = ((this.w_ / 2) - (this.rN.width / 2));
                if (contains(this._14v))
                {
                    removeChild(this._14v);
                };
            };
        }

        public function _01S():void{
            this._1w0.mouseEnabled = false;
            this._1w0.mouseChildren = false;
            addChild(this._1w0);
            this._0NV(3, 9493531, 0xFFFFFF);
        }

        public function _0zD():void{
            if (this._1w0.parent)
            {
                removeChild(this._1w0);
            };
        }

        public function _0NV(_arg1:Number, _arg2:Number, _arg3:Number):void{
            this._0Qo = true;
            this.color_ = _arg2;
            this._11 = _arg3;
            this._0vN = _arg1;
            this._1xt();
            addEventListener(Event.ENTER_FRAME, this._1Bw);
        }

        private function _1Bw(_arg1:Event):void{
            if ((((this.NR.alpha > 1)) || ((this.NR.alpha < 0))))
            {
                this._0o8 = (this._0o8 * -1);
                if (this.NR.alpha > 1)
                {
                    this._0vN--;
                    if (!this._0vN)
                    {
                        this._0Qo = false;
                        this.color_ = this._08p;
                        this._9l = this._0UR;
                        this.NR.alpha = 1;
                        this._1xt();
                        removeEventListener(Event.ENTER_FRAME, this._1Bw);
                    };
                };
            };
            this.NR.alpha = (this.NR.alpha + (this.speed * this._0o8));
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this._01 = true;
            this._1xt();
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this._01 = false;
            this._1xt();
        }


    }
}//package com.company.assembleegameclient.ui

