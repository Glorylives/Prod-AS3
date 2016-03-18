// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.ArenaQueryPanel

package 1UB{
    import _ZE.Panel;
    import _CU._13j;
    import with.26q;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.ui.1nN;
    import 1PB.cO;
    import com.company.assembleegameclient.game.GameSprite;
    import 1n4.1cA;

    public class ArenaQueryPanel extends Panel {

        private const Yi:_13j = 26q.1H-(0xFFFFFF, 16, true);

        private var icon:Bitmap;
        var 1TD:1nN;
        var 1iV:1nN;
        private var title:String = "ArenaQueryPanel.title";
        private var pc:String = "Pets.caretakerPanelButtonInfo";
        private var 6w:String = "ArenaQueryPanel.leaderboard";
        private var 1he:cO;
        var type:uint;

        public function ArenaQueryPanel(_arg1:GameSprite, _arg2:uint){
            this.1he = new cO();
            this.type = _arg2;
            super(_arg1);
            this.1he.complete.addOnce(this.M3);
            this.DG();
            this.fy();
            this.0Wg();
            this.0YE();
        }

        private function 0Wg():void{
            this.1TD = new 1nN(16, this.pc);
            this.1he.push(this.1TD.textChanged);
            addChild(this.1TD);
        }

        private function fy():void{
            this.Yi.setStringBuilder(new 1cA().setParams(this.title));
            this.Yi.x = 65;
            this.Yi.y = 28;
            addChild(this.Yi);
        }

        private function 0YE():void{
            this.1iV = new 1nN(16, this.6w);
            this.1he.push(this.1iV.textChanged);
            addChild(this.1iV);
        }

        private function DG():void{
            this.icon = 26q.1F5(this.type);
            addChild(this.icon);
            this.icon.x = 5;
        }

        private function M3():void{
            var _local1:int = 15;
            var _local2:int = ((this.1TD.width + _local1) + this.1iV.width);
            this.1TD.x = ((WIDTH / 2) - (_local2 / 2));
            this.1iV.x = ((this.1TD.x + this.1TD.width) + _local1);
            this.1iV.y = ((HEIGHT - this.1iV.height) - 4);
            this.1TD.y = ((HEIGHT - this.1TD.height) - 4);
        }


    }
}//package 1UB

