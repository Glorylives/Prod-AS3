// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AO.ml

package AO{
    import flash.text.TextField;
    import flash.display.BitmapData;
    import flash.geom.Rectangle;
    import flash.text.TextFieldAutoSize;
    import flash.text.TextFormat;

    public class ml {

        private static const 1Rc:Number = 200;
        private static const dG:Number = 2;

        protected var name:String;
        private var textColor:uint = 0;
        private var 15u:Number;
        private var 0g1:Number;


        public function setName(_arg1:String):void{
            this.name = _arg1;
            this.1bD();
        }

        public function getName():String{
            return (this.name);
        }

        public function qV(_arg1:Number):Number{
            return ((this.15u * _arg1));
        }

        public function Tq(_arg1:Number):Number{
            return ((this.0g1 * _arg1));
        }

        private function 1bD():void{
            var _local1:TextField = this.1zR();
            var _local2:BitmapData = new HL(_local1.width, _local1.height);
            _local2.draw(_local1);
            var _local3:uint = 0xFFFFFF;
            var _local4:Rectangle = _local2.getColorBoundsRect(_local3, this.textColor, true);
            this.15u = this.05E(_local4.height);
            this.0g1 = this.05E(((_local1.height - _local4.bottom) - dG));
        }

        private function 1zR():TextField{
            var _local1:TextField = new TextField();
            _local1.autoSize = TextFieldAutoSize.LEFT;
            _local1.text = "x";
            _local1.textColor = this.textColor;
            _local1.setTextFormat(new TextFormat(this.name, 1Rc));
            return (_local1);
        }

        private function 05E(_arg1:Number):Number{
            return ((_arg1 / 1Rc));
        }


    }
}//package AO

