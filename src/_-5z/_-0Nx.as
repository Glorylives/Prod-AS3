// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.0Nx

package 5z{
    public class 0Nx {

        public static const 03W:0Nx = new 0Nx("Yard Upgrader 1", 1, 1dH.aB);
        public static const Lc:0Nx = new 0Nx("Yard Upgrader 2", 2, 1dH.gt);
        public static const ua:0Nx = new 0Nx("Yard Upgrader 3", 3, 1dH.0UN);
        public static const 1Yz:0Nx = new 0Nx("Yard Upgrader 4", 4, 1dH.z);
        public static const 1zr:0Nx = new 0Nx("Yard Upgrader 5", 5, 1dH.cn);
        public static const 1JA:int = 5;

        public var value:String;
        public var 17h:int;
        public var rarity:1dH;

        public function 0Nx(_arg1, _arg2:int, _arg3:1dH){
            this.value = _arg1;
            this.17h = _arg2;
            this.rarity = _arg3;
        }

        public static function get list():Array{
            return ([03W, Lc, ua, 1Yz, 1zr]);
        }

        public static function 0Yx(_arg1:String):0Nx{
            var _local2:0Nx;
            var _local3:0Nx;
            for each (_local3 in 0Nx.list)
            {
                if (_arg1 == _local3.value)
                {
                    _local2 = _local3;
                };
            };
            return (_local2);
        }

        public static function 1tV(_arg1:int):0Nx{
            var _local2:0Nx;
            var _local3:0Nx;
            for each (_local3 in 0Nx.list)
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

