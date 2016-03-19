// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.1dH

package _5z{
    public class _1dH {

        public static const aB:_1dH = new _1dH("Pets.common", 0);
        public static const gt:_1dH = new _1dH("Pets.uncommon", 1);
        public static const _0UN:_1dH = new _1dH("Pets.rare", 2);
        public static const z:_1dH = new _1dH("Pets.legendary", 3);
        public static const cn:_1dH = new _1dH("Pets.divine", 4);
        public static const _1JA:int = 4;

        public var value:String;
        public var _17h:int;

        public function _1dH(_arg1, _arg2:int){
            this.value = _arg1;
            this._17h = _arg2;
        }

        public static function get list():Array{
            return ([aB, gt, _0UN, z, cn]);
        }

        public static function _0Yx(_arg1:String):_1dH{
            var _local2:_1dH;
            var _local3:_1dH;
            for each (_local3 in _1dH.list)
            {
                if (_arg1 == _local3.value)
                {
                    _local2 = _local3;
                };
            };
            return (_local2);
        }

        public static function _1tV(_arg1:int):_1dH{
            var _local2:_1dH;
            var _local3:_1dH;
            for each (_local3 in _1dH.list)
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

