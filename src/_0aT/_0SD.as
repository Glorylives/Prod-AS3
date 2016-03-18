// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0aT.0SD

package _0aT{
import _1PB._0Ge;

import _1uF._1Mf;

import com.company.assembleegameclient.util._0sg;
    import flash.events.MouseEvent;

    public class _0SD extends _1Mf {

        [Inject]
        public var oQ:_0Ge;
        [Inject]
        public var Wy:_0sg;


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
}//package _0aT

