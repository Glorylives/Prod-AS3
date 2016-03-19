// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//aS.0bq

package aS{
    import __AS3__.vec.Vector;
    import 1f1.1Mq;
    import _Jy.23R;
    import _0OG._22M;
    import flash.utils.Dictionary;
    import flash.utils.describeType;
    import 0NI.guardsApprove;
    import 0NI.applyHooks;
    import __AS3__.vec.*;
    import 1f1.*;

    public class 0bq implements 0bs {

        private const Xn:Vector.<1Mq> = new Vector.<1Mq>();

        private var _signal:23R;
        private var br:Class;
        private var _once:Boolean;
        protected var dM:_22M;
        protected var 1PX:Dictionary;
        protected var Vf:Dictionary;

        public function 0bq(_arg1:_22M, _arg2:Class, _arg3:Boolean=false){
            this.dM = _arg1;
            this.br = _arg2;
            this._once = _arg3;
            this.1PX = new Dictionary(false);
            this.Vf = new Dictionary(false);
        }

        public function 1cM(_arg1:1Mq):void{
            this.1As(_arg1);
            this.Xn.push(_arg1);
            if (this.Xn.length == 1)
            {
                this.0Wi(_arg1.commandClass);
            }
        }

        public function oE(_arg1:1Mq):void{
            var _local2:int = this.Xn.indexOf(_arg1);
            if (_local2 != -1)
            {
                this.Xn.splice(_local2, 1);
                if (this.Xn.length == 0)
                {
                    this.e0(_arg1.commandClass);
                }
            }
        }

        protected function 1As(_arg1:1Mq):void{
            var mapping:1Mq = _arg1;
            if (this.Vf[mapping.commandClass])
            {
                return;
            }
            if (describeType(mapping.commandClass).factory.method.(@name == "execute").length() == 0)
            {
                throw (new Error("Command Class must expose an execute method"));
            }
            this.Vf[mapping.commandClass] = true;
        }

        protected function cL(_arg1:23R, _arg2:Array, _arg3:Class, _arg4:Boolean):void{
            var _local6:1Mq;
            var _local7:Boolean;
            var _local8:Object;
            var _local5:Vector.<1Mq> = this.Xn.concat();
            for each (_local6 in _local5)
            {
                this.1eL(_arg1.valueClasses, _arg2);
                _local7 = guardsApprove(_local6.OQ, this.dM);
                if (_local7)
                {
                    ((this._once) && (this.oE(_local6)));
                    this.dM.map(_local6.commandClass).1nL();
                    _local8 = this.dM.getInstance(_local6.commandClass);
                    applyHooks(_local6.1kC, this.dM);
                    this.dM.sJ(_local6.commandClass);
                }
                this.0tE(_arg1.valueClasses, _arg2);
                if (_local7)
                {
                    _local8.execute();
                }
            }
            if (this._once)
            {
                this.e0(_arg3);
            }
        }

        protected function 1eL(_arg1:Array, _arg2:Array):void{
            var _local3:uint;
            while (_local3 < _arg1.length)
            {
                this.dM.map(_arg1[_local3]).1eo(_arg2[_local3]);
                _local3++;
            }
        }

        protected function 0tE(_arg1:Array, _arg2:Array):void{
            var _local3:uint;
            while (_local3 < _arg1.length)
            {
                this.dM.sJ(_arg1[_local3]);
                _local3++;
            }
        }

        protected function 1Gk(_arg1:23R, _arg2:Class):Boolean{
            var _local3:Dictionary = this.1PX[_arg1];
            if (_local3 == null)
            {
                return (false);
            }
            var _local4:Function = _local3[_arg2];
            return (!((_local4 == null)));
        }

        private function 0Wi(_arg1:Class):void{
            var commandClass:Class = _arg1;
            if (this.1Gk(this._signal, commandClass))
            {
                return;
            }
            this._signal = this.dM.getInstance(this.br);
            this.dM.map(this.br).1eo(this._signal);
            var signalCommandMap:Dictionary = (this.1PX[this._signal] = ((this.1PX[this._signal]) || (new Dictionary(false))));
            var callback:Function = function ():void{
                cL(_signal, arguments, commandClass, _once);
            }
            signalCommandMap[commandClass] = callback;
            this._signal.add(callback);
        }

        private function e0(_arg1:Class):void{
            var _local2:Dictionary = this.1PX[this._signal];
            if (_local2 == null)
            {
                return;
            }
            var _local3:Function = _local2[_arg1];
            if (_local3 == null)
            {
                return;
            }
            this._signal.remove(_local3);
            delete _local2[_arg1];
        }


    }
}//package aS

