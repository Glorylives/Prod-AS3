// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.TitleView

package 1PB{
    import flash.display.Sprite;
    import _CU._13j;
    import zD.1mY;
    import 0xo.01q;
    import _Jy._1HZ;
    import zD.4q;
    import zD.1hM;
    import _1aA.01l;
    import com.company.assembleegameclient.ui.Eo;
    import _1aA.Lz;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import 1n4.1WS;

    public class TitleView extends Sprite {

        public static const 0k:Number = 589.45;

        static var 1rO:Class = TD;
        public static var 1Vq:Boolean = false;
        public static var p2:Boolean = false;
        public static var 1P1:Boolean = false;
        public static var cC:Boolean = false;

        private var at:_13j;
        private var 0Ke:_13j;
        private var 0uA:1mY;
        private var data:01q;
        public var throw:_1HZ;
        public var 13u:_1HZ;
        public var 0R1:_1HZ;
        public var 22X:_1HZ;
        public var 21n:_1HZ;
        public var XI:_1HZ;
        public var rT:_1HZ;
        public var AW:_1HZ;
        public var 0GK:_1HZ;

        public function TitleView(){
            this.0uA = this.XD();
            this.0GK = new _1HZ();
            super();
            addChild(new 4q());
            addChild(new 1hM());
            addChild(new 1rO());
            addChild(this.0uA);
            addChild(new 01l());
            this.0m5();
            addChild(new Eo());
        }

        private function XD():1mY{
            var _local1:Lz = oj.0P6();
            var _local2:Lz = oj.1VK();
            var _local3:Lz = oj.0gk();
            var _local4:Lz = oj.FX();
            var _local5:Lz = oj.1ml();
            _local5.setColor(0xFFA500);
            this.throw = _local1.clicked;
            this.13u = _local2.clicked;
            this.0R1 = _local3.clicked;
            this.22X = _local4.clicked;
            this.XI = _local5.clicked;
            var _local6:1mY = new 1mY();
            _local6.0J-(_local1, 1mY.CENTER);
            _local6.0J-(_local2, 1mY.LEFT);
            _local6.0J-(_local5, 1mY.LEFT);
            _local6.0J-(_local3, 1mY.RIGHT);
            _local6.0J-(_local4, 1mY.RIGHT);
            return (_local6);
        }

        private function 0m5():void{
            this.at = this.makeText().setHTML(true).setAutoSize(TextFieldAutoSize.LEFT).setVerticalAlign(_13j.MIDDLE);
            this.at.y = 0k;
            addChild(this.at);
            this.0Ke = this.makeText().setAutoSize(TextFieldAutoSize.RIGHT).setVerticalAlign(_13j.MIDDLE);
            this.0Ke.setStringBuilder(new 1cA().setParams(du.Hj));
            this.0Ke.filters = [new DropShadowFilter(0, 0, 0)];
            this.0Ke.x = 800;
            this.0Ke.y = 0k;
            addChild(this.0Ke);
        }

        public function makeText():_13j{
            var _local1:_13j = new _13j().setSize(12).setColor(0x7F7F7F);
            _local1.filters = [new DropShadowFilter(0, 0, 0)];
            return (_local1);
        }

        public function initialize(_arg1:01q):void{
            this.data = _arg1;
            this.P7();
            this.138();
        }

        private function P7():void{
            this.at.setStringBuilder(new 1WS(this.data.1sz));
        }

        private function 138():void{
            ((this.data.QH) && (this.77()));
            ((this.data.LD) && (this.vT()));
            this.0GK.dispatch();
        }

        private function vT():void{
            var _local1:Lz = oj.12h();
            this.0uA.0J-(_local1, 1mY.RIGHT);
            this.AW = _local1.clicked;
        }

        private function 77():void{
            var _local1:Lz = oj.1G0();
            this.0uA.0J-(_local1, 1mY.RIGHT);
            this.rT = _local1.clicked;
        }


    }
}//package 1PB

