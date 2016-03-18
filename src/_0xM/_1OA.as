// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0xM.1OA

package _0xM{
import _0qj._1ae;

import _1Bg._1hy;
import _1Bg._of;

import _1uF._1Mf;

public class _1OA extends _1Mf {

        [Inject]
        public var view:_0YR;
        [Inject]
        public var X4:_1hy;
        [Inject]
        public var up:_of;


        override public function initialize():void{
            this.X4.add(this.kv);
            this.up.add(this._0CI);
        }

        override public function destroy():void{
            this.X4.remove(this.kv);
            this.up.remove(this._0CI);
        }

        private function kv(_arg1:_1ae):void{
            this.view.show(_arg1);
        }

        private function _0CI():void{
            this.view.hide();
        }


    }
}//package 0xM

