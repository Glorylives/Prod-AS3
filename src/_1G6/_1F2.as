// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1G6.1F2

package _1G6{
    import _0Fr.*;

import _0NI._0cf;

import _0OG._22M;

import _1Xd.instanceOf;

import flash.display.DisplayObjectContainer;

public class _1F2 implements _0dM {

        private const _1NG:String = _0cf.create(_1F2);

        private var dM:_22M;
        private var _1Za:_1da;


        public function extend(_arg1:_dW):void{
            this.dM = _arg1.kf;
            this._1Za = _arg1._1uk(this);
            _arg1._1MC(instanceOf(DisplayObjectContainer), this.Ai);
        }

        public function toString():String{
            return (this._1NG);
        }

        private function Ai(_arg1:DisplayObjectContainer):void{
            if (this.dM.gL(DisplayObjectContainer))
            {
                this._1Za._0K("A contextView has already been mapped, ignoring {0}", [_arg1]);
            } else
            {
                this._1Za.debug("Mapping {0} as contextView", [_arg1]);
                this.dM.map(DisplayObjectContainer)._1eo(_arg1);
            }
        }


    }
}//package 1G6

