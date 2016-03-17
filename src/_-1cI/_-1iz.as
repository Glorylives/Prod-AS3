// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1cI.1iz

package 1cI{
    import flash.errors.IllegalOperationError;
    import _Jy._1HZ;

    public class 1iz implements 9f {

        private var 1iD:Wr;
        private var TA:zl;
        private var 1ub:zl;
        private var Cb:Boolean;
        private var Ki:Boolean;
        private var 10D:Boolean;
        private var 0fE:String;


        final public function start():void{
            if (!this.Cb)
            {
                this.Cb = true;
                ((this.1iD) && (this.1iD.dispatch(this)));
                this.startTask();
            };
        }

        final public function reset():void{
            if (this.Cb)
            {
                this.Cb = false;
                if (!this.Ki)
                {
                    throw (new IllegalOperationError("Unable to Task.reset() when a task is ongoing"));
                };
            };
            ((this.1iD) && (this.1iD.removeAll()));
            ((this.TA) && (this.TA.removeAll()));
            ((this.1ub) && (this.1ub.removeAll()));
            this.onReset();
        }

        protected function startTask():void{
        }

        protected function onReset():void{
        }

        final protected function 1d5(_arg1:Boolean, _arg2:String=""):void{
            this.10D = _arg1;
            this.0fE = _arg2;
            this.Ki = true;
            ((this.TA) && (this.TA.dispatch(this, _arg1, _arg2)));
            ((this.1ub) && (this.1ub.dispatch(this, _arg1, _arg2)));
        }

        final public function get 0i0():_1HZ{
            return ((this.1iD = ((this.1iD) || (new Wr()))));
        }

        final public function get 1uB():zl{
            return ((this.TA = ((this.TA) || (new zl()))));
        }

        final public function get lastly():zl{
            return ((this.1ub = ((this.1ub) || (new zl()))));
        }

        public function get gS():Boolean{
            return (this.Cb);
        }

        public function get vt():Boolean{
            return (this.Ki);
        }

        public function get 0oV():Boolean{
            return (this.10D);
        }

        public function get error():String{
            return (this.0fE);
        }


    }
}//package 1cI

