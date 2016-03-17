// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.1oj

package _1aA{
    import flash.display.Sprite;
    import _CU._13j;
    import zD.05l;
    import com.company.rotmg.graphics.ScreenGraphic;
    import flash.text.TextFieldAutoSize;
    import flash.events.Event;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;

    public class 1oj extends Sprite {

        private var text:_13j;

        public function 1oj(){
            this.text = new _13j();
            super();
            addChild(new 05l());
            addChild(new ScreenGraphic());
            this.text.setSize(30).setColor(0xFFFFFF).setVerticalAlign(_13j.MIDDLE).setAutoSize(TextFieldAutoSize.CENTER).setBold(true);
            this.text.y = 550;
            addEventListener(Event.ADDED_TO_STAGE, this.zp);
            this.text.setStringBuilder(new 1cA().setParams(du.1d3));
            this.text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
            addChild(this.text);
        }

        private function zp(_arg1:Event):void{
            removeEventListener(Event.ADDED_TO_STAGE, this.zp);
            this.text.x = (stage.stageWidth / 2);
        }

        public function 2-Y(_arg1:String):void{
            this.text.setStringBuilder(new 1cA().setParams(_arg1));
        }


    }
}//package _1aA

