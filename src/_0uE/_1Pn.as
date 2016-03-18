// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.1Pn

package _0uE{
    import _ZE.Panel;

import _0IN._1qO;

import _1n4._1cA;

import _CU._13j;

import com.company.assembleegameclient.ui._1nN;

import flash.display.Bitmap;
    import com.company.assembleegameclient.game.GameSprite;

    public class _1Pn extends Panel {

        private const Yi:_13j = _1qO._1H(0xFFFFFF, 16, true);

        private var icon:Bitmap;
        private var title:String = "Pets.petInteractionPanelTitle";
        private var jD:String = "Pets.petInteractionPanelFusePetButton";
        private var _19S:String = "Pets.petInteractionPanelFeedPetButton";
        private var objectType:int;
        var _1kJ:_1nN;
        var KO:_1nN;

        public function _1Pn(_arg1:GameSprite, _arg2:int){
            super(_arg1);
            this.objectType = _arg2;
            this.Yi.setStringBuilder(new _1cA().setParams(this.title));
            this.Yi.x = 48;
            this.Yi.y = 28;
            addChild(this.Yi);
            this.KO = new _1nN(16, this.jD);
            this.KO.textChanged.addOnce(this.M3);
            addChild(this.KO);
            this._1kJ = new _1nN(16, this._19S);
            this._1kJ.textChanged.addOnce(this.M3);
            addChild(this._1kJ);
        }

        public function init():void{
            this.icon = _1qO._4d(this.objectType);
            this.icon.x = -4;
            this.icon.y = -8;
            addChild(this.icon);
        }

        private function M3():void{
            this.KO.x = (((WIDTH / 4) * 3) - (this.KO.width / 2));
            this.KO.y = ((HEIGHT - this.KO.height) - 4);
            this._1kJ.x = (((WIDTH / 4) * 1) - (this.1kJ.width / 2));
            this._1kJ.y = ((HEIGHT - this.1kJ.height) - 4);
        }


    }
}//package 0uE

