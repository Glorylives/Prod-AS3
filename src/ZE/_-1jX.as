// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//ZE.1jX

package ZE{
    import _CU._13j;
    import com.company.assembleegameclient.ui.1nN;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.game.GameSprite;

    public class 1jX extends Panel {

        private var 064:_13j;
        protected var o3:1nN;

        public function 1jX(_arg1:GameSprite, _arg2:String, _arg3:String){
            super(_arg1);
            this.064 = new _13j().setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH).setHTML(true).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER);
            this.064.setBold(true);
            this.064.setStringBuilder(new 1cA().setParams(_arg2).setPrefix('<p align="center">').setPostfix("</p>"));
            this.064.filters = [new DropShadowFilter(0, 0, 0)];
            this.064.y = 6;
            addChild(this.064);
            this.o3 = new 1nN(16, _arg3);
            this.o3.addEventListener(MouseEvent.CLICK, this.onButtonClick);
            this.o3.textChanged.addOnce(this.M3);
            addChild(this.o3);
        }

        private function M3():void{
            this.o3.x = ((WIDTH / 2) - (this.o3.width / 2));
            this.o3.y = ((HEIGHT - this.o3.height) - 4);
        }

        protected function onButtonClick(_arg1:MouseEvent):void{
        }


    }
}//package ZE

