// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1YL.0Y

package 1YL{
    import 1uF.1Mf;
    import 1nd.Console;
    import go.0Ip;

    public final class 0Y extends 1Mf {

        private static const 1tZ:String = '[0xFF3333:error - "${value}" not found]';
        private static const 202:String = "[0xFFEE00:${value}]";

        [Inject]
        public var view:N8;
        [Inject]
        public var console:Console;
        [Inject]
        public var log:0Ip;


        override public function initialize():void{
            JR(ConsoleEvent.INPUT, this.26B, ConsoleEvent);
            JR(ConsoleEvent.GET_PREVIOUS, this.iQ, ConsoleEvent);
            JR(ConsoleEvent.GET_NEXT, this.0Oz, ConsoleEvent);
        }

        override public function destroy():void{
            0S6(ConsoleEvent.INPUT, this.26B, ConsoleEvent);
            0S6(ConsoleEvent.GET_PREVIOUS, this.iQ, ConsoleEvent);
            0S6(ConsoleEvent.GET_NEXT, this.0Oz, ConsoleEvent);
        }

        private function 26B(_arg1:ConsoleEvent):void{
            var _local2:String = _arg1.data;
            this.1zd(_local2);
            this.console.execute(_local2);
        }

        private function 1zd(_arg1:String):void{
            if (this.console.uF(_arg1))
            {
                this.dR(_arg1);
            } else
            {
                this.0B4(_arg1);
            }
        }

        private function dR(_arg1:String):void{
            var _local2:Array = _arg1.split(" ");
            _local2[0] = 202.replace("${value}", _local2[0]);
            this.log.dispatch(_local2.join(" "));
        }

        private function 0B4(_arg1:String):void{
            var _local2:String = 1tZ.replace("${value}", _arg1);
            this.log.dispatch(_local2);
        }

        private function iQ(_arg1:ConsoleEvent):void{
            this.view.text = this.console.0Vo();
        }

        private function 0Oz(_arg1:ConsoleEvent):void{
            this.view.text = this.console.20G();
        }


    }
}//package 1YL

