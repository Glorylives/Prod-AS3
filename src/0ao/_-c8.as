// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0ao.c8

package 0ao{
    import com.company.assembleegameclient.parameters.Parameters;
    import qG.*;

    public class c8 implements 0bJ {

        private const uU:String = "realmofthemadgodhrd.appspot.com";
        private const 1km:String = ("http://" + c8.uU);
        private const Z9:String = ("https://" + c8.uU);
        private const q7:String = "UA-11236645-4";
        private const 1Bq:String = "RotMG #{VERSION}.{MINOR}";


        public function 1HF(_arg1:Boolean=false):String{
            return (((_arg1) ? this.1km : this.Z9));
        }

        public function 0Rc():String{
            return (this.q7);
        }

        public function 04j():String{
            return (this.1Bq.replace("{VERSION}", Parameters.01b).replace("{MINOR}", Parameters.1Vw));
        }

        public function 1x1():Boolean{
            return (false);
        }

        public function 14D():Boolean{
            return (false);
        }

        public function ib():Boolean{
            return (false);
        }

        public function 05L():Boolean{
            return (true);
        }

        public function 0a4():Boolean{
            return (false);
        }

        public function 0Me():Boolean{
            return (false);
        }

        public function 0cv():Boolean{
            return (false);
        }


    }
}//package 0ao

