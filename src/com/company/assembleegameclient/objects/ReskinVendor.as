// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ReskinVendor

package com.company.assembleegameclient.objects{
    import _23a.ReskinPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import _ZE.Panel;

    public class ReskinVendor extends GameObject implements _18p {

        public function ReskinVendor(_arg1:XML){
            super(_arg1);
            _10J = true;
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new ReskinPanel(_arg1));
        }


    }
}//package com.company.assembleegameclient.objects

