// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.1dH

package 5z{
    public class 1dH {

        public static const aB:1dH = new 1dH("Pets.common", 0);
        public static const gt:1dH = new 1dH("Pets.uncommon", 1);
        public static const 0UN:1dH = new 1dH("Pets.rare", 2);
        public static const z:1dH = new 1dH("Pets.legendary", 3);
        public static const cn:1dH = new 1dH("Pets.divine", 4);
        public static const 1JA:int = 4;

        public var value:String;
        public var 17h:int;

        public function 1dH(_arg1, _arg2:int){
            this.value = _arg1;
            this.17h = _arg2;
        }

        public static function get list():Array{
            return ([aB, gt, 0UN, z, cn]);
        }

        public static function 0Yx(_arg1:String):1dH{
            var _local2:1dH;
            var _local3:1dH;
            for each (_local3 in 1dH.list)
            {
                if (_arg1 == _local3.value)
                {
                    _local2 = _local3;
                };
            };
            return (_local2);
        }

        public static function 1tV(_arg1:int):1dH{
            var _local2:1dH;
            var _local3:1dH;
            for each (_local3 in 1dH.list)
            {
                if (_arg1 == _local3.17h)
                {
                    _local2 = _local3;
                };
            };
            return (_local2);
        }


    }
}//package 5z

