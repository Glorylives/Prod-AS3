// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.0k2

package 1PB{
    import 1uF.1Mf;
    import 1t6.ErrorDialog;
    import 1Bg.h8;
    import 1Bg.0oS;
    import 1qg.11S;
    import flash.events.Event;
    import _1aA.CharacterSelectionAndNewsScreen;

    public class 0k2 extends 1Mf {

        [Inject]
        public var view:ErrorDialog;
        [Inject]
        public var 0hQ:h8;
        [Inject]
        public var fP:0oS;
        [Inject]
        public var close:11S;


        override public function initialize():void{
            JR(Event.COMPLETE, this.onComplete);
            this.view.ok.addOnce(this.D2);
        }

        override public function destroy():void{
            0S6(Event.COMPLETE, this.onComplete);
        }

        public function D2():void{
            this.close.dispatch();
        }

        private function onComplete(_arg1:Event):void{
            this.0hQ.dispatch();
            this.fP.dispatch(new CharacterSelectionAndNewsScreen());
        }


    }
}//package 1PB

