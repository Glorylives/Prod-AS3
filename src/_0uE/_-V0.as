// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.V0

package 0uE{
    import ZE.Panel;
    import _CU._13j;
    import 0IN.1qO;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.ui.1nN;
    import com.company.assembleegameclient.game.GameSprite;
    import 1n4.1cA;

    public class V0 extends Panel {

        private const Yi:_13j = 1qO.1H-(0xFFFFFF, 16, true);

        private var icon:Bitmap;
        var 1TD:1nN;
        var 1Pc:1nN;
        private var title:String = "Pets.caretakerPanelTitle";
        private var pc:String = "Pets.caretakerPanelButtonInfo";
        private var 6w:String = "Pets.caretakerPanelButtonUpgrade";
        var type:uint;

        public function V0(_arg1:GameSprite, _arg2:uint){
            this.type = _arg2;
            super(_arg1);
        }

        private function 0Wg():void{
            this.1TD = new 1nN(16, this.pc);
            this.1TD.textChanged.addOnce(this.M3);
            addChild(this.1TD);
        }

        private function fy():void{
            this.icon.x = -25;
            this.icon.y = -36;
            this.Yi.setStringBuilder(new 1cA().setParams(this.title));
            this.Yi.x = 48;
            this.Yi.y = 28;
            addChild(this.Yi);
        }

        private function 0GE():void{
            this.1Pc = new 1nN(16, this.6w);
            this.1Pc.textChanged.addOnce(this.M3);
            addChild(this.1Pc);
        }

        public function init(_arg1:Boolean):void{
            this.DG();
            this.fy();
            this.0Wg();
            if (_arg1)
            {
                this.0GE();
            };
        }

        private function DG():void{
            this.icon = 1qO.74(this.type);
            addChild(this.icon);
            this.icon.x = 5;
        }

        private function M3():void{
            if (((this.1Pc) && (contains(this.1Pc))))
            {
                this.1Pc.x = (((WIDTH / 4) * 3) - (this.1Pc.width / 2));
                this.1Pc.y = ((HEIGHT - this.1Pc.height) - 4);
                this.1TD.x = (((WIDTH / 4) * 1) - (this.1TD.width / 2));
                this.1TD.y = ((HEIGHT - this.1TD.height) - 4);
            } else
            {
                this.1TD.x = ((WIDTH - this.1TD.width) / 2);
                this.1TD.y = ((HEIGHT - this.1TD.height) - 4);
            };
        }


    }
}//package 0uE

