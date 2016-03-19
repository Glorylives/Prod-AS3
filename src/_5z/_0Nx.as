// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.0Nx

package _5z{
    public class _0Nx {

        public static const _03W:_0Nx = new _0Nx("Yard Upgrader 1", 1, _1dH.aB);
        public static const Lc:_0Nx = new _0Nx("Yard Upgrader 2", 2, _1dH.gt);
        public static const ua:_0Nx = new _0Nx("Yard Upgrader 3", 3, _1dH._0UN);
        public static const _1Yz:_0Nx = new _0Nx("Yard Upgrader 4", 4, _1dH.z);
        public static const _1zr:_0Nx = new _0Nx("Yard Upgrader 5", 5, _1dH.cn);
        public static const _1JA:int = 5;

        public var value:String;
        public var _17h:int;
        public var rarity:_1dH;

        public function _0Nx(_arg1, _arg2:int, _arg3:_1dH){
            this.value = _arg1;
            this._17h = _arg2;
            this.rarity = _arg3;
        }

        public static function get list():Array{
            return ([_03W, Lc, ua, _1Yz, _1zr]);
        }

        public static function _0Yx(_arg1:String):_0Nx{
            var _local2:_0Nx;
            var _local3:_0Nx;
            for each (_local3 in _0Nx.list)
            {
                if (_arg1 == _local3.value)
                {
                    _local2 = _local3;
                };
            };
            return (_local2);
        }

        public static function _1tV(_arg1:int):_0Nx{
            var _local2:_0Nx;
            var _local3:_0Nx;
            for each (_local3 in _0Nx.list)
            {
                if (_arg1 == _local3._17h)
                {
                    _local2 = _local3;
                };
            };
            return (_local2);
        }


    }
}//package 5z

