// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.26h

package com.company.assembleegameclient.map{
    import 1uF.1Mf;
    import eC.0A3;
    import 1n4.1cA;

    public class 26h extends 1Mf {

        [Inject]
        public var view:Map;
        [Inject]
        public var 04N:04H;


        override public function initialize():void{
            this.04N.add(this.0x3);
        }

        override public function destroy():void{
            this.04N.remove(this.0x3);
        }

        private function 0x3(_arg1:String, _arg2:uint):void{
            ((this.view.player_) && (this.0XB(_arg1, _arg2)));
        }

        private function 0XB(_arg1:String, _arg2:uint):void{
            var _local3:0A3 = new 0A3(this.view.player_, new 1cA().setParams(_arg1), _arg2, 2000, 0);
            this.view.mapOverlay_.addQueuedText(_local3);
        }


    }
}//package com.company.assembleegameclient.map

