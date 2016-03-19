// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1YL.1Z7

package 1YL{
    import flash.display.Sprite;
    import flash.text.TextField;
    import EM.Console;
    import flash.display.BlendMode;
    import flash.text.TextFormat;
    import flash.text.TextFieldAutoSize;
    import EM.12N;
    import 1nd.1Qv;
    import flash.geom.Rectangle;
    import 0dW.*;

    public final class 1Z7 extends Sprite implements 2-J {

        private static const 1lK:String = "kabam.lib/console";

        private const 0wr:RegExp = /\[0x(.+)\:(.+)\]/ig;
        private const 0oh:String = "<font color='#$1'>$2</font>";
        private const 2:Array = [];
        private const 24o:Array = [];
        private const aM:Object = {}

        private var 1zb:TextField;
        private var 0VA:Console;
        private var 0HI:Number;

        public function 1Z7(){
            this.1zb = new TextField();
            super();
            alpha = 0.8;
            blendMode = BlendMode.LAYER;
            addChild(this.1zb);
            this.1zb.alpha = 0.6;
            this.1zb.defaultTextFormat = new TextFormat("_sans", 14, 0xFFFFFF, true);
            this.1zb.htmlText = 1lK;
            this.1zb.selectable = false;
            this.1zb.multiline = true;
            this.1zb.wordWrap = true;
            this.1zb.autoSize = TextFieldAutoSize.LEFT;
            this.1zb.background = true;
            this.1zb.border = false;
            this.1zb.backgroundColor = 0x3300;
            this.0VA = new Console("", new 12N());
            addChild(this.0VA);
        }

        public function 1XE(_arg1:1Qv):void{
            var _local2:1Qv = (this.aM[_arg1.name] = ((this.aM[_arg1.name]) || (this.1t1(_arg1.name))));
            _local2.data = _arg1.data.replace(this.0wr, this.0oh);
            this.Qm();
        }

        public function 0EI(_arg1:String):void{
            var _local2:1Qv = this.aM[_arg1];
            if (_local2)
            {
                delete this.aM[_arg1];
                this.24o.splice(this.24o.indexOf(_local2), 1);
            }
        }

        private function 1t1(_arg1:String):1Qv{
            var _local2:1Qv = new 1Qv(_arg1);
            this.24o.push(_local2);
            return (_local2);
        }

        public function log(_arg1:String):void{
            var _local2:String = _arg1.replace(this.0wr, this.0oh);
            this.2.push(_local2);
            this.0VA.t-(_local2);
        }

        public function clear():void{
            var _local1:String;
            this.2.length = 0;
            this.24o.length = 0;
            for (_local1 in this.aM)
            {
                delete this.aM[_local1];
            }
        }

        public function resize(_arg1:Rectangle):void{
            this.0HI = (_arg1.height - N8.HEIGHT);
            x = _arg1.x;
            y = _arg1.y;
            this.1zb.width = _arg1.width;
            this.0VA.width = _arg1.width;
            this.97();
        }

        private function 97():void{
            this.1zb.y = (this.0HI - this.1zb.height);
        }

        private function Qm():void{
            this.1zb.htmlText = this.24o.join("\n");
            this.97();
        }

        public function 1UU():String{
            return (this.2.join("\r"));
        }


    }
}//package 1YL

