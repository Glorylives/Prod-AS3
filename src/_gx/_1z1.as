// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//gx.1z1

package _gx{
    import flash.utils.Dictionary;
    import _Jy._1HZ;
    import _0xo._25Q;

    public class _1z1 {

        public static const _0Rl:int = 2594;
        public static const _1OY:int = 254;
        public static const Ww:int = 2595;
        public static const uH:int = 0xFF;

        public var _1rW:Dictionary;
        public var _09B:_1HZ;

        public function _1z1(){
            this._1rW = new Dictionary();
            this._09B = new _1HZ(int);
        }

        public static function gp(_arg1:int):int{
            switch (_arg1)
            {
                case _0Rl:
                    return (_1OY);
                case Ww:
                    return (uH);
            }
            return (-1);
        }


        public function _0OV(_arg1:XML):void{
            var _local6:int;
            var _local7:_25Q;
            var _local2:int = _arg1.PotionPurchaseCooldown;
            var _local3:int = _arg1.PotionPurchaseCostCooldown;
            var _local4:int = _arg1.MaxStackablePotions;
            var _local5:Array = new Array();
            for each (_local6 in _arg1.PotionPurchaseCosts.cost)
            {
                _local5.push(_local6);
            }
            _local7 = new _25Q();
            _local7.lF = _local2;
            _local7.xK = _local3;
            _local7._0kC = _local4;
            _local7.objectId = _0Rl;
            _local7.position = 0;
            _local7.t8 = _local5;
            this._1rW[_local7.position] = _local7;
            _local7.update.add(this.update);
            _local7 = new _25Q();
            _local7.lF = _local2;
            _local7.xK = _local3;
            _local7._0kC = _local4;
            _local7.objectId = Ww;
            _local7.position = 1;
            _local7.t8 = _local5;
            this._1rW[_local7.position] = _local7;
            _local7.update.add(this.update);
        }

        public function _08L(_arg1:uint):_25Q{
            var _local2:String;
            for (_local2 in this._1rW)
            {
                if (this._1rW[_local2].objectId == _arg1)
                {
                    return (this._1rW[_local2]);
                }
            }
            return (null);
        }

        private function update(_arg1:int):void{
            this._09B.dispatch(_arg1);
        }


    }
}//package gx

