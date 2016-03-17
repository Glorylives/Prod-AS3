// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0T7.N3

package 0T7{
    import 0mS.0XK;

    public final class N3 {

        public static const Eg:String = "localhost";
        public static const dA:String = "private";
        public static const 0N0:String = "dev";
        public static const 1xf:String = "testing";
        public static const TESTING2:String = "testing2";
        public static const 1up:String = "prodtest";
        public static const gb:String = "production";
        private static const 04R:RegExp = /[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/;


        public function yC(_arg1:String):0XK{
            return (((this.0qN(_arg1)) ? 0XK.1Lb : this.01N(_arg1)));
        }

        private function 0qN(_arg1:String):Boolean{
            return (!((_arg1.match(04R) == null)));
        }

        private function 01N(_arg1:String):0XK{
            switch (_arg1)
            {
                case Eg:
                    return (0XK.Eg);
                case dA:
                    return (0XK.dA);
                case 0N0:
                    return (0XK.0N0);
                case 1xf:
                    return (0XK.1xf);
                case TESTING2:
                    return (0XK.TESTING2);
                case 1up:
                    return (0XK.1up);
                case gb:
                    return (0XK.gb);
            };
            return (null);
        }


    }
}//package 0T7

