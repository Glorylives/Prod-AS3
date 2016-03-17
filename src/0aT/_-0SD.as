// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0aT.0SD

package 0aT{
    import 1uF.1Mf;
    import 1PB.0Ge;
    import com.company.assembleegameclient.util.0sg;
    import flash.events.MouseEvent;

    public class 0SD extends 1Mf {

        [Inject]
        public var oQ:0Ge;
        [Inject]
        public var Wy:0sg;


        override public function initialize():void{
            this.oQ.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        }

        private function onMouseUp(_arg1:MouseEvent):void{
            this.Wy.setFocus(null);
        }

        override public function destroy():void{
            this.oQ.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        }


    }
}//package 0aT

