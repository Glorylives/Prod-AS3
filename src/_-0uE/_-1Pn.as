// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.1Pn

package 0uE{
    import ZE.Panel;
    import _CU._13j;
    import 0IN.1qO;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.ui.1nN;
    import 1n4.1cA;
    import com.company.assembleegameclient.game.GameSprite;

    public class 1Pn extends Panel {

        private const Yi:_13j = 1qO.1H-(0xFFFFFF, 16, true);

        private var icon:Bitmap;
        private var title:String = "Pets.petInteractionPanelTitle";
        private var jD:String = "Pets.petInteractionPanelFusePetButton";
        private var 19S:String = "Pets.petInteractionPanelFeedPetButton";
        private var objectType:int;
        var 1kJ:1nN;
        var KO:1nN;

        public function 1Pn(_arg1:GameSprite, _arg2:int){
            super(_arg1);
            this.objectType = _arg2;
            this.Yi.setStringBuilder(new 1cA().setParams(this.title));
            this.Yi.x = 48;
            this.Yi.y = 28;
            addChild(this.Yi);
            this.KO = new 1nN(16, this.jD);
            this.KO.textChanged.addOnce(this.M3);
            addChild(this.KO);
            this.1kJ = new 1nN(16, this.19S);
            this.1kJ.textChanged.addOnce(this.M3);
            addChild(this.1kJ);
        }

        public function init():void{
            this.icon = 1qO.4d(this.objectType);
            this.icon.x = -4;
            this.icon.y = -8;
            addChild(this.icon);
        }

        private function M3():void{
            this.KO.x = (((WIDTH / 4) * 3) - (this.KO.width / 2));
            this.KO.y = ((HEIGHT - this.KO.height) - 4);
            this.1kJ.x = (((WIDTH / 4) * 1) - (this.1kJ.width / 2));
            this.1kJ.y = ((HEIGHT - this.1kJ.height) - 4);
        }


    }
}//package 0uE

