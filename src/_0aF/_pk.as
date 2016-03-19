// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0aF.pk

package _0aF{
    import _0NI._0cf;
    import _0Fr._1da;
    import _0OG._22M;
    import flash.display.DisplayObjectContainer;
    import _0Fr._dW;

    public class _pk {

        private const _1NG:String = _0cf.create(_pk);

        private var _1Za:_1da;
        private var dM:_22M;
        private var _8B:DisplayObjectContainer;
        private var _0Tc:_dW;

        public function _pk(_arg1:_dW, _arg2:DisplayObjectContainer){
            this._1Za = _arg1._1uk(this);
            this.dM = _arg1.kf;
            this._8B = _arg2;
            _arg1._9g._0f3(this.destroy);
            this.init();
        }

        public function toString():String{
            return (this._1NG);
        }

        private function init():void{
            this._1Za.debug("Listening for context existence events on contextView {0}", [this._8B]);
            this._8B.addEventListener(ModularContextEvent.ZC, this._0cd);
        }

        private function destroy():void{
            this._1Za.debug("Removing modular context existence event listener from contextView {0}", [this._8B]);
            this._8B.removeEventListener(ModularContextEvent.ZC, this._0cd);
            if (this._0Tc)
            {
                this._1Za.debug("Unlinking parent injector for child context {0}", [this._0Tc]);
                this._0Tc.kf._1Li = null;
            }
        }

        private function _0cd(_arg1:ModularContextEvent):void{
            _arg1.stopImmediatePropagation();
            this._0Tc = _arg1.context;
            this._1Za.debug("Context existence event caught. Configuring child context {0}", [this._0Tc]);
            this._0Tc.kf._1Li = this.dM;
        }


    }
}//package _0aF

