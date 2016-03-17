// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ReskinVendor

package com.company.assembleegameclient.objects{
    import 23a.ReskinPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import ZE.Panel;

    public class ReskinVendor extends GameObject implements 18p {

        public function ReskinVendor(_arg1:XML){
            super(_arg1);
            10J = true;
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new ReskinPanel(_arg1));
        }


    }
}//package com.company.assembleegameclient.objects

