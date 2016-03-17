// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0IW.1ED

package 0IW{
    import 1t6.Dialog;

    public class 1ED implements 025 {

        private static const 1hN:String = 'There are currently no testing servers available. Please play on <font color="#7777EE"><a href="http://www.realmofthemadgod.com/">www.realmofthemadgod.com</a></font>.';
        private static const TITLE:String = "No Testing Servers";
        private static const 1mP:String = "/noTestingServers";


        public function 1NB():Dialog{
            return (new Dialog(TITLE, 1hN, null, null, 1mP));
        }


    }
}//package 0IW

