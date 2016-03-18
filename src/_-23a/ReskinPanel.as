// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//23a.ReskinPanel

package 23a{
    import _ZE.Panel;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1nN;
    import _Jy._1HZ;
    import XF.lY;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.game.GameSprite;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import 1n4.1cA;
    import AO.du;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.KeyboardEvent;

    public class ReskinPanel extends Panel {

        private const title:_13j = ReskinPanel.Kr();
        private const button:1nN = ReskinPanel.1sf();
        private const HF:_1HZ = new XF.lY(ReskinPanel.button, flash.events.MouseEvent.CLICK);
        public const reskin:_1HZ = new _1HZ();

        public function ReskinPanel(_arg1:GameSprite=null){
            super(_arg1);
            this.HF.add(this.0eJ);
        }

        private function 0eJ():void{
            this.reskin.dispatch();
        }

        private function Kr():_13j{
            var _local1:_13j;
            _local1 = new _13j().setSize(18).setColor(0xFFFFFF).setAutoSize(TextFieldAutoSize.CENTER);
            _local1.x = (WIDTH / 2);
            _local1.setBold(true);
            _local1.filters = [new DropShadowFilter(0, 0, 0)];
            _local1.setStringBuilder(new 1cA().setParams(du.0zQ));
            addChild(_local1);
            return (_local1);
        }

        private function 1sf():1nN{
            var _local1:1nN = new 1nN(16, du.LM);
            _local1.textChanged.addOnce(this.056);
            addChild(_local1);
            return (_local1);
        }

        private function 056():void{
            this.button.x = ((WIDTH / 2) - (this.button.width / 2));
            this.button.y = ((HEIGHT - this.button.height) - 4);
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null))))
            {
                this.reskin.dispatch();
            };
        }


    }
}//package 23a

