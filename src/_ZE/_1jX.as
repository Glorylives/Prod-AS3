// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZE.1jX

package _ZE{
import _1n4._1cA;

import _CU._13j;
    import com.company.assembleegameclient.ui._1nN;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.game.GameSprite;

import flash.text.TextFieldAutoSize;

public class _1jX extends Panel {

        private var _064:_13j;
        protected var o3:_1nN;

        public function _1jX(_arg1:GameSprite, _arg2:String, _arg3:String){
            super(_arg1);
            this._064 = new _13j().setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH).setHTML(true).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER);
            this._064.setBold(true);
            this._064.setStringBuilder(new _1cA().setParams(_arg2).setPrefix('<p align="center">').setPostfix("</p>"));
            this._064.filters = [new DropShadowFilter(0, 0, 0)];
            this._064.y = 6;
            addChild(this._064);
            this.o3 = new _1nN(16, _arg3);
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
}//package _ZE

