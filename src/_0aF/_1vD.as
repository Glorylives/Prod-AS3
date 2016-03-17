// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0aF.1vD

package _0aF{

import _06I._1Be;

import _0Fr._1da;

import _0NI._0cf;

import _0OG._22M;
    import tB.AF;
    import _0Fr._dW;
    import flash.display.DisplayObjectContainer;

    public class _1vD {

        private const _1NG:String = _0cf.create(_1vD);

        private var _1Za:_1da;
        private var dM:_22M;
        private var kw:AF;
        private var _0Tc:_dW;

        public function _1vD(_arg1:_dW, _arg2:AF){
            this._1Za = _arg1._1uk(this);
            this.dM = _arg1.kf;
            this.kw = _arg2;
            _arg1._9g._0f3(this.destroy);
            this.init();
        }

        public function toString():String{
            return (this._1NG);
        }

        private function init():void{
            var _local1:DisplayObjectContainer;
            for each (_local1 in this.kw.Vt)
            {
                this._1Za.debug("Adding context existence event listener to container {0}", [_local1]);
                _local1.addEventListener(ModularContextEvent.ZC, this._0cd);
            };
            this.kw.addEventListener(_1Be._1fg, this._1h3);
            this.kw.addEventListener(_1Be._0PQ, this._0yl);
        }

        private function destroy():void{
            var _local1:DisplayObjectContainer;
            for each (_local1 in this.kw.Vt)
            {
                this._1Za.debug("Removing context existence event listener from container {0}", [_local1]);
                _local1.removeEventListener(ModularContextEvent.ZC, this._0cd);
            };
            this.kw.removeEventListener(_1Be._1fg, this._1h3);
            this.kw.removeEventListener(_1Be._0PQ, this._0yl);
            if (this._0Tc)
            {
                this._1Za.debug("Unlinking parent injector for child context {0}", [this._0Tc]);
                this._0Tc.kf._1Li = null;
            };
        }

        private function _1h3(_arg1:_1Be):void{
            this._1Za.debug("Adding context existence event listener to container {0}", [_arg1.container]);
            _arg1.container.addEventListener(ModularContextEvent.ZC, this._0cd);
        }

        private function _0yl(_arg1:_1Be):void{
            this._1Za.debug("Removing context existence event listener from container {0}", [_arg1.container]);
            _arg1.container.removeEventListener(ModularContextEvent.ZC, this._0cd);
        }

        private function _0cd(_arg1:ModularContextEvent):void{
            _arg1.stopImmediatePropagation();
            this._0Tc = _arg1.context;
            this._1Za.debug("Context existence event caught. Configuring child context {0}", [this._0Tc]);
            this._0Tc.kf._1Li = this.dM;
        }


    }
}//package _0aF

