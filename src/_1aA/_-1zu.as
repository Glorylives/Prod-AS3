// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.1zu

package _1aA{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import flash.display.Bitmap;
    import com.company.ui._eG;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import flash.display.BitmapData;
    import flash.net.navigateToURL;
    import flash.net.URLRequest;

    public class 1zu extends Sprite {

        public static const WIDTH:int = 415;
        public static const HEIGHT:int = 52;
        public static const 1C-:uint = 0xB3B3B3;
        public static const 0pE:uint = 0xFFC800;

        public var 1bO:_1HZ;
        public var e4:Bitmap;
        public var 064:_eG;
        public var taglineText_:_eG;
        public var TY:_eG;
        public var link:String;
        public var accountId:String;

        public function 1zu(_arg1:BitmapData, _arg2:String, _arg3:String, _arg4:String, _arg5:int, _arg6:String){
            this.1bO = new _1HZ(int);
            super();
            this.link = _arg4;
            this.accountId = _arg6;
            buttonMode = true;
            useHandCursor = true;
            tabEnabled = false;
            this.e4 = new Bitmap();
            this.e4.bitmapData = _arg1;
            this.e4.x = 12;
            this.e4.y = (((HEIGHT / 2) - (_arg1.height / 2)) - 3);
            addChild(this.e4);
            this.064 = new _eG(18, 1C-, false, 0, 0);
            this.064.text = _arg2;
            this.064.re();
            this.064.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.064.x = 73;
            addChild(this.064);
            this.taglineText_ = new _eG(14, 1C-, false, 0, 0);
            this.taglineText_.text = _arg3;
            this.taglineText_.re();
            this.taglineText_.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.taglineText_.x = 73;
            this.taglineText_.y = 24;
            addChild(this.taglineText_);
            this.TY = new _eG(16, 1C-, false, 0, 0);
            this.TY.text = this.ad(_arg5);
            this.TY.re();
            this.TY.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.TY.x = (WIDTH - this.TY.width);
            addChild(this.TY);
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        }

        protected function onMouseOver(_arg1:MouseEvent):void{
            this.064.setColor(0pE);
            this.taglineText_.setColor(0pE);
            this.TY.setColor(0pE);
        }

        protected function onRollOut(_arg1:MouseEvent):void{
            this.064.setColor(1C-);
            this.taglineText_.setColor(1C-);
            this.TY.setColor(1C-);
        }

        protected function onMouseDown(_arg1:MouseEvent):void{
            var _local2:Array = this.link.split(":", 2);
            switch (_local2[0])
            {
                case "fame":
                    this.1bO.dispatch(int(_local2[1]));
                    return;
                case "http":
                case "https":
                default:
                    navigateToURL(new URLRequest(this.link), "_blank");
            };
        }

        private function ad(_arg1:int):String{
            var _local2:Number = (new Date().getTime() / 1000);
            var _local3:int = (_local2 - _arg1);
            if (_local3 <= 0)
            {
                return ("now");
            };
            if (_local3 < 60)
            {
                return ((_local3 + " secs"));
            };
            if (_local3 < (60 * 60))
            {
                return ((int((_local3 / 60)) + " mins"));
            };
            if (_local3 < ((60 * 60) * 24))
            {
                return ((int((_local3 / (60 * 60))) + " hours"));
            };
            return ((int((_local3 / ((60 * 60) * 24))) + " days"));
        }


    }
}//package _1aA

