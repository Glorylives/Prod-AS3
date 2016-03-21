// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Jc.1dY

package Jc{
    import 0y3.Server;
    import com.company.assembleegameclient.parameters.Parameters;


    import 0y3.*;

    public class 1dY implements 0gx {

        private var localhost:Server;

        public function 1dY(){
            this.localhost = new Server().setName("localhost").setPort(Parameters.1xJ);
        }

        public function setIP(_arg1:String):1dY{
            this.localhost.setAddress(_arg1);
            return (this);
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

