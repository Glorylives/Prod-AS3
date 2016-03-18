// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//111.0bo

package _111{
import _1uF._1Mf;

import flash.display.Sprite;

    public class _0bo extends _1Mf {

        [Inject]
        public var view:_0qL;
        [Inject]
        public var _0cC:_0An;
        [Inject]
        public var _0n2:_0io;
        [Inject]
        public var KW:_11S;
        [Inject]
        public var 0q1:iU;
        [Inject]
        public var 1Jt:1Yr;
        [Inject]
        public var 1bv:cP;


        override public function initialize():void{
            this.0q1.add(this.1bK);
            this.0n2.add(this.1HI);
            this.0cC.add(this.0gs);
            this.KW.add(this.0);
            this.1Jt.add(this.wD);
            this.1bv.add(this.01n);
        }

        private function wD(_arg1:Sprite):void{
            this.view.push(_arg1);
        }

        private function 01n():void{
            this.view.pop();
        }

        override public function destroy():void{
            this.0q1.remove(this.1bK);
            this.0n2.remove(this.1HI);
            this.0cC.remove(this.0gs);
            this.KW.remove(this.0);
            this.1Jt.remove(this.wD);
            this.1bv.remove(this.01n);
        }

        private function 1bK(_arg1:int=0x151515):void{
            this.view.1TX(_arg1);
        }

        private function 1HI(_arg1:Sprite):void{
            this.view.show(_arg1, true);
        }

        private function 0gs(_arg1:Sprite):void{
            this.view.show(_arg1, false);
        }

        private function 0():void{
            this.view.stage.focus = null;
            this.view.mv();
        }


    }
}//package 111

