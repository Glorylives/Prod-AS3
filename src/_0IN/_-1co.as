// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0IN.1co

package 0IN{
    import flash.utils.Dictionary;
    import 5z.1dH;

    public class 1co {

        private static const 1q:Dictionary = 1jF();
        private static const 1c2:Dictionary = Zl();


        private static function Zl():Dictionary{
            var _local1:Dictionary = new Dictionary();
            _local1[1dH.aB] = {
                gold:100,
                fame:300
            };
            _local1[1dH.gt] = {
                gold:240,
                fame:1000
            };
            _local1[1dH.0UN] = {
                gold:600,
                fame:4000
            };
            _local1[1dH.z] = {
                gold:1800,
                fame:15000
            };
            return (_local1);
        }

        private static function 1jF():Dictionary{
            var _local1:Dictionary = new Dictionary();
            _local1[1dH.aB] = {
                gold:5,
                fame:10
            };
            _local1[1dH.gt] = {
                gold:12,
                fame:30
            };
            _local1[1dH.0UN] = {
                gold:30,
                fame:100
            };
            _local1[1dH.z] = {
                gold:60,
                fame:350
            };
            _local1[1dH.cn] = {
                gold:150,
                fame:1000
            };
            return (_local1);
        }

        public static function 0ws(_arg1:1dH):int{
            return (((1c2[_arg1]) ? 1c2[_arg1].gold : 0));
        }

        public static function 24K(_arg1:1dH):int{
            return (((1c2[_arg1]) ? 1c2[_arg1].fame : 0));
        }

        public static function 0ju(_arg1:1dH):int{
            return (1q[_arg1].gold);
        }

        public static function 10t(_arg1:1dH):int{
            return (1q[_arg1].fame);
        }


    }
}//package 0IN

