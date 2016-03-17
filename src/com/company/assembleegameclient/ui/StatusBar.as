// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.StatusBar

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import 1n4.1cA;
    import 1n4.1WS;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;

    public class StatusBar extends Sprite {

        public static var lQ:_1HZ = new _1HZ(Boolean);

        public var w_:int;
        public var h_:int;
        public var color_:uint;
        public var 9l:uint;
        public var 11-:uint;
        public var 1Tw:uint;
        public var val_:int = -1;
        public var 22Y:int = -1;
        public var boost_:int = -1;
        public var 07M:int = -1;
        private var labelText_:_13j;
        private var 0b4:1cA;
        private var rN:_13j;
        private var 0sS:1WS;
        private var 14v:_13j;
        private var 1i8:_13j;
        public var 1w0:Sprite;
        private var NR:Sprite;
        private var 08p:Number;
        private var 0UR:Number;
        public var 01-:Boolean = false;
        private var 0Qo:Boolean = false;
        private var 0vN:int;
        private var 0o8:int = -1;
        private var speed:Number = 0.1;

        public function StatusBar(_arg1:int, _arg2:int, _arg3:uint, _arg4:uint, _arg5:String=null){
            this.NR = new Sprite();
            super();
            addChild(this.NR);
            this.w_ = _arg1;
            this.h_ = _arg2;
            this.08p = (this.color_ = _arg3);
            this.0UR = (this.9l = _arg4);
            this.1Tw = 0xFFFFFF;
            if (((!((_arg5 == null))) && (!((_arg5.length == 0)))))
            {
                this.labelText_ = new _13j().setSize(14).setColor(this.1Tw);
                this.labelText_.setBold(true);
                this.0b4 = new 1cA().setParams(_arg5);
                this.labelText_.setStringBuilder(this.0b4);
                this.0yy(this.labelText_);
                this.labelText_.filters = [new DropShadowFilter(0, 0, 0)];
                addChild(this.labelText_);
            };
            this.rN = new _13j().setSize(14).setColor(0xFFFFFF);
            this.rN.setBold(true);
            this.rN.filters = [new DropShadowFilter(0, 0, 0)];
            this.0yy(this.rN);
            this.0sS = new 1WS();
            this.14v = new _13j().setSize(14).setColor(this.1Tw);
            this.14v.setBold(true);
            this.14v.alpha = 0.6;
            this.0yy(this.14v);
            this.14v.filters = [new DropShadowFilter(0, 0, 0)];
            this.1w0 = new Sprite();
            this.1w0.x = (this.w_ - 25);
            this.1w0.y = -3;
            this.1w0.graphics.beginFill(0xFF00FF, 0);
            this.1w0.graphics.drawRect(0, 0, 20, 20);
            this.1w0.addEventListener(MouseEvent.MOUSE_OVER, this.1g7);
            this.1w0.addEventListener(MouseEvent.MOUSE_OUT, this.qC);
            this.1i8 = new _13j().setSize(14).setColor(9493531);
            this.1i8.setBold(true);
            this.1i8.setStringBuilder(new 1WS("x2"));
            this.1i8.filters = [new DropShadowFilter(0, 0, 0)];
            this.1w0.addChild(this.1i8);
            if (!Parameters.data_.toggleBarText)
            {
                addEventListener(MouseEvent.ROLL_OVER, this.onMouseOver);
                addEventListener(MouseEvent.ROLL_OUT, this.onMouseOut);
            };
            lQ.add(this.1NO);
        }

        public function 0yy(_arg1:_13j):void{
            _arg1.setVerticalAlign(_13j.MIDDLE);
            _arg1.y = ((this.h_ / 2) + 1);
        }

        private function 1g7(_arg1:MouseEvent):void{
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
            if ((((((((_arg1 == this.val_)) && ((_arg2 == this.22Y)))) && ((_arg3 == this.boost_)))) && ((_arg4 == this.07M))))
            {
                return;
            };
            this.val_ = _arg1;
            this.22Y = _arg2;
            this.boost_ = _arg3;
            this.07M = _arg4;
            this.1xt();
        }

        public function bM(_arg1:String, _arg2:Object=null):void{
            this.0b4.setParams(_arg1, _arg2);
            this.labelText_.setStringBuilder(this.0b4);
        }

        private function 073(_arg1:uint):void{
            this.1Tw = _arg1;
            if (this.14v != null)
            {
                this.14v.setColor(this.1Tw);
            };
            this.rN.setColor(this.1Tw);
        }

        public function 1NO(_arg1:Boolean):void{
            this.01- = false;
            if (_arg1)
            {
                removeEventListener(MouseEvent.ROLL_OVER, this.onMouseOver);
                removeEventListener(MouseEvent.ROLL_OUT, this.onMouseOut);
            } else
            {
                addEventListener(MouseEvent.ROLL_OVER, this.onMouseOver);
                addEventListener(MouseEvent.ROLL_OUT, this.onMouseOut);
            };
            this.1xt();
        }

        private function 1xt():void{
            graphics.clear();
            this.NR.graphics.clear();
            var _local1:uint = 0xFFFFFF;
            if ((((this.07M > 0)) && (((this.22Y - this.boost_) == this.07M))))
            {
                _local1 = 0xFCDF00;
            } else
            {
                if (this.boost_ > 0)
                {
                    _local1 = 6206769;
                };
            };
            if (this.1Tw != _local1)
            {
                this.073(_local1);
            };
            graphics.beginFill(this.9l);
            graphics.drawRect(0, 0, this.w_, this.h_);
            graphics.endFill();
            if (this.0Qo)
            {
                this.NR.graphics.beginFill(this.11-);
                this.NR.graphics.drawRect(0, 0, this.w_, this.h_);
            };
            this.NR.graphics.beginFill(this.color_);
            if (this.22Y > 0)
            {
                this.NR.graphics.drawRect(0, 0, (this.w_ * (this.val_ / this.22Y)), this.h_);
            } else
            {
                this.NR.graphics.drawRect(0, 0, this.w_, this.h_);
            };
            this.NR.graphics.endFill();
            if (contains(this.rN))
            {
                removeChild(this.rN);
            };
            if (contains(this.14v))
            {
                removeChild(this.14v);
            };
            if (((Parameters.data_.toggleBarText) || (((this.01-) && ((this.h_ > 4))))))
            {
                this.yQ();
            };
        }

        public function yQ():void{
            if (this.22Y > 0)
            {
                this.rN.setStringBuilder(this.0sS.setString(((this.val_ + "/") + this.22Y)));
            } else
            {
                this.rN.setStringBuilder(this.0sS.setString(("" + this.val_)));
            };
            if (!contains(this.rN))
            {
                this.rN.mouseEnabled = false;
                this.rN.mouseChildren = false;
                addChild(this.rN);
            };
            if (this.boost_ != 0)
            {
                this.14v.setStringBuilder(this.0sS.setString((((" (" + (((this.boost_ > 0)) ? "+" : "")) + this.boost_.toString()) + ")")));
                if (!contains(this.14v))
                {
                    this.14v.mouseEnabled = false;
                    this.14v.mouseChildren = false;
                    addChild(this.14v);
                };
                this.rN.x = ((this.w_ / 2) - ((this.rN.width + this.14v.width) / 2));
                this.14v.x = (this.rN.x + this.rN.width);
            } else
            {
                this.rN.x = ((this.w_ / 2) - (this.rN.width / 2));
                if (contains(this.14v))
                {
                    removeChild(this.14v);
                };
            };
        }

        public function 01S():void{
            this.1w0.mouseEnabled = false;
            this.1w0.mouseChildren = false;
            addChild(this.1w0);
            this.0NV(3, 9493531, 0xFFFFFF);
        }

        public function 0zD():void{
            if (this.1w0.parent)
            {
                removeChild(this.1w0);
            };
        }

        public function 0NV(_arg1:Number, _arg2:Number, _arg3:Number):void{
            this.0Qo = true;
            this.color_ = _arg2;
            this.11- = _arg3;
            this.0vN = _arg1;
            this.1xt();
            addEventListener(Event.ENTER_FRAME, this.1Bw);
        }

        private function 1Bw(_arg1:Event):void{
            if ((((this.NR.alpha > 1)) || ((this.NR.alpha < 0))))
            {
                this.0o8 = (this.0o8 * -1);
                if (this.NR.alpha > 1)
                {
                    this.0vN--;
                    if (!this.0vN)
                    {
                        this.0Qo = false;
                        this.color_ = this.08p;
                        this.9l = this.0UR;
                        this.NR.alpha = 1;
                        this.1xt();
                        removeEventListener(Event.ENTER_FRAME, this.1Bw);
                    };
                };
            };
            this.NR.alpha = (this.NR.alpha + (this.speed * this.0o8));
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.01- = true;
            this.1xt();
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.01- = false;
            this.1xt();
        }


    }
}//package com.company.assembleegameclient.ui

