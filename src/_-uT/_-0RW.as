// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//uT.0RW

package uT{
    import 0NI.0cf;
    import 0Fr.dW;
    import flash.display.DisplayObjectContainer;
    import 0Fr.1da;
    import 1Xd.instanceOf;
    import flash.events.Event;
    import 0Fr.*;

    public class 0RW implements 0dM {

        private const 1NG:String = 0cf.create(0RW);

        private var 1Hl:dW;
        private var 8B:DisplayObjectContainer;
        private var 1Za:1da;


        public function extend(_arg1:dW):void{
            this.1Hl = _arg1;
            this.1Za = _arg1.1uk(this);
            this.1Hl.1MC(instanceOf(DisplayObjectContainer), this.Ai);
        }

        public function toString():String{
            return (this.1NG);
        }

        private function Ai(_arg1:DisplayObjectContainer):void{
            if (this.8B)
            {
                this.1Za.0K("A contextView has already been set, ignoring {0}", [_arg1]);
                return;
            }
            this.8B = _arg1;
            if (this.8B.stage)
            {
                this.1NY();
            } else
            {
                this.1Za.debug("Context view is not yet on stage. Waiting...");
                this.8B.addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            }
        }

        private function onAddedToStage(_arg1:Event):void{
            this.8B.removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            this.1NY();
        }

        private function 1NY():void{
            this.1Za.debug("Context view is now on stage. Initializing context...");
            this.1Hl.9g.initialize();
            this.8B.addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this.1Za.debug("Context view has left the stage. Destroying context...");
            this.8B.removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.1Hl.9g.destroy();
        }


    }
}//package uT

