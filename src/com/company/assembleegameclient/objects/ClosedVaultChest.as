// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ClosedVaultChest

package com.company.assembleegameclient.objects{
    import AO.du;
    import 0qj.6P;
    import 0qj.1ae;
    import flash.display.BitmapData;

    public class ClosedVaultChest extends SellableObject {

        public function ClosedVaultChest(_arg1:XML){
            super(_arg1);
        }

        override public function soldObjectName():String{
            return (du.1rI);
        }

        override public function soldObjectInternalName():String{
            return ("Vault Chest");
        }

        override public function getTooltip():1ae{
            var _local1:1ae = new 6P(0x363636, 0x9B9B9B, this.soldObjectName(), du.hu, 200);
            return (_local1);
        }

        override public function getSellableType():int{
            return (ObjectLibrary.get["Vault Chest"]);
        }

        override public function getIcon():BitmapData{
            return (ObjectLibrary.getRedrawnTextureFromType(ObjectLibrary.get["Vault Chest"], 80, true));
        }


    }
}//package com.company.assembleegameclient.objects

