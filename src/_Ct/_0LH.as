// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.0LH

package _Ct{

import _1uF._1Mf;

import _21k._0LB;

import _5z._0OH;
import _5z._1dH;
    import _5z._0tK;
import _5z._2w;

public class _0LH extends _1Mf {

        [Inject]
        public var view:_uX;
        [Inject]
        public var _1j2:_0OH;
        [Inject]
        public var _1fR:_0LB;


        override public function initialize():void{
            var _local1:_2w = this._1j2._19J[this.view.index];
            var _local2:_1dH = _local1._0bg;
            this._1fR.add(this._0JC);
            this.view._0aH.add(this._1CR);
            this.view.disabled = this._1UD(_local2);
            this.view.init(_local1);
        }

        private function _1CR(_arg1:_0tK):void{
            this._1j2.W7(_arg1.u5());
            this._1fR.dispatch();
        }

        private function _0JC():void{
            this.view._0vg(this._1j2._05i());
        }

        private function _1UD(_arg1:_1dH):Boolean{
            var _local2:_0tK = this._1j2._0Qq();
            var _local3:_1dH = _1dH._0Yx(_local2._1qz());
            var _local4:int = _local3._17h;
            return ((_arg1._17h > _local4));
        }


    }
}//package Ct

