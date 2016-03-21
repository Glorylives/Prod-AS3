// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Tb.ak

package 1Tb{
    import flash.events.EventDispatcher;
    import EM.Console;
    import EM.12N;

    public class ak extends EventDispatcher {

        protected var console:Console;
        protected var config:12N;

        public function ak(_arg1:Console){
            this.console = _arg1;
            this.config = this.console.config;
        }

        protected function get remoter():xi{
            return (this.console.remoter);
        }

        protected function report(_arg1="", _arg2:int=0, _arg3:Boolean=true, _arg4:String=null):void{
            this.console.report(_arg1, _arg2, _arg3, _arg4);
        }


    }
}//package 1Tb

