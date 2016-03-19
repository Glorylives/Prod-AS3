// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1uF.1Mf

package _1uF{
import _16._2f;

import _rz._03V;
    import flash.events.IEventDispatcher;
    import flash.events.Event;
    import rz.*;

    public class _1Mf implements _03V {

        [Inject]
        public var _0Ah:_2f;
        [Inject]
        public var _0af:IEventDispatcher;
        private var SW:Object;


        public function set viewComponent(_arg1:Object):void{
            this.SW = _arg1;
        }

        public function initialize():void{
        }

        public function destroy():void{
            this._0Ah._1Gt();
        }

        protected function JR(_arg1:String, _arg2:Function, _arg3:Class=null):void{
            this._0Ah._2V(IEventDispatcher(this.SW), _arg1, _arg2, _arg3);
        }

        protected function _1ju(_arg1:String, _arg2:Function, _arg3:Class=null):void{
            this._0Ah._2V(this._0af, _arg1, _arg2, _arg3);
        }

        protected function _0S6(_arg1:String, _arg2:Function, _arg3:Class=null):void{
            this._0Ah.xc(IEventDispatcher(this.SW), _arg1, _arg2, _arg3);
        }

import flash.events.Event;

protected function _22b(_arg1:String, _arg2:Function, _arg3:Class=null):void{
            this._0Ah.xc(this._0af, _arg1, _arg2, _arg3);
        }

        protected function dispatch(_arg1:Event):void{
            if (this._0af.hasEventListener(_arg1.type))
            {
                this._0af.dispatchEvent(_arg1);
            }
        }


    }
}//package 1uF

