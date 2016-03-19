// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Ub.4m

package _0Ub{
import _0Fr._0dM;
import _0Fr._1da;
import _0Fr._dW;

import _0NI._0cf;

import _0OG._22M;

import _0aF.ModularContextEvent;

import _0aF._1vD;
import _0aF._pk;

import flash.display.DisplayObjectContainer;
    import tB.AF;

    public class _4m implements _0dM {

        private const _1NG:String = _0cf.create(_4m);

        private var _1Hl:_dW;
        private var dM:_22M;
        private var _1Za:_1da;
        private var Za:Boolean;
        private var uN:Boolean;

        public function _4m(_arg1:Boolean=true, _arg2:Boolean=true){
            this.Za = _arg1;
            this.uN = _arg2;
        }

        public function extend(_arg1:_dW):void{
            this._1Hl = _arg1;
            this.dM = _arg1.kf;
            this._1Za = _arg1._1uk(this);
            this._1Hl._9g._7i(this._7i);
        }

        public function toString():String{
            return (this._1NG);
        }

        private function _7i():void{
            ((this.Za) && (this.VH()));
            ((this.uN) && (this._0sj()));
        }

        private function VH():void{
            var _local1:DisplayObjectContainer;
            if (this.dM.gL(DisplayObjectContainer))
            {
                this._1Za.debug("Context configured to inherit. Broadcasting existence event...");
                _local1 = this.dM.getInstance(DisplayObjectContainer);
                _local1.dispatchEvent(new ModularContextEvent(ModularContextEvent.ZC, this._1Hl));
            } else
            {
                this._1Za._0K("Context has been configured to inherit dependencies but has no way to do so");
            }
        }

        private function _0sj():void{
            var _local1:AF;
            var _local2:DisplayObjectContainer;
            if (this.dM.gL(AF))
            {
                this._1Za.debug("Context has a ViewManager. Configuring view manager based context existence watcher...");
                _local1 = this.dM.getInstance(AF);
                new _1vD(this._1Hl, _local1);
            } else
            {
                if (this.dM.gL(DisplayObjectContainer))
                {
                    this._1Za.debug("Context has a ContextView. Configuring context view based context existence watcher...");
                    _local2 = this.dM.getInstance(DisplayObjectContainer);
                    new _pk(this._1Hl, _local2);
                } else
                {
                    this._1Za._0K("Context has been configured to expose its dependencies but has no way to do so");
                }
            }
        }


    }
}//package 0Ub

