// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1mO.230

package 1mO{
    import flash.display.Sprite;
    import flash.display.Shape;
    import _CU._13j;
    import 0sk.BZ;
    import flash.display.Loader;
    import _Jy._1HZ;
    import _0OG._22M;
    import _04_._1JZ;
    import flash.events.MouseEvent;
    import _CU.0FW;
    import flash.text.TextFieldAutoSize;
    import 1n4.1WS;
    import flash.filters.DropShadowFilter;
    import flash.events.Event;
    import flash.events.IOErrorEvent;
    import flash.net.URLRequest;

    public class 230 extends Sprite {

        private static const rC:uint = 30;
        private static const LARGE:String = "LARGE";
        private static const SMALL:String = "SMALL";

        static var 18v:Class = Ji;
        static var h-:Class = 1Nl;

        private var 1xb:Sprite;
        private var zd:Shape;
        private var 1ps:Shape;
        private var textField:_13j;
        private var size:String;
        private var w:Number;
        private var h:Number;
        private var 16n:BZ;
        private var _loader:Loader;
        private var 8D:uint = 18;
        public var 1bw:_1HZ;
        private var kf:_22M;

        public function 230(_arg1:Number, _arg2:Number){
            this.1bw = new _1HZ(BZ);
            super();
            this.kf = _1JZ.0JF();
            this.setSize(_arg1, _arg2);
            this.fT();
            this.1xU();
            this.1Gh();
        }

        private function setSize(_arg1:Number, _arg2:Number):void{
            this.w = _arg1;
            this.h = _arg2;
            if ((((_arg1 == 306)) && ((_arg2 == 194))))
            {
                this.size = LARGE;
            } else
            {
                if ((((_arg1 == 151)) && ((_arg2 == 189))))
                {
                    this.size = SMALL;
                }
            }
        }

        public function init(_arg1:BZ):void{
            this.16n = _arg1;
            this.1M0();
            addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            buttonMode = true;
        }

        private function sp():void{
            addChild((this.zd = new Shape()));
            addChild((this.1ps = new Shape()));
        }

        private function fT():void{
            this.1xb = new Sprite();
            addChild(this.1xb);
        }

        private function 1xU():void{
            this.zd = new Shape();
            this.zd.graphics.beginFill(0xFF00FF);
            this.zd.graphics.drawRect(0, 0, this.w, this.h);
            this.1xb.mask = this.zd;
            addChild(this.zd);
        }

        private function 1Gh():void{
            this.1ps = new Shape();
            this.1ps.graphics.beginFill(0, 0.8);
            this.1ps.graphics.drawRect(0, (this.h - rC), this.w, rC);
            addChild(this.1ps);
        }

        private function 1M0():void{
            this.textField = this.kf.getInstance(0FW).setSize(this.8D).setColor(0xFFFFFF);
            addChild(this.textField);
            this.textField.setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE);
            this.textField.setStringBuilder(new 1WS(this.16n.0iC));
            this.0c5();
            this.textField.x = (this.w / 2);
            this.textField.y = (this.h - (25 / 2));
            this.textField.filters = [new DropShadowFilter(0, 0, 0)];
        }

        private function 0c5():void{
            if (this.textField.width > (this.w - 10))
            {
                this.8D = (this.8D - 2);
                this.textField.setSize(this.8D).setColor(0xFFFFFF);
                this.0c5();
            }
        }

        public function load():void{
            this._loader = new Loader();
            this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.onComplete);
            this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
            this._loader.load(new URLRequest(this.16n.bz));
        }

        private function onComplete(_arg1:Event):void{
            this.1xb.addChild(this._loader);
        }

        private function onIOError(_arg1:IOErrorEvent):void{
            switch (this.size)
            {
                case LARGE:
                    this.1xb.addChild(new 18v());
                    return;
                case SMALL:
                    this.1xb.addChild(new h-());
                    return;
            }
        }

        private function onMouseDown(_arg1:MouseEvent):void{
            this.1bw.dispatch(this.16n);
        }


    }
}//package 1mO

