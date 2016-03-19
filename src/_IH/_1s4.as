// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//IH.1s4

package _IH{
    import _0OG._22M;

import i0.SsInternal;

import zr._1E;

import zr._1yq;
import zr._88;

use namespace SsInternal;

    public class _1s4 implements _1g3, _18H {

        private var F1:Class;
        private var _name:String;
        private var _0Wl:String;
        private var _1TN:_22M;
        private var _0OO:Boolean;
        private var _0F7:_22M;
        private var _1hk:Boolean;
        private var _0m8:Boolean;
        private var xb:Boolean;
        private var wN:Object;

        public function _1s4(_arg1:_22M, _arg2:Class, _arg3:String, _arg4:String){
            this._1TN = _arg1;
            this.F1 = _arg2;
            this._name = _arg3;
            this._0Wl = _arg4;
            this._0OO = true;
            this._0hc(new _0aP(_arg2));
        }

        public function _1nL():_18H{
            this._1GE(this.F1);
            return (this);
        }

        public function qi(_arg1:Class):_18H{
            this._0ta(new _0aP(_arg1));
            return (this);
        }

        public function _1GE(_arg1:Class):_18H{
            this._0ta(new _1HP(_arg1, this._1TN));
            return (this);
        }

        public function _1eo(_arg1:Object):_18H{
            this._0ta(new _1iC(_arg1));
            return (this);
        }

        public function _0ta(_arg1:_1yq):_18H{
            ((this.xb) && (this._0iJ()));
            if (((((this._212()) && (!((_arg1 == null))))) && (!(this._0OO))))
            {
                trace(((((("Warning: Injector already has a mapping for " + this._0Wl) + ".\n ") + "If you have overridden this mapping intentionally you can use ") + '"injector.unmap()" prior to your replacement mapping in order to ') + "avoid seeing this message."));
                ((this._1TN.hasEventListener(_1oR._0zn)) && (this._1TN.dispatchEvent(new _1oR(_1oR._0zn, this.F1, this._name, this))));
            }
            this._c1();
            this._0OO = false;
            this._0hc(_arg1);
            this._rg();
            return (this);
        }

        public function lU():_1g3{
            var _local1:_1yq;
            ((this.xb) && (this._0iJ()));
            if (!this._1hk)
            {
                _local1 = this.Mu();
                this.c1();
                this._1hk = true;
                this._0hc(_local1);
                this.rg();
            }
            return (this);
        }

        public function _1fa():_1g3{
            ((this.xb) && (this._0iJ()));
            if (this._0m8)
            {
                return (this);
            }
            var _local1:_1yq = this.Mu();
            this.c1();
            this._0m8 = true;
            this._0hc(_local1);
            this.rg();
            return (this);
        }

        public function _0ag():Object{
            if (this.xb)
            {
                throw (new _03A("Mapping is already sealed."));
            }
            this.xb = true;
            this.wN = {}
            return (this.wN);
        }

        public function _0hA(_arg1:Object):_1s4{
            if (!this.xb)
            {
                throw (new _03A("Can't unseal a non-sealed mapping."));
            }
            if (_arg1 !== this.wN)
            {
                throw (new _03A("Can't unseal mapping without the correct key."));
            }
            this.xb = false;
            this.wN = null;
            return (this);
        }

        public function get _1vh():Boolean{
            return (this.xb);
        }

        public function _212():Boolean{
            return (Boolean(this._1TN.SsInternal::EH[this._0Wl]));
        }

        public function Mu():_1yq{
            var _local1:_1yq = this._1TN.SsInternal::EH[this._0Wl];
            while ((_local1 is _1E))
            {
                _local1 = _1E(_local1).provider;
            }
            return (_local1);
        }

        public function setInjector(_arg1:_22M):_1s4{
            ((this.xb) && (this._0iJ()));
            if (_arg1 == this._0F7)
            {
                return (this);
            }
            var _local2:_1yq = this.Mu();
            this._0F7 = _arg1;
            this._0hc(_local2);
            return (this);
        }

        private function _0hc(_arg1:_1yq):void{
            if (this._1hk)
            {
                _arg1 = new _0ZK(_arg1);
            }
            if (this._0m8)
            {
                _arg1 = new _88(_arg1);
            }
            if (this._0F7)
            {
                _arg1 = new pf(this._0F7, _arg1);
            }
            this._1TN.SsInternal::EH[this._0Wl] = _arg1;
        }

        private function _0iJ():void{
            throw (new _03A("Can't change a sealed mapping"));
        }

        private function c1():void{
            ((this._1TN.hasEventListener(_1oR._1cB)) && (this._1TN.dispatchEvent(new _1oR(_1oR._1cB, this.F1, this._name, this))));
        }

        private function rg():void{
            ((this._1TN.hasEventListener(_1oR._1F)) && (this._1TN.dispatchEvent(new _1oR(_1oR._1F, this.F1, this._name, this))));
        }


    }
}//package IH

