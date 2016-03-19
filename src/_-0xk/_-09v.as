// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0xk.09v

package 0xk{
    import 0Z-.0YK;
    import flash.text.TextField;
    import OZ.08g;
    import __AS3__.vec.Vector;
    import flash.display.Shape;
    import flash.display.Bitmap;
    import flash.display.Sprite;
    import flash.events.MouseEvent;
    import 0IN.1qO;
    import flash.events.Event;
    import 0pT.1qk;
    import AO._nz;
    import flash.text.TextFormat;
    import flash.text.TextFieldAutoSize;
    import _04_._1JZ;
    import flash.geom.ColorTransform;
    import flash.utils.getTimer;
    import __AS3__.vec.*;

    public class 09v extends 0YK {

        public var 21i:Boolean = false;
        private var 0tS:TextField;
        private var 0jW:08g = null;
        private var 0v:Vector.<Shape>;
        private var 1tN:int = 0;
        private var 1qP:int = 1;
        private var I0:int = 0;
        private var 1F7:TextField;
        private var YQ:Bitmap;
        private var 1a0:Sprite;
        private var 1dL:Sprite;
        private var 2-m:Number = 0.018;
        private var 5h:Boolean = false;

        public function 09v(_arg1:Boolean=false, _arg2:Boolean=false){
            var _local3:Shape;
            var _local4:int;
            this.0v = new Vector.<Shape>();
            super();
            if (_arg1)
            {
                this.21i = _arg1;
                addEventListener(MouseEvent.ROLL_OVER, this.14z);
            }
            1ZU(true, 16689154, true);
            if (_arg2)
            {
                _local4 = 0;
                while (_local4 < 3)
                {
                    _local3 = 1qO.1V2((56 + (_local4 * 10)), 0x545454, (-5 + (-5 * _local4)), false, true, 4);
                    addChild(_local3);
                    this.0v.push(_local3);
                    _local4++;
                }
                this.I0 = (this.0v.length - 1);
                addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            }
        }

        override public function updateTitle():void{
            if (!1Qj)
            {
                this.ZA(196098);
                removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
                if (this.0jW)
                {
                    this.0jW.05w(196098);
                    this.0jW.draw();
                }
                if (((!((this.1a0 == null))) && (!((this.1a0.parent == null)))))
                {
                    this.1dL.visible = false;
                    this.1dL.alpha = 0;
                    this.1a0.alpha = 1;
                }
            } else
            {
                if (this.0v.length > 0)
                {
                    addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
                }
                if (((!((this.1a0 == null))) && (!((this.1a0.parent == null)))))
                {
                    this.1dL.visible = true;
                }
                if (this.0jW)
                {
                    this.0jW.05w(0x545454);
                    this.0jW.draw();
                }
            }
        }

        public function 1T0():void{
            this.ZA(0xFF0000);
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            new 1qk(1.25, addEventListener, Event.ENTER_FRAME, this.onEnterFrame);
        }

        public function 11I():void{
            if (this.1F7 == null)
            {
                this.1F7 = this.1sX();
                this.1F7.text = "✓";
                this.1F7.textColor = 0xFF00;
                addChild(this.1F7);
                this.1F7.y = Math.round((((height / 2) - (this.1F7.textHeight / 2)) / 7));
            }
        }

        public function 1Re():void{
            if (this.1F7 == null)
            {
                this.1F7 = this.1sX();
                this.1F7.text = "?";
                this.1F7.textColor = 0xFF0000;
                addChild(this.1F7);
                this.1F7.y = Math.round((((height / 2) - (this.1F7.textHeight / 2)) / 7));
            }
        }

        public function 16():void{
            if (((!((this.1F7 == null))) && (!((this.1F7.parent == null)))))
            {
                removeChild(this.1F7);
            }
        }

        private function 1sX():TextField{
            var _local1:_nz = new _nz();
            var _local2:TextField = new TextField();
            var _local3:TextFormat = _local2.defaultTextFormat;
            _local3.size = 36;
            _local3.font = _local1.0sD().getName();
            _local3.bold = true;
            _local3.align = "center";
            _local2.defaultTextFormat = _local3;
            _local2.alpha = 0.8;
            _local2.width = width;
            _local2.selectable = false;
            return (_local2);
        }

        private function 14z(_arg1:Event):void{
            if (1Qj)
            {
                this.5h = true;
                if (((!((this.0tS == null))) && ((this.0tS.parent == null))))
                {
                    addChild(this.0tS);
                }
                removeEventListener(MouseEvent.ROLL_OVER, this.14z);
                addEventListener(MouseEvent.ROLL_OUT, this.0Cy);
            }
        }

        private function 0Cy(_arg1:Event):void{
            if (1Qj)
            {
                this.5h = false;
                new 1qk(0.5, this.0eD);
                addEventListener(MouseEvent.ROLL_OVER, this.14z);
                removeEventListener(MouseEvent.ROLL_OUT, this.0Cy);
            }
        }

        private function 0eD():void{
            if ((((((this.5h == false)) && (!((this.0tS == null))))) && (!((this.0tS.parent == null)))))
            {
                removeChild(this.0tS);
            }
        }

        public function 27L(_arg1:String, _arg2:int, _arg3:int):void{
            this.0tS = new TextField();
            this.0tS.text = _arg1;
            this.0tS.autoSize = TextFieldAutoSize.LEFT;
            var _local4:_nz = _1JZ.0JF().getInstance(_nz);
            _local4.apply(this.0tS, _arg2, _arg3, false, true);
            this.0tS.y = (this.y + this.height);
            this.0tS.x = ((this.x + (this.width / 2)) - (this.0tS.width / 2));
        }

        public function 0fS(_arg1:08g):void{
            this.0jW = _arg1;
        }

        private function onEnterFrame(_arg1:Event):void{
            var _local3:ColorTransform;
            var _local4:int;
            var _local5:int;
            var _local2:int = uint(((getTimer() / 500) % 3));
            if (_local2 != this.1tN)
            {
                this.1tN = _local2;
                _local4 = 0;
                while (_local4 < this.0v.length)
                {
                    _local3 = this.0v[_local4].transform.colorTransform;
                    _local3.color = 0x545454;
                    _local3.alphaMultiplier = (1 - (_local4 * 0.3));
                    this.0v[_local4].transform.colorTransform = _local3;
                    _local4++;
                }
                _local5 = (this.I0 - (this.1tN * this.1qP));
                _local3 = this.0v[_local5].transform.colorTransform;
                _local3.color = 196098;
                this.0v[_local5].transform.colorTransform = _local3;
            }
            if (this.YQ)
            {
                if ((((this.1a0.alpha == 1)) || ((this.1a0.alpha == 0))))
                {
                    this.2-m = (this.2-m * -1);
                }
                this.1a0.alpha = (this.1a0.alpha + this.2-m);
                this.1dL.alpha = (this.1dL.alpha - this.2-m);
                if (this.1a0.alpha >= 1)
                {
                    this.1a0.alpha = 1;
                    this.1dL.alpha = 0;
                } else
                {
                    if (this.1a0.alpha <= 0)
                    {
                        this.1a0.alpha = 0;
                        this.1dL.alpha = 1;
                    }
                }
            }
        }

        public function ZA(_arg1:int):void{
            var _local3:ColorTransform;
            var _local2:int = (this.0v.length - 1);
            while (_local2 >= 0)
            {
                _local3 = this.0v[_local2].transform.colorTransform;
                _local3.color = _arg1;
                _local3.alphaMultiplier = (1 - (_local2 * 0.3));
                this.0v[_local2].transform.colorTransform = _local3;
                _local2--;
            }
        }

        public function 041(_arg1:int):void{
            this.1qP = _arg1;
            if (_arg1 == -1)
            {
                this.I0 = 0;
            } else
            {
                if (_arg1 == 1)
                {
                    this.I0 = (this.0v.length - 1);
                }
            }
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        public function 1Ft():void{
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        public function A0(_arg1:Bitmap):void{
            this.YQ = _arg1;
            var _local2:Bitmap = new Bitmap(_arg1.bitmapData);
            this.1a0 = new Sprite();
            this.1dL = new Sprite();
            this.1a0.x = ((100 - this.YQ.width) * 0.5);
            this.1a0.y = ((46 - this.YQ.height) * 0.5);
            this.1dL.x = this.1a0.x;
            this.1dL.y = this.1a0.y;
            this.1a0.addChild(this.YQ);
            this.1dL.addChild(_local2);
            addChild(this.1dL);
            addChild(this.1a0);
            if (((!((0ep == null))) && (!((getChildIndex(0ep) == -1)))))
            {
                removeChild(0ep);
                addChild(0ep);
            }
            this.1a0.filters = [1q-];
            var _local3:ColorTransform = new ColorTransform();
            _local3.color = 0x292929;
            this.1a0.transform.colorTransform = _local3;
            this.1dL.alpha = 0;
        }


    }
}//package 0xk

