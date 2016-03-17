// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.0cf

package _0NI{
    import flash.utils.getQualifiedClassName;

    public class _0cf {

        private static var Nt:uint;


        public static function create(_arg1=null):String{
            if ((_arg1 is Class))
            {
                _arg1 = getQualifiedClassName(_arg1).split("::").pop();
            };
            return ((((((_arg1) ? (_arg1 + "-") : "") + Nt++).toString() + "-") + (Math.random() * 0xFF).toString(16)));
        }


    }
}//package 0NI

