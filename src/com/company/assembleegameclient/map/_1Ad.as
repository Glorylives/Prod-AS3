// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.1Ad

package com.company.assembleegameclient.map{
    public class _1Ad {

        public static const _15O:int = 0;
        public static const ms:int = 1;
        public static const sT:int = 2;

        public var type_:int = 0;
        public var dx_:Number = 0;
        public var dy_:Number = 0;


        public function _1tW(_arg1:XML):void{
            switch (String(_arg1))
            {
                case "Wave":
                    this.type_ = ms;
                    break;
                case "Flow":
                    this.type_ = sT;
                    break;
            }
            this.dx_ = _arg1.@dx;
            this.dy_ = _arg1.@dy;
        }


    }
}//package com.company.assembleegameclient.map

