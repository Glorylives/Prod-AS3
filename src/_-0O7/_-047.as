// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0O7.047

package 0O7{
    import 1nd.Console;
    import go.0Ip;

    public final class 047 {

        [Inject]
        public var console:Console;
        [Inject]
        public var log:0Ip;


        public function execute():void{
            var _local1:String = ("  " + this.console.1dP().join("\r  "));
            this.log.dispatch(_local1);
        }


    }
}//package 0O7

