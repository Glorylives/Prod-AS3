// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Container

package com.company.assembleegameclient.objects{
    import com.company.util.PointUtil;
    import _ZS.0ZC;
    import com.company.assembleegameclient.map.Map;
    import h0.0t7;
    import com.company.assembleegameclient.game.GameSprite;
    import ZE.Panel;

    public class Container extends GameObject implements 18p {

        public var 11L:Boolean;
        public var ownerId_:String;

        public function Container(_arg1:XML){
            super(_arg1);
            10J = true;
            this.11L = _arg1.hasOwnProperty("Loot");
            this.ownerId_ = "";
        }

        public function 1Nm(_arg1:String):void{
            this.ownerId_ = _arg1;
            10J = (((this.ownerId_ == "")) || (this.0kj()));
        }

        public function 0kj():Boolean{
            return ((map_.player_.accountId_ == this.ownerId_));
        }

        override public function addTo(_arg1:Map, _arg2:Number, _arg3:Number):Boolean{
            if (!super.addTo(_arg1, _arg2, _arg3))
            {
                return (false);
            };
            if (map_.player_ == null)
            {
                return (true);
            };
            var _local4:Number = PointUtil.Fg(map_.player_.x_, map_.player_.y_, _arg2, _arg3);
            if (((this.11L) && ((_local4 < 10))))
            {
                0ZC.play("loot_appears");
            };
            return (true);
        }

        public function getPanel(_arg1:GameSprite):Panel{
            var _local2:Player = ((((_arg1) && (_arg1.map))) ? _arg1.map.player_ : null);
            var _local3:0t7 = new 0t7(this, _local2);
            return (_local3);
        }


    }
}//package com.company.assembleegameclient.objects

