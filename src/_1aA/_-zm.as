// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.zm

package _1aA{
    import flash.display.Sprite;
    import _CU._13j;
    import com.company.rotmg.graphics.ScreenGraphic;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import flash.text.TextFieldAutoSize;
    import flash.events.Event;

    public class zm extends Sprite {

        private var YT:_13j;

        public function zm(){
            addChild(new ScreenGraphic());
            this.YT = new _13j().setSize(30).setColor(0xFFFFFF).setBold(true);
            this.YT.setStringBuilder(new 1cA().setParams(du.1d3));
            this.YT.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
            this.YT.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE);
            addChild(this.YT);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        }

        protected function onAddedToStage(_arg1:Event):void{
            removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            this.YT.x = (stage.stageWidth / 2);
            this.YT.y = 550;
        }


    }
}//package _1aA

