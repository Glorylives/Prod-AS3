// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.ArenaQueryPanel

package _1UB{
import _1PB._cO;

import _1n4._1cA;

import _ZE.Panel;
    import _CU._13j;

import _with._26q;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.ui._1nN;

import flash.display.Bitmap;

public class ArenaQueryPanel extends Panel {

        private const Yi:_13j = _26q._1H(0xFFFFFF, 16, true);

        private var icon:Bitmap;
        var _1TD:_1nN;
        var _1iV:_1nN;
        private var title:String = "ArenaQueryPanel.title";
        private var pc:String = "Pets.caretakerPanelButtonInfo";
        private var _6w:String = "ArenaQueryPanel.leaderboard";
        private var _1he:_cO;
        var type:uint;

        public function ArenaQueryPanel(_arg1:GameSprite, _arg2:uint){
            this._1he = new _cO();
            this.type = _arg2;
            super(_arg1);
            this._1he.complete.addOnce(this.M3);
            this.DG();
            this.fy();
            this._0Wg();
            this._0YE();
        }

        private function _0Wg():void{
            this._1TD = new _1nN(16, this.pc);
            this._1he.push(this._1TD.textChanged);
            addChild(this._1TD);
        }

        private function fy():void{
            this.Yi.setStringBuilder(new _1cA().setParams(this.title));
            this.Yi.x = 65;
            this.Yi.y = 28;
            addChild(this.Yi);
        }

        private function _0YE():void{
            this._1iV = new _1nN(16, this._6w);
            this._1he.push(this._1iV.textChanged);
            addChild(this._1iV);
        }

        private function DG():void{
            this.icon = _26q._1F5(this.type);
            addChild(this.icon);
            this.icon.x = 5;
        }

        private function M3():void{
            var _local1:int = 15;
            var _local2:int = ((this._1TD.width + _local1) + this._1iV.width);
            this._1TD.x = ((WIDTH / 2) - (_local2 / 2));
            this._1iV.x = ((this._1TD.x + this._1TD.width) + _local1);
            this._1iV.y = ((HEIGHT - this._1iV.height) - 4);
            this._1TD.y = ((HEIGHT - this._1TD.height) - 4);
        }


    }
}//package 1UB

