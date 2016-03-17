// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.TextPanel

package BG{
    import ZE.Panel;
    import _CU._13j;
    import com.company.assembleegameclient.game.GameSprite;
    import 1n4.1cA;
    import flash.text.TextFieldAutoSize;
    import AO.du;
    import flash.filters.DropShadowFilter;

    public class TextPanel extends Panel {

        private var textField:_13j;
        private var 18s:Number;
        private var 0ea:Number;

        public function TextPanel(_arg1:GameSprite){
            super(_arg1);
            this.Vl();
        }

        public function init(_arg1:String):void{
            this.textField.setStringBuilder(new 1cA().setParams(_arg1));
            this.textField.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE);
            this.textField.x = (WIDTH / 2);
            this.textField.y = (HEIGHT / 2);
        }

        private function Vl():void{
            this.textField = new _13j().setSize(16).setColor(0xFFFFFF);
            this.textField.setBold(true);
            this.textField.setStringBuilder(new 1cA().setParams(du.Oy));
            this.textField.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.textField);
        }


    }
}//package BG

