// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Av.KabamAccountInfoView

package Av{
    import flash.display.Sprite;
    import _CU._13j;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import 1n4.1cA;
    import AO.du;
    import 12X.*;

    public class KabamAccountInfoView extends Sprite implements 0u5 {

        private static const VJ:int = 18;

        private var 08W:_13j;
        private var userName:String = "";
        private var 0D3:Boolean;

        public function KabamAccountInfoView(){
            this.1GO();
        }

        private function 1GO():void{
            this.08W = new _13j().setSize(VJ).setColor(0xB3B3B3);
            this.08W.setAutoSize(TextFieldAutoSize.CENTER);
            this.08W.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
            addChild(this.08W);
        }

        public function 00K(_arg1:String, _arg2:Boolean):void{
            this.userName = _arg1;
            this.0D3 = _arg2;
            this.08W.setStringBuilder(new 1cA().setParams(du.0cH, {userName:_arg1}));
        }


    }
}//package Av

