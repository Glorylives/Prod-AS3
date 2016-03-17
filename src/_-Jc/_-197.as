// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Jc.197

package Jc{
    import 0y3.Server;
    import com.company.assembleegameclient.parameters.Parameters;
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;
    import 0y3.*;

    public class 197 implements 0gx {

        private var localhost:Server;

        public function 197(){
            this.localhost = new Server().setName("localhost").setAddress("localhost").setPort(Parameters.1xJ);
        }

        public function 1Gj():Vector.<Server>{
            return (new <Server>[this.localhost]);
        }

        public function Zz():Server{
            return (this.localhost);
        }

        public function 1nF():Boolean{
            return (true);
        }

        public function 1uI(_arg1:Vector.<Server>):void{
        }


    }
}//package Jc

