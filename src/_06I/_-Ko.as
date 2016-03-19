// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//06I.Ko

package 06I{
    import flash.events.EventDispatcher;
    import __AS3__.vec.Vector;
    import tB.LC;
    import flash.display.DisplayObjectContainer;
    import flash.display.DisplayObject;
    import __AS3__.vec.*;

    public class Ko extends EventDispatcher {

        private const _handlers:Vector.<LC> = new Vector.<LC>();

        private var _parent:Ko;
        private var 0KQ:DisplayObjectContainer;

        public function Ko(_arg1:DisplayObjectContainer){
            this.0KQ = _arg1;
        }

        public function get parent():Ko{
            return (this._parent);
        }

        public function set parent(_arg1:Ko):void{
            this._parent = _arg1;
        }

        public function get container():DisplayObjectContainer{
            return (this.0KQ);
        }

        public function get 08h():uint{
            return (this._handlers.length);
        }

        public function 25l(_arg1:LC):void{
            if (this._handlers.indexOf(_arg1) > -1)
            {
                return;
            }
            this._handlers.push(_arg1);
        }

        public function 1j0(_arg1:LC):void{
            var _local2:int = this._handlers.indexOf(_arg1);
            if (_local2 > -1)
            {
                this._handlers.splice(_local2, 1);
                if (this._handlers.length == 0)
                {
                    dispatchEvent(new 9o(9o.22F));
                }
            }
        }

        public function 27D(_arg1:DisplayObject, _arg2:Class):void{
            var _local5:LC;
            var _local3:uint = this._handlers.length;
            var _local4:int;
            while (_local4 < _local3)
            {
                _local5 = (this._handlers[_local4] as LC);
                _local5.27D(_arg1, _arg2);
                _local4++;
            }
        }


    }
}//package 06I

