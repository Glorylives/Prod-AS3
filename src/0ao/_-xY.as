// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0ao.xY

package 0ao{
    import com.company.assembleegameclient.parameters.Parameters;
    import qG.*;

    public class xY implements 0bJ {

        private const uU:String = "realmtesting2.appspot.com";
        private const 1km:String = ("http://" + xY.uU);
        private const Z9:String = ("https://" + xY.uU);
        private const q7:String = "UA-11236645-6";
        private const 1Bq:String = "<font color='#FF0000'>TESTING 2 </font> #{VERSION}";


        public function 1HF(_arg1:Boolean=false):String{
            return (((_arg1) ? this.1km : this.Z9));
        }

        public function 0Rc():String{
            return (this.q7);
        }

        public function 04j():String{
            var _local1:String = ((Parameters.01b + ".") + Parameters.1Vw);
            return (this.1Bq.replace("{VERSION}", _local1));
        }

        public function 1x1():Boolean{
            return (true);
        }

        public function 14D():Boolean{
            return (true);
        }

        public function ib():Boolean{
            return (true);
        }

        public function 0a4():Boolean{
            return (false);
        }

        public function 05L():Boolean{
            return (true);
        }

        public function 0Me():Boolean{
            return (false);
        }

        public function 0cv():Boolean{
            return (false);
        }


    }
}//package 0ao

