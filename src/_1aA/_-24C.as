// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.24C

package _1aA{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import com.company.rotmg.graphics.StackedLogoR;
    import com.company.rotmg.graphics.KabamLogo;
    import zD.05l;
    import com.company.rotmg.graphics.ScreenGraphic;
    import flash.text.TextFieldAutoSize;
    import flash.events.MouseEvent;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import 1jB.0ub;
    import flash.net.navigateToURL;
    import flash.net.URLRequest;
    import flash.events.Event;

    public class 24C extends Sprite {

        private static const zT:String = "http://www.wildshadow.com/";
        private static const 26A:String = "http://www.kabam.com/";

        public var close:_1HZ;
        private var m1:_13j;
        private var 0y:StackedLogoR;
        private var V7:KabamLogo;
        private var 1tf:Lz;

        public function 24C(){
            this.m1 = this.0m4();
            this.0y = this.0Gj();
            this.V7 = this.0v0();
            this.1tf = this.1gH();
            super();
            this.close = new _1HZ();
            addChild(new 05l());
            addChild(new ScreenGraphic());
            addChild(this.m1);
            addChild(this.0y);
            addChild(this.V7);
            addChild(this.1tf);
        }

        private function 1gH():Lz{
            this.1tf = new Lz("Close.text", 36, false);
            this.1tf.setAutoSize(TextFieldAutoSize.CENTER);
            this.1tf.addEventListener(MouseEvent.CLICK, this.1bB);
            return (this.1tf);
        }

        private function 0v0():KabamLogo{
            this.V7 = new KabamLogo();
            this.V7.scaleX = (this.V7.scaleY = 1);
            this.V7.addEventListener(MouseEvent.CLICK, this.17D);
            this.V7.buttonMode = true;
            this.V7.useHandCursor = true;
            return (this.V7);
        }

        private function 0Gj():StackedLogoR{
            this.0y = new StackedLogoR();
            this.0y.scaleX = (this.0y.scaleY = 1.2);
            this.0y.addEventListener(MouseEvent.CLICK, this.0em);
            this.0y.buttonMode = true;
            this.0y.useHandCursor = true;
            return (this.0y);
        }

        private function 0m4():_13j{
            this.m1 = new _13j();
            this.m1.setColor(0xB3B3B3).setSize(16).setBold(true);
            this.m1.setStringBuilder(new 1cA().setParams(du.0vr));
            this.m1.filters = [new DropShadowFilter(0, 0, 0)];
            this.m1.setAutoSize(TextFieldAutoSize.CENTER);
            return (this.m1);
        }

        public function initialize():void{
            this.m1.x = (stage.stageWidth / 2);
            this.m1.y = 10;
            this.0y.x = ((stage.stageWidth / 2) - (this.0y.width / 2));
            this.0y.y = 50;
            this.V7.x = ((stage.stageWidth / 2) - (this.V7.width / 2));
            this.V7.y = 325;
            this.1tf.x = ((stage.stageWidth / 2) - (this.1tf.width / 2));
            this.1tf.y = 0ub.195;
        }

        protected function 0em(_arg1:Event):void{
            navigateToURL(new URLRequest(zT), "_blank");
        }

        protected function 17D(_arg1:Event):void{
            navigateToURL(new URLRequest(26A), "_blank");
        }

        private function 1bB(_arg1:Event):void{
            this.close.dispatch();
        }


    }
}//package _1aA

