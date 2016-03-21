// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1cI.1iz

package _1cI{
    import flash.errors.IllegalOperationError;
    import _Jy._1HZ;

    public class _1iz implements _9f {

        private var _1iD:_Wr;
        private var TA:_zl;
        private var _1ub:_zl;
        private var Cb:Boolean;
        private var Ki:Boolean;
        private var _10D:Boolean;
        private var _0fE:String;


        final public function start():void{
            if (!this.Cb)
            {
                this.Cb = true;
                ((this._1iD) && (this._1iD.dispatch(this)));
                this.startTask();
            }
        }

        final public function reset():void{
            if (this.Cb)
            {
                this.Cb = false;
                if (!this.Ki)
                {
                    throw (new IllegalOperationError("Unable to Task.reset() when a task is ongoing"));
                }
            }
            ((this._1iD) && (this._1iD.removeAll()));
            ((this.TA) && (this.TA.removeAll()));
            ((this._1ub) && (this._1ub.removeAll()));
            this.onReset();
        }

        protected function startTask():void{
        }

        protected function onReset():void{
        }

        final protected function _1d5(_arg1:Boolean, _arg2:String=""):void{
            this._10D = _arg1;
            this._0fE = _arg2;
            this.Ki = true;
            ((this.TA) && (this.TA.dispatch(this, _arg1, _arg2)));
            ((this._1ub) && (this._1ub.dispatch(this, _arg1, _arg2)));
        }

        final public function get _0i0():_1HZ{
            return ((this._1iD = ((this._1iD) || (new _Wr()))));
        }

        final public function get _1uB():_zl{
            return ((this.TA = ((this.TA) || (new _zl()))));
        }

        final public function get lastly():_zl{
            return ((this._1ub = ((this._1ub) || (new _zl()))));
        }

        public function get gS():Boolean{
            return (this.Cb);
        }

        public function get vt():Boolean{
            return (this.Ki);
        }

        public function get _0oV():Boolean{
            return (this._10D);
        }

        public function get error():String{
            return (this._0fE);
        }


    }
}//package 1cI

