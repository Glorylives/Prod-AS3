// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1YL.24s

package 1YL{
    import 1uF.1Mf;
    import flash.display.DisplayObjectContainer;
    import go.0kt;
    import flash.events.KeyboardEvent;

    public class 24s extends 1Mf {

        private const 0CJ:uint = 27;

        [Inject]
        public var view:DisplayObjectContainer;
        [Inject]
        public var 0rS:0kt;


        override public function initialize():void{
            this.view.stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        override public function destroy():void{
            this.view.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if (_arg1.keyCode == this.0CJ)
            {
                this.0rS.dispatch();
            };
        }


    }
}//package 1YL

