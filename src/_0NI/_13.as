// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.13-

package _0NI{
import _0wP.allOf;
import _0wP.not;

import _1Xd.instanceOf;

import _1i._1o;

import flash.display.DisplayObject;
    import flash.utils.Dictionary;
    import _0OG._22M;
    import _0Fr.*;

    public class _13 {

        private static const Zn:_1o = allOf(instanceOf(Object), not(instanceOf(Class)), not(instanceOf(DisplayObject)));

        private const _1NG:String = _0cf.create(_13);
        private const XS:ObjectProcessor = new ObjectProcessor();
        private const _0zE:Dictionary = new Dictionary();
        private const _1pn:Array = [];

        private var dM:_22M;
        private var _1Za:_1da;
        private var zW:Boolean;

        public function _13(_arg1:_dW){
            this.dM = _arg1.kf;
            this._1Za = _arg1._1uk(this);
            this._1MC(instanceOf(Class), this.E3);
            this._1MC(Zn, this._0kD);
            _arg1._9g.addEventListener(_0qM._16E, this.initialize, false, -100);
        }

        public function AX(_arg1:Object):void{
            if (!this._0zE[_arg1])
            {
                this._0zE[_arg1] = true;
                this.XS._17M(_arg1);
            }
        }

        public function _1MC(_arg1:_1o, _arg2:Function):void{
            this.XS._0Pz(_arg1, _arg2);
        }

        public function toString():String{
            return (this._1NG);
        }

        private function initialize(_arg1:_0qM):void{
            if (!this.zW)
            {
                this.zW = true;
                this._1Yu();
            }
        }

        private function E3(_arg1:Class):void{
            if (this.zW)
            {
                this._1Za.debug("Already initialized. Instantiating config class {0}", [_arg1]);
                this._0ON(_arg1);
            } else
            {
                this._1Za.debug("Not yet initialized. Queuing config class {0}", [_arg1]);
                this._1pn.push(_arg1);
            }
        }

        private function _0kD(_arg1:Object):void{
            if (this.zW)
            {
                this._1Za.debug("Already initialized. Injecting into config object {0}", [_arg1]);
                this._17M(_arg1);
            } else
            {
                this._1Za.debug("Not yet initialized. Queuing config object {0}", [_arg1]);
                this._1pn.push(_arg1);
            }
        }

        private function _1Yu():void{
            var _local1:Object;
            for each (_local1 in this._1pn)
            {
                if ((_local1 is Class))
                {
                    this._1Za.debug("Now initializing. Instantiating config class {0}", [_local1]);
                    this._0ON((_local1 as Class));
                } else
                {
                    this._1Za.debug("Now initializing. Injecting into config object {0}", [_local1]);
                    this._17M(_local1);
                }
            }
            this._1pn.length = 0;
        }

        private function _0ON(_arg1:Class):void{
            var _local2:_1bp = (this.dM.getInstance(_arg1) as _1bp);
            ((_local2) && (_local2.configure()));
        }

        private function _17M(_arg1:Object):void{
            this.dM.G3(_arg1);
            var _local2:_1bp = (_arg1 as _1bp);
            ((_local2) && (_local2.configure()));
        }


    }
}//package 0NI

