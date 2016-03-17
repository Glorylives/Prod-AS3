// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0g5.0GN

package 0g5{
    import __AS3__.vec.Vector;
    import 1f1.1Mq;
    import 0Xi.fE;
    import flash.events.IEventDispatcher;
    import _0OG._22M;
    import flash.utils.describeType;
    import __AS3__.vec.*;
    import 1f1.*;

    public class 0GN implements 0bs {

        private const Xn:Vector.<1Mq> = new Vector.<1Mq>();
        private const LF:fE = new fE();

        private var 1yb:IEventDispatcher;
        private var F1:String;
        private var 0YO:j3;

        public function 0GN(_arg1:_22M, _arg2:IEventDispatcher, _arg3:String, _arg4:Class=null){
            this.1yb = _arg2;
            this.F1 = _arg3;
            this.0YO = new j3(this, this.LF, _arg1, _arg4);
        }

        public function 1cM(_arg1:1Mq):void{
            this.1As(_arg1);
            if (this.LF.0wv)
            {
                this.LF.0wv.next = _arg1;
            } else
            {
                this.LF.0kc = _arg1;
                this.1R7();
            };
        }

        public function oE(_arg1:1Mq):void{
            this.LF.remove(_arg1);
            if (!this.LF.0kc)
            {
                this.cd();
            };
        }

        private function 1As(_arg1:1Mq):void{
            var mapping:1Mq = _arg1;
            if (describeType(mapping.commandClass).factory.method.(@name == "execute").length() == 0)
            {
                throw (new Error("Command Class must expose an execute method"));
            };
        }

        private function 1R7():void{
            this.1yb.addEventListener(this.F1, this.0YO.execute);
        }

        private function cd():void{
            this.1yb.removeEventListener(this.F1, this.0YO.execute);
        }


    }
}//package 0g5

