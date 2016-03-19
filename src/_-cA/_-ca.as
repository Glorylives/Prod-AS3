// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//cA.ca

package cA{
    import __AS3__.vec.Vector;
    import flash.events.IEventDispatcher;
    import flash.events.Event;
    import __AS3__.vec.*;
    import 1-6.*;

    public class ca implements 2-f {

        private const 1L0:Vector.<1lk> = new Vector.<1lk>();
        private const 01u:Vector.<1lk> = new Vector.<1lk>();

        private var _eventDispatcher:IEventDispatcher;
        private var 08x:Boolean = false;

        public function ca(_arg1:IEventDispatcher){
            this._eventDispatcher = _arg1;
        }

        public function 2-V(_arg1:IEventDispatcher, _arg2:String, _arg3:Function, _arg4:Class=null, _arg5:Boolean=false, _arg6:int=0, _arg7:Boolean=true):void{
            var eventConfig:1lk;
            var callback:Function;
            var dispatcher:IEventDispatcher = _arg1;
            var eventString:String = _arg2;
            var listener:Function = _arg3;
            var eventClass = _arg4;
            var useCapture:Boolean = _arg5;
            var priority:int = _arg6;
            var useWeakReference:Boolean = _arg7;
            eventClass = ((eventClass) || (Event));
            var currentListeners:Vector.<1lk> = ((this.08x) ? this.01u : this.1L0);
            var i:int = currentListeners.length;
            while ((i = (i - 1)), i)
            {
                eventConfig = currentListeners[i];
                if ((((((((((eventConfig.dispatcher == dispatcher)) && ((eventConfig.eventString == eventString)))) && ((eventConfig.listener == listener)))) && ((eventConfig.useCapture == useCapture)))) && ((eventConfig.eventClass == eventClass))))
                {
                    return;
                }
            }
            if (eventClass != Event)
            {
                callback = function (_arg1:Event):void{
                    routeEventToListener(_arg1, listener, eventClass);
                }
            } else
            {
                callback = listener;
            }
            eventConfig = new 1lk(dispatcher, eventString, listener, eventClass, callback, useCapture);
            currentListeners.push(eventConfig);
            if (!this.08x)
            {
                dispatcher.addEventListener(eventString, callback, useCapture, priority, useWeakReference);
            }
        }

        public function xc(_arg1:IEventDispatcher, _arg2:String, _arg3:Function, _arg4:Class=null, _arg5:Boolean=false):void{
            var _local6:1lk;
            _arg4 = ((_arg4) || (Event));
            var _local7:Vector.<1lk> = ((this.08x) ? this.01u : this.1L0);
            var _local8:int = _local7.length;
            while (_local8--)
            {
                _local6 = _local7[_local8];
                if ((((((((((_local6.dispatcher == _arg1)) && ((_local6.eventString == _arg2)))) && ((_local6.listener == _arg3)))) && ((_local6.useCapture == _arg5)))) && ((_local6.eventClass == _arg4))))
                {
                    if (!this.08x)
                    {
                        _arg1.removeEventListener(_arg2, _local6.callback, _arg5);
                    }
                    _local7.splice(_local8, 1);
                    return;
                }
            }
        }

        public function 1Gt():void{
            var _local2:1lk;
            var _local3:IEventDispatcher;
            var _local1:Vector.<1lk> = ((this.08x) ? this.01u : this.1L0);
            while ((_local2 = _local1.pop()))
            {
                if (!this.08x)
                {
                    _local3 = _local2.dispatcher;
                    _local3.removeEventListener(_local2.eventString, _local2.callback, _local2.useCapture);
                }
            }
        }

        public function suspend():void{
            var _local1:1lk;
            var _local2:IEventDispatcher;
            if (this.08x)
            {
                return;
            }
            this.08x = true;
            while ((_local1 = this.1L0.pop()))
            {
                _local2 = _local1.dispatcher;
                _local2.removeEventListener(_local1.eventString, _local1.callback, _local1.useCapture);
                this.01u.push(_local1);
            }
        }

        public function resume():void{
            var _local1:1lk;
            var _local2:IEventDispatcher;
            if (!this.08x)
            {
                return;
            }
            this.08x = false;
            while ((_local1 = this.01u.pop()))
            {
                _local2 = _local1.dispatcher;
                _local2.addEventListener(_local1.eventString, _local1.callback, _local1.useCapture);
                this.1L0.push(_local1);
            }
        }

        private function routeEventToListener(_arg1:Event, _arg2:Function, _arg3:Class):void{
            if ((_arg1 is _arg3))
            {
                (_arg2(_arg1));
            }
        }


    }
}//package cA

