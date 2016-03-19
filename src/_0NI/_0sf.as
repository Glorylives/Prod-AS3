// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.0sf

package _0NI{
import _0Fr._dW;

import _0OG._22M;
    import _0Fr.*;

    public class _0sf implements _dW {

        private const dM:_22M = new _22M();
        private const _1NG:String = _0cf.create(_0sf);
        private const _14b:_1DR = new _1DR();
        private const _1Rf:Yq = new Yq();

        private var _1eO:_03u;
        private var jq:_13;
        private var _0WA:eY;
        private var _1Za:_1da;

        public function _0sf(){
            this.setup();
        }

        public function get kf():_22M{
            return (this.dM);
        }

        public function get _0ZO():uint{
            return (this._14b._0ZO);
        }

        public function set _0ZO(_arg1:uint):void{
            this._14b._0ZO = _arg1;
        }

        public function get _9g():_1pT{
            return (this._1eO);
        }

        public function initialize():void{
            this._1eO.initialize();
        }

        public function destroy():void{
            this._1eO.destroy();
        }

        public function extend(... _args):_dW{
            var _local2:Object;
            for each (_local2 in _args)
            {
                this._0WA.hf(_local2);
            }
            return (this);
        }

        public function configure(... _args):_dW{
            var _local2:Object;
            for each (_local2 in _args)
            {
                this.jq.AX(_local2);
            }
            return (this);
        }

        public function _1MC(_arg1:_1o, _arg2:Function):_dW{
            this.jq._1MC(_arg1, _arg2);
            return (this);
        }

        public function _1uk(_arg1:Object):_1da{
            return (this._14b._1uk(_arg1));
        }

        public function uu(_arg1:_0d8):_dW{
            this._14b.uu(_arg1);
            return (this);
        }

        public function _4F(... _args):_dW{
            var _local2:Object;
            for each (_local2 in _args)
            {
                this._1Rf._4F(_local2);
            }
            return (this);
        }

        public function release(... _args):_dW{
            var _local2:Object;
            for each (_local2 in _args)
            {
                this._1Rf.release(_local2);
            }
            return (this);
        }

        public function toString():String{
            return (this._1NG);
        }

        private function setup():void{
            this.dM.map(_22M)._1eo(this.dM);
            this.dM.map(_dW)._1eo(this);
            this._1Za = this._14b._1uk(this);
            this._1eO = new _03u(this);
            this.jq = new _13(this);
            this._0WA = new eY(this);
            this._1eO._7i(this._7i);
            this._1eO._0qQ(this._0qQ);
            this._1eO._0Sh(this._0Sh);
            this._1eO._1Ox(this._1Ox);
        }

        private function _7i():void{
            this._1Za.info("Initializing...");
        }

        private function _0qQ():void{
            this._1Za.info("Initialize complete");
        }

        private function _0Sh():void{
            this._1Za.info("Destroying...");
        }

        private function _1Ox():void{
            this._1Rf.flush();
            this.dM._1Cd();
            this._1Za.info("Destroy complete");
        }


    }
}//package 0NI

