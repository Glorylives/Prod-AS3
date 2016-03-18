// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.NameChanger

package com.company.assembleegameclient.objects{
    import BG.NameChangerPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import _ZE.Panel;

    public class NameChanger extends GameObject implements _18p {

        public var _0Bf:int = 0;

        public function NameChanger(_arg1:XML){
            super(_arg1);
            _10J = true;
        }

        public function _00U(_arg1:int):void{
            this._0Bf = _arg1;
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new NameChangerPanel(_arg1, this._0Bf));
        }


    }
}//package com.company.assembleegameclient.objects

