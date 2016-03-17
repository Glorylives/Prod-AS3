// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.0jV

package 1Np{
    public class 0jV {

        public static const 0Ri:Object = {};


        public static function 1ty(_arg1:XML):void{
            var _local2:XML;
            for each (_local2 in _arg1.Particle)
            {
                0Ri[_local2.@id] = new 25b(_local2);
            };
        }


    }
}//package 1Np

