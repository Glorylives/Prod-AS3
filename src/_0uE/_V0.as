// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE._V0

package _0uE{
import _0IN._1qO;

import _1n4._1cA;

import _ZE.Panel;
    import _CU._13j;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.ui._1nN;
    import com.company.assembleegameclient.game.GameSprite;

    public class _V0 extends Panel {

        private const Yi:_13j = _1qO._1J(0xFFFFFF, 16, true);

        private var icon:Bitmap;
        var _1TD:_1nN;
        var _1Pc:_1nN;
        private var title:String = "Pets.caretakerPanelTitle";
        private var pc:String = "Pets.caretakerPanelButtonInfo";
        private var _6w:String = "Pets.caretakerPanelButtonUpgrade";
        var type:uint;

        public function _V0(_arg1:GameSprite, _arg2:uint){
            this.type = _arg2;
            super(_arg1);
        }

        private function _0Wg():void{
            this._1TD = new _1nN(16, this.pc);
            this._1TD.textChanged.addOnce(this._M3);
            addChild(this._1TD);
        }

        private function fy():void{
            this.icon.x = -25;
            this.icon.y = -36;
            this.Yi.setStringBuilder(new _1cA().setParams(this.title));
            this.Yi.x = 48;
            this.Yi.y = 28;
            addChild(this.Yi);
        }

        private function _0GE():void{
            this._1Pc = new _1nN(16, this._6w);
            this._1Pc.textChanged.addOnce(this._M3);
            addChild(this._1Pc);
        }

        public function init(_arg1:Boolean):void{
            this.DG();
            this.fy();
            this._0Wg();
            if (_arg1)
            {
                this._0GE();
            }
        }

        private function DG():void{
            this.icon = _1qO._74(this.type);
            addChild(this.icon);
            this.icon.x = 5;
        }

        private function _M3():void{
            if (((this._1Pc) && (contains(this._1Pc))))
            {
                this._1Pc.x = (((WIDTH / 4) * 3) - (this._1Pc.width / 2));
                this._1Pc.y = ((HEIGHT - this._1Pc.height) - 4);
                this._1TD.x = (((WIDTH / 4) * 1) - (this._1TD.width / 2));
                this._1TD.y = ((HEIGHT - this._1TD.height) - 4);
            } else
            {
                this._1TD.x = ((WIDTH - this._1TD.width) / 2);
                this._1TD.y = ((HEIGHT - this._1TD.height) - 4);
            }
        }


    }
}//package 0uE

