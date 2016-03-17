// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.GuildMerchant

package com.company.assembleegameclient.objects{
    import com.company.assembleegameclient.util.Currency;
    import com.company.assembleegameclient.util.GuildUtil;
    import 0qj.6P;
    import 0qj.1ae;
    import flash.display.BitmapData;

    public class GuildMerchant extends SellableObject implements 18p {

        public var description_:String;

        public function GuildMerchant(_arg1:XML){
            super(_arg1);
            price_ = int(_arg1.Price);
            currency_ = Currency.py;
            this.description_ = _arg1.Description;
            1fK = GuildUtil.Tx;
        }

        override public function soldObjectName():String{
            return (ObjectLibrary.118[objectType_]);
        }

        override public function soldObjectInternalName():String{
            var _local1:XML = ObjectLibrary.GD[objectType_];
            return (_local1.@id.toString());
        }

        override public function getTooltip():1ae{
            var _local1:1ae = new 6P(0x363636, 0x9B9B9B, this.soldObjectName(), this.description_, 200);
            return (_local1);
        }

        override public function getSellableType():int{
            return (objectType_);
        }

        override public function getIcon():BitmapData{
            return (ObjectLibrary.getRedrawnTextureFromType(objectType_, 80, true));
        }


    }
}//package com.company.assembleegameclient.objects

