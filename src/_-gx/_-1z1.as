// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//gx.1z1

package gx{
    import flash.utils.Dictionary;
    import _Jy._1HZ;
    import 0xo.25Q;

    public class 1z1 {

        public static const 0Rl:int = 2594;
        public static const 1OY:int = 254;
        public static const Ww:int = 2595;
        public static const uH:int = 0xFF;

        public var 1rW:Dictionary;
        public var 09B:_1HZ;

        public function 1z1(){
            this.1rW = new Dictionary();
            this.09B = new _1HZ(int);
        }

        public static function gp(_arg1:int):int{
            switch (_arg1)
            {
                case 0Rl:
                    return (1OY);
                case Ww:
                    return (uH);
            };
            return (-1);
        }


        public function 0OV(_arg1:XML):void{
            var _local6:int;
            var _local7:25Q;
            var _local2:int = _arg1.PotionPurchaseCooldown;
            var _local3:int = _arg1.PotionPurchaseCostCooldown;
            var _local4:int = _arg1.MaxStackablePotions;
            var _local5:Array = new Array();
            for each (_local6 in _arg1.PotionPurchaseCosts.cost)
            {
                _local5.push(_local6);
            };
            _local7 = new 25Q();
            _local7.lF = _local2;
            _local7.xK = _local3;
            _local7.0kC = _local4;
            _local7.objectId = 0Rl;
            _local7.position = 0;
            _local7.t8 = _local5;
            this.1rW[_local7.position] = _local7;
            _local7.update.add(this.update);
            _local7 = new 25Q();
            _local7.lF = _local2;
            _local7.xK = _local3;
            _local7.0kC = _local4;
            _local7.objectId = Ww;
            _local7.position = 1;
            _local7.t8 = _local5;
            this.1rW[_local7.position] = _local7;
            _local7.update.add(this.update);
        }

        public function 08L(_arg1:uint):25Q{
            var _local2:String;
            for (_local2 in this.1rW)
            {
                if (this.1rW[_local2].objectId == _arg1)
                {
                    return (this.1rW[_local2]);
                };
            };
            return (null);
        }

        private function update(_arg1:int):void{
            this.09B.dispatch(_arg1);
        }


    }
}//package gx

