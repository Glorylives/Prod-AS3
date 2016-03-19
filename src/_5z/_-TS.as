// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.TS

package 5z{
    public class TS {

        private static var 0vP:Object = Fe();


        private static function Fe():Object{
            0vP = {}
            0vP[1dH.aB.value] = 30;
            0vP[1dH.gt.value] = 20;
            0vP[1dH.0UN.value] = 20;
            0vP[1dH.z.value] = 20;
            return (0vP);
        }

        public static function 1uP(_arg1:0tK, _arg2:0tK):Number{
            var _local3:Number = 1Cw(_arg1);
            var _local4:Number = 1Cw(_arg2);
            return (0-B(_local3, _local4));
        }

        private static function 0-B(_arg1:Number, _arg2:Number):Number{
            return (((_arg1 + _arg2) / 2));
        }

        private static function 1Cw(_arg1:0tK):Number{
            var _local2:int = 0vP[_arg1.1qz()];
            var _local3:int = (_arg1.087() - _local2);
            var _local4:int = (_arg1.0S1[0].level - _local3);
            return ((_local4 / _local2));
        }


    }
}//package 5z

