// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//06I.0GS

package 06I{
    import flash.events.EventDispatcher;
    import __AS3__.vec.Vector;
    import flash.display.DisplayObjectContainer;
    import tB.LC;
    import __AS3__.vec.*;
    import tB.*;

    public class 0GS extends EventDispatcher implements AF {

        private const 0cS:Vector.<DisplayObjectContainer> = new Vector.<DisplayObjectContainer>();
        private const _handlers:Vector.<LC> = new Vector.<LC>();

        private var n3:Dc;

        public function 0GS(_arg1:Dc){
            this.n3 = _arg1;
        }

        public function get Vt():Vector.<DisplayObjectContainer>{
            return (this.0cS);
        }

        public function 1Nt(_arg1:DisplayObjectContainer):void{
            var _local2:LC;
            if (!this.Ed(_arg1))
            {
                return;
            };
            this.0cS.push(_arg1);
            for each (_local2 in this._handlers)
            {
                this.n3.1Nt(_arg1).25l(_local2);
            };
            dispatchEvent(new 1Be(1Be.1fg, _arg1));
        }

        public function 0gu(_arg1:DisplayObjectContainer):void{
            var _local4:LC;
            var _local2:int = this.0cS.indexOf(_arg1);
            if (_local2 == -1)
            {
                return;
            };
            this.0cS.splice(_local2, 1);
            var _local3:Ko = this.n3.E(_arg1);
            for each (_local4 in this._handlers)
            {
                _local3.1j0(_local4);
            };
            dispatchEvent(new 1Be(1Be.0PQ, _arg1));
        }

        public function 0-M(_arg1:LC):void{
            var _local2:DisplayObjectContainer;
            if (this._handlers.indexOf(_arg1) != -1)
            {
                return;
            };
            this._handlers.push(_arg1);
            for each (_local2 in this.0cS)
            {
                this.n3.1Nt(_local2).25l(_arg1);
            };
            dispatchEvent(new 1Be(1Be.0ob, null, _arg1));
        }

        public function I7(_arg1:LC):void{
            var _local3:DisplayObjectContainer;
            var _local2:int = this._handlers.indexOf(_arg1);
            if (_local2 == -1)
            {
                return;
            };
            this._handlers.splice(_local2, 1);
            for each (_local3 in this.0cS)
            {
                this.n3.E(_local3).1j0(_arg1);
            };
            dispatchEvent(new 1Be(1Be.1my, null, _arg1));
        }

        public function 1Kd():void{
            var _local1:DisplayObjectContainer;
            var _local2:Ko;
            var _local3:LC;
            for each (_local1 in this.0cS)
            {
                _local2 = this.n3.E(_local1);
                for each (_local3 in this._handlers)
                {
                    _local2.1j0(_local3);
                };
            };
        }

        private function Ed(_arg1:DisplayObjectContainer):Boolean{
            var _local2:DisplayObjectContainer;
            for each (_local2 in this.0cS)
            {
                if (_arg1 == _local2)
                {
                    return (false);
                };
                if (((_local2.contains(_arg1)) || (_arg1.contains(_local2))))
                {
                    throw (new Error("Containers can not be nested"));
                };
            };
            return (true);
        }


    }
}//package 06I

