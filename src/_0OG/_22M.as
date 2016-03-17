// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//__0OG._22M

package _0OG{
import _1Y._18J;
import _1Y._d5;

import _1u9._07t;

import _IH._1oR;
import _IH._1s4;

import _i0.SsInternal;
import _i0._dj;

import _sc._0je;
import _sc._18e;
import _sc._1W;

import _sc._3A;

import flash.events.EventDispatcher;
    import flash.utils.Dictionary;
import flash.utils.getDefinitionByName;
    import flash.system.ApplicationDomain;
    import _1u9._vu;
    import avmplus.DescribeTypeJSON;
    import _1u9.SF;
    import flash.utils.getQualifiedClassName;

import zr._0ZK;

import zr._1yq;
import zr._88;

use namespace SsInternal;

    public class _22M extends EventDispatcher
    {

        private static var Hy:Dictionary = new Dictionary(true);

        SsInternal const EH:Dictionary = new Dictionary();

        private var _0rl:_22M;
        private var _0zl:ApplicationDomain;
        private var _1cb:_dj;
        private var Xn:Dictionary;
        private var _F:Dictionary;
        private var _xC:Dictionary;
        private var _116:Dictionary;
        private var _1eF:_vu;

        public function _22M(){
            super();
            this.Xn = new Dictionary();
            this._F = new Dictionary();
            this._xC = new Dictionary();
            this._116 = new Dictionary();
            try
            {
                this._1eF = ((DescribeTypeJSON.available) ? new _07t() : new SF());
            } catch(e:Error)
            {
                _1eF = new SF();
            };
            this._1cb = new _dj(this._1eF, Hy);
            this._0zl = ApplicationDomain.currentDomain;
        }

        SsInternal static function _16x():void{
            Hy = new Dictionary(true);
        }


        public function map(_arg1:Class, _arg2:String=""):_1s4{
            var _local3:String = ((getQualifiedClassName(_arg1) + "|") + _arg2);
            return (((this.Xn[_local3]) || (this.pN(_arg1, _arg2, _local3))));
        }

        public function sJ(_arg1:Class, _arg2:String=""):void{
            var _local3:String = ((getQualifiedClassName(_arg1) + "|") + _arg2);
            var _local4:_1s4 = this.Xn[_local3];
            if (((_local4) && (_local4._1vh)))
            {
                throw (new _03A("Can't unmap a sealed mapping"));
            };
            if (!_local4)
            {
                throw (new _03A((("Error while removing an injector mapping: " + "No mapping defined for dependency ") + _local3)));
            };
            _local4.Mu().destroy();
            delete this.Xn[_local3];
            delete this.EH[_local3];
            ((hasEventListener(_1oR._0PX)) && (dispatchEvent(new _1oR(_1oR._0PX, _arg1, _arg2, null))));
        }

        public function _0we(_arg1:Class, _arg2:String=""):Boolean{
            return (!((this.Mu(((getQualifiedClassName(_arg1) + "|") + _arg2)) == null)));
        }

        public function gL(_arg1:Class, _arg2:String=""):Boolean{
            return (!((this.EH[((getQualifiedClassName(_arg1) + "|") + _arg2)] == null)));
        }

        public function _0ih(_arg1:Class, _arg2:String=""):_1s4{
            var _local3:String = ((getQualifiedClassName(_arg1) + "|") + _arg2);
            var _local4:_1s4 = this.Xn[_local3];
            if (!_local4)
            {
                throw (new _d5((("Error while retrieving an injector mapping: " + "No mapping defined for dependency ") + _local3)));
            };
            return (_local4);
        }

        public function G3(_arg1:Object):void{
            var _local2:Class = this._1eF._09Y(_arg1);
            this.C3(_arg1, _local2, this._1cb._W(_local2));
        }

        public function getInstance(_arg1:Class, _arg2:String="", _arg3:Class=null){
            var _local4:String;
            var _local6:_18e;
            _local4 = ((getQualifiedClassName(_arg1) + "|") + _arg2);
            var _local5:_1yq = this.Mu(_local4, false);
            if (_local5)
            {
                _local6 = this._1cb._W(_arg1).ctor;
                return (_local5.apply(_arg3, this, ((_local6) ? _local6.injectParameters : null)));
            };
            if (_arg2)
            {
                throw (new _d5((("No mapping found for request " + _local4) + ". getInstance only creates an unmapped instance if no name is given.")));
            };
            return (this._18Y(_arg1));
        }

        public function Na(_arg1:Object):void{
            var _local2:Class;
            if (!_arg1)
            {
                return;
            };
            _local2 = this._1eF._09Y(_arg1);
            var _local3:_3A = this._2I(_local2);
            var _local4:_1W = _local3._1iP;
            while (_local4)
            {
                _local4.applyInjection(_arg1, _local2, this);
                _local4 = _1W(_local4.next);
            };
        }
        public function _1Cd():void{
            var _local1:_1s4;
            var _local2:Object;
            for each (_local1 in this.Xn)
            {
                _local1.Mu().destroy();
            };
            for each (_local2 in this._116)
            {
                this.Na(_local2);
            };
            this.Xn = new Dictionary();
            this._F = new Dictionary();
            this._xC = new Dictionary();
            this._116 = new Dictionary();
    }

        public function _1Sb(_arg1:ApplicationDomain=null):_22M{
            var _local2:_22M = new _22M();
            _local2._1ks = ((_arg1) || (this._1ks));
            _local2._1Li = this;
            return (_local2);
        }

        public function set _1Li(_arg1:_22M):void{
            this._0rl = _arg1;
        }

        public function get _1Li():_22M{
            return (this._0rl);
        }

        public function set _1ks(_arg1:ApplicationDomain):void{
            this._0zl = ((_arg1) || (ApplicationDomain.currentDomain));
        }

        public function get _1ks():ApplicationDomain{
            return (this._0zl);
        }

        public function fl(_arg1:Class, _arg2:_3A):void{
            this._1cb.P5(_arg1, _arg2);
        }

        public function _2I(_arg1:Class):_3A{
            return (this._1eF._210(_arg1));
        }

        SsInternal function _18Y(_arg1:Class):Object{
            var _local2:_3A = this._1cb._W(_arg1);
            if (!_local2.ctor)
            {
                throw (new _18J(("Can't instantiate interface " + getQualifiedClassName(_arg1))));
            };
            var _local3:* = _local2.ctor.createInstance(_arg1, this);
            ((hasEventListener(_1rr._060)) && (dispatchEvent(new _1rr(_1rr._060, _local3, _arg1))));
            this.C3(_local3, _arg1, _local2);
            return (_local3);
        }

        SsInternal function Mu(_arg1:String, _arg2:Boolean=true):_1yq{
            var _local3:_1yq;
            var _local5:_1yq;
            var _local4:_22M = this;
            while (_local4)
            {
                _local5 = _local4.EH[_arg1];
                if (_local5)
                {
                    if ((_local5 is _0ZK))
                    {
                        _local3 = _local5;
                        _local4 = _local4._1Li;
                        continue;
                    };
                    if ((((_local5 is _88)) && (!((_local4 === this)))))
                    {
                        _local4 = _local4._1Li;
                        continue;
                    };
                    return (_local5);
                };
                _local4 = _local4._1Li;
            };
            if (_local3)
            {
                return (_local3);
            };
            return (((_arg2) ? this._2C(_arg1) : null));
        }

        SsInternal function _2C(_arg1:String):_1yq{
            var parts:Array;
            var definition:Object;
            var mappingId:String = _arg1;
            if (mappingId === "String|")
            {
                return (null);
            };
            parts = mappingId.split("|");
            var name:String = parts.pop();
            if (name.length !== 0)
            {
                return (null);
            };
            var typeName:String = parts.pop();
            try
            {
                definition = ((this._0zl.hasDefinition(typeName)) ? this._0zl.getDefinition(typeName) : getDefinitionByName(typeName));
            } catch(e:Error)
            {
                return (null);
            };
            if (((!(definition)) || (!((definition is Class)))))
            {
                return (null);
            };
            var type:Class = Class(definition);
            var description:_3A = this._1cb._W(type);
            if (!description.ctor)
            {
                return (null);
            };
            return ((this._xC[type] = ((this._xC[type]) || (new _0aP(type)))));
        }

        private function pN(_arg1:Class, _arg2:String, _arg3:String):_1s4{
            var _local4:_1s4;
            if (this._F[_arg3])
            {
                throw (new _03A("Can't change a mapping from inside a listener to it's creation event"));
            };
            this._F[_arg3] = true;
            ((hasEventListener(_1oR.xR)) && (dispatchEvent(new _1oR(_1oR.xR, _arg1, _arg2, null))));
            _local4 = new _1s4(this, _arg1, _arg2, _arg3);
            this.Xn[_arg3] = _local4;
            var _local5:Object = _local4._0ag();
            ((hasEventListener(_1oR.tv)) && (dispatchEvent(new _1oR(_1oR.tv, _arg1, _arg2, _local4))));
            delete this._F[_arg3];
            _local4._0hA(_local5);
            return (_local4);
        }

        private function C3(_arg1:Object, _arg2:Class, _arg3:_3A):void{
            var _local4:_0je = _arg3.injectionPoints;
            ((hasEventListener(_1rr.H6)) && (dispatchEvent(new _1rr(_1rr.H6, _arg1, _arg2))));
            while (_local4)
            {
                _local4.applyInjection(_arg1, _arg2, this);
                _local4 = _local4.next;
            };
            if (_arg3._1iP)
            {
                this._116[_arg1] = _arg1;
            };
            ((hasEventListener(_1rr._0rL)) && (dispatchEvent(new _1rr(_1rr._0rL, _arg1, _arg2))));
        }


    }
}//package __0OG

