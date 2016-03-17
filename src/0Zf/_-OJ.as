// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Zf.OJ

package 0Zf{
    public class OJ {

        private static var 1bE:XML;


        public static function get xml():XML{
            return (1bE);
        }

        public static function set xml(_arg1:XML):void{
            1bE = _arg1;
        }

        public static function mq(_arg1:String):Boolean{
            return (((!((1bE == null))) && (1bE.hasOwnProperty(_arg1))));
        }

        public static function 06S(_arg1:String):Number{
            return (Number(1bE.child(_arg1).toString()));
        }


    }
}//package 0Zf

