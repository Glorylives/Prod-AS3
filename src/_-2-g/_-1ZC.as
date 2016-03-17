// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2-g.1ZC

package 2-g{
    import flash.display.Sprite;
    import flash.geom.Point;
    import flash.text.TextField;
    import EM.Console;
    import flash.events.TextEvent;
    import flash.events.MouseEvent;
    import EM.12N;
    import EM.1LM;
    import flash.geom.Rectangle;
    import flash.events.Event;
    import flash.display.DisplayObject;
    import flash.text.TextFieldAutoSize;

    public class 1ZC extends Sprite {

        public static const 1NP:String = "draggingStarted";
        public static const Xb:String = "draggingEnded";
        public static const Yt:String = "scalingStarted";
        public static const 1r:String = "scalingEnded";
        public static const 1Nj:String = "visibilityChanged";
        private static const TEXT_ROLL:String = "TEXT_ROLL";

        private var 0pX:Array;
        private var 0If:Point;
        private var 0go:TextField;
        protected var console:Console;
        protected var bg:Sprite;
        protected var scaler:Sprite;
        protected var 8h:TextField;
        protected var 1St:int = 18;
        protected var 1Iq:int = 18;
        private var 0k1:Point;
        public var 29:Boolean = true;

        public function 1ZC(_arg1:Console){
            this.console = _arg1;
            this.bg = new Sprite();
            this.bg.name = "background";
            addChild(this.bg);
        }

        private static function 1XB(_arg1:MouseEvent):void{
            TextField(_arg1.currentTarget).dispatchEvent(new TextEvent(TEXT_ROLL));
        }

        private static function 1wf(_arg1:MouseEvent):void{
            var index:int;
            var scrollH:Number;
            var w:Number;
            var X:XML;
            var txtformat:XML;
            var e:MouseEvent = _arg1;
            var field:TextField = (e.currentTarget as TextField);
            if (field.scrollH > 0)
            {
                scrollH = field.scrollH;
                w = field.width;
                field.width = (w + scrollH);
                index = field.getCharIndexAtPoint((field.mouseX + scrollH), field.mouseY);
                field.width = w;
                field.scrollH = scrollH;
            } else
            {
                index = field.getCharIndexAtPoint(field.mouseX, field.mouseY);
            };
            var url:String;
            if (index > 0)
            {
                try
                {
                    X = new XML(field.getXMLText(index, (index + 1)));
                    if (X.hasOwnProperty("textformat"))
                    {
                        txtformat = (X["textformat"][0] as XML);
                        if (txtformat)
                        {
                            url = txtformat.@url;
                        };
                    };
                } catch(err:Error)
                {
                    url = null;
                };
            };
            field.dispatchEvent(new TextEvent(TEXT_ROLL, false, false, url));
        }


        protected function get config():12N{
            return (this.console.config);
        }

        protected function get style():1LM{
            return (this.console.config.style);
        }

        protected function init(_arg1:Number, _arg2:Number, _arg3:Boolean=false, _arg4:Number=-1, _arg5:Number=-1, _arg6:int=-1):void{
            this.bg.graphics.clear();
            this.bg.graphics.beginFill((((_arg4 >= 0)) ? _arg4 : this.style.backgroundColor), (((_arg5 >= 0)) ? _arg5 : this.style.mo));
            if (_arg6 < 0)
            {
                _arg6 = this.style.m3;
            };
            if (_arg6 <= 0)
            {
                this.bg.graphics.drawRect(0, 0, 100, 100);
            } else
            {
                this.bg.graphics.drawRoundRect(0, 0, (_arg6 + 10), (_arg6 + 10), _arg6, _arg6);
                this.bg.scale9Grid = new Rectangle((_arg6 * 0.5), (_arg6 * 0.5), 10, 10);
            };
            this.24u = _arg3;
            this.width = _arg1;
            this.height = _arg2;
        }

        public function close():void{
            this.1Kf();
            this.console.panels.tooltip();
            if (parent)
            {
                parent.removeChild(this);
            };
            dispatchEvent(new Event(Event.CLOSE));
        }

        override public function set visible(_arg1:Boolean):void{
            super.visible = _arg1;
            dispatchEvent(new Event(1Nj));
        }

        override public function set width(_arg1:Number):void{
            if (_arg1 < this.1St)
            {
                _arg1 = this.1St;
            };
            if (this.scaler)
            {
                this.scaler.x = _arg1;
            };
            this.bg.width = _arg1;
        }

        override public function set height(_arg1:Number):void{
            if (_arg1 < this.1Iq)
            {
                _arg1 = this.1Iq;
            };
            if (this.scaler)
            {
                this.scaler.y = _arg1;
            };
            this.bg.height = _arg1;
        }

        override public function get width():Number{
            return (this.bg.width);
        }

        override public function get height():Number{
            return (this.bg.height);
        }

        public function 0tN(_arg1:Array, _arg2:Array):void{
            this.0pX = [_arg1, _arg2];
        }

        protected function Qf(_arg1:DisplayObject, _arg2:Boolean=false):void{
            if (_arg2)
            {
                _arg1.removeEventListener(MouseEvent.MOUSE_DOWN, this.5r);
            } else
            {
                _arg1.addEventListener(MouseEvent.MOUSE_DOWN, this.5r, false, 0, true);
            };
        }

        private function 5r(_arg1:MouseEvent):void{
            if (((!(stage)) || (!(this.29))))
            {
                return;
            };
            this.0go = this.0AQ("positioningField", true);
            this.0go.mouseEnabled = false;
            this.0go.autoSize = TextFieldAutoSize.LEFT;
            addChild(this.0go);
            this.Qy();
            this.0k1 = new Point(x, y);
            this.0If = new Point(mouseX, mouseY);
            this.0pX = [[], []];
            dispatchEvent(new Event(1NP));
            stage.addEventListener(MouseEvent.MOUSE_UP, this.Oz, false, 0, true);
            stage.addEventListener(MouseEvent.MOUSE_MOVE, this.hP, false, 0, true);
        }

        private function hP(_arg1:MouseEvent=null):void{
            if (this.style.1gn == 0)
            {
                return;
            };
            var _local2:Point = this.12A((parent.mouseX - this.0If.x), (parent.mouseY - this.0If.y));
            x = _local2.x;
            y = _local2.y;
            this.Qy();
        }

        private function Qy():void{
            this.0go.text = (((("<low>" + x) + ",") + y) + "</low>");
        }

        private function Oz(_arg1:MouseEvent):void{
            this.1Kf();
        }

        private function 1Kf():void{
            this.0pX = null;
            if (stage)
            {
                stage.removeEventListener(MouseEvent.MOUSE_UP, this.Oz);
                stage.removeEventListener(MouseEvent.MOUSE_MOVE, this.hP);
            };
            if (((this.0go) && (this.0go.parent)))
            {
                this.0go.parent.removeChild(this.0go);
            };
            this.0go = null;
            dispatchEvent(new Event(Xb));
        }

        public function moveBackSafePosition():void{
            if (this.0k1 != null)
            {
                if (((((((((x + this.width) < 10)) || (((stage) && ((stage.stageWidth < (x + 10))))))) || (((y + this.height) < 10)))) || (((stage) && ((stage.stageHeight < (y + 20)))))))
                {
                    x = this.0k1.x;
                    y = this.0k1.y;
                };
                this.0k1 = null;
            };
        }

        public function get 24u():Boolean{
            return (((this.scaler) ? true : false));
        }

        public function set 24u(_arg1:Boolean):void{
            var _local2:uint;
            if (((_arg1) && (!(this.scaler))))
            {
                _local2 = (8 + (this.style.controlSize * 0.5));
                this.scaler = new Sprite();
                this.scaler.name = "scaler";
                this.scaler.graphics.beginFill(0, 0);
                this.scaler.graphics.drawRect((-(_local2) * 1.5), (-(_local2) * 1.5), (_local2 * 1.5), (_local2 * 1.5));
                this.scaler.graphics.endFill();
                this.scaler.graphics.beginFill(this.style.controlColor, this.style.mo);
                this.scaler.graphics.moveTo(0, 0);
                this.scaler.graphics.lineTo(-(_local2), 0);
                this.scaler.graphics.lineTo(0, -(_local2));
                this.scaler.graphics.endFill();
                this.scaler.buttonMode = true;
                this.scaler.doubleClickEnabled = true;
                this.scaler.addEventListener(MouseEvent.MOUSE_DOWN, this.1hf, false, 0, true);
                addChildAt(this.scaler, (getChildIndex(this.bg) + 1));
            } else
            {
                if (((!(_arg1)) && (this.scaler)))
                {
                    if (contains(this.scaler))
                    {
                        removeChild(this.scaler);
                    };
                    this.scaler = null;
                };
            };
        }

        private function 1hf(_arg1:Event):void{
            this.0go = this.0AQ("resizingField", true);
            this.0go.mouseEnabled = false;
            this.0go.autoSize = TextFieldAutoSize.RIGHT;
            this.0go.x = -4;
            this.0go.y = -17;
            this.scaler.addChild(this.0go);
            this.8H();
            this.0If = new Point(this.scaler.mouseX, this.scaler.mouseY);
            this.0pX = [[], []];
            this.scaler.stage.addEventListener(MouseEvent.MOUSE_UP, this.1G3, false, 0, true);
            this.scaler.stage.addEventListener(MouseEvent.MOUSE_MOVE, this.1kB, false, 0, true);
            dispatchEvent(new Event(Yt));
        }

        private function 1kB(_arg1:Event=null):void{
            var _local2:Point = this.12A(((x + mouseX) - this.0If.x), ((y + mouseY) - this.0If.x));
            _local2.x = (_local2.x - x);
            _local2.y = (_local2.y - y);
            this.width = (((_local2.x < this.1St)) ? this.1St : _local2.x);
            this.height = (((_local2.y < this.1Iq)) ? this.1Iq : _local2.y);
            this.8H();
        }

        private function 8H():void{
            this.0go.text = (((("<low>" + this.width) + ",") + this.height) + "</low>");
        }

        public function 1qp():void{
            this.1G3(null);
        }

        private function 1G3(_arg1:Event):void{
            this.scaler.stage.removeEventListener(MouseEvent.MOUSE_UP, this.1G3);
            this.scaler.stage.removeEventListener(MouseEvent.MOUSE_MOVE, this.1kB);
            this.1kB();
            this.0pX = null;
            if (((this.0go) && (this.0go.parent)))
            {
                this.0go.parent.removeChild(this.0go);
            };
            this.0go = null;
            dispatchEvent(new Event(1r));
        }

        public function 0AQ(_arg1:String, _arg2:Boolean=false):TextField{
            var _local3:TextField = new TextField();
            _local3.name = _arg1;
            _local3.styleSheet = this.style.styleSheet;
            if (_arg2)
            {
                _local3.background = true;
                _local3.backgroundColor = this.style.backgroundColor;
            };
            return (_local3);
        }

        private function 12A(_arg1:Number, _arg2:Number):Point{
            return (new Point(this.0L6(_arg1, true), this.0L6(_arg2, false)));
        }

        private function 0L6(_arg1:Number, _arg2:Boolean):Number{
            var _local6:Number;
            var _local3:Number = (_arg1 + this.width);
            var _local4:Array = this.0pX[((_arg2) ? 0 : 1)];
            var _local5:int = this.style.1gn;
            for each (_local6 in _local4)
            {
                if (Math.abs((_local6 - _arg1)) < _local5)
                {
                    return (_local6);
                };
                if (Math.abs((_local6 - _local3)) < _local5)
                {
                    return ((_local6 - this.width));
                };
            };
            return (_arg1);
        }

        protected function 25e(_arg1:TextField, _arg2:Function, _arg3:Function=null):void{
            _arg1.addEventListener(MouseEvent.MOUSE_MOVE, 1wf, false, 0, true);
            _arg1.addEventListener(MouseEvent.ROLL_OUT, 1XB, false, 0, true);
            _arg1.addEventListener(TEXT_ROLL, _arg2, false, 0, true);
            if (_arg3 != null)
            {
                _arg1.addEventListener(TextEvent.LINK, _arg3, false, 0, true);
            };
        }


    }
}//package 2-g

