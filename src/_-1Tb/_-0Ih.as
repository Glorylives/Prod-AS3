// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Tb.0Ih

package 1Tb{
    import gh.Dq;
    import EM.Console;
    import flash.events.Event;
    import flash.utils.ByteArray;

    public class 0Ih extends ak {

        private var 0ot:Object;
        private var Y:uint;
        private var 0r4:Dq;
        private var Ij:Dq;
        private var 6e:Boolean;
        private var _timer:uint;
        public var first:Dq;
        public var last:Dq;
        private var 1v1:uint;
        private var _lines:uint;

        public function 0Ih(_arg1:Console){
            var console:Console = _arg1;
            super(console);
            this.0ot = new Object();
            remoter.addEventListener(Event.CONNECT, this.AP);
            remoter.registerCallback("log", function (_arg1:ByteArray):void{
                registerLog(Dq.jk(_arg1));
            });
        }

        private function AP(_arg1:Event):void{
            var _local2:Dq = this.first;
            while (_local2)
            {
                this.0ou(_local2);
                _local2 = _local2.next;
            }
        }

        private function 0ou(_arg1:Dq):void{
            var _local2:ByteArray;
            if (remoter.canSend)
            {
                _local2 = new ByteArray();
                _arg1.0ZY(_local2);
                remoter.send("log", _local2);
            }
        }

        public function update(_arg1:uint):Boolean{
            this._timer = _arg1;
            if (this.Y > 0)
            {
                this.Y--;
            }
            if (this.Ij)
            {
                if (this.0r4)
                {
                    this.remove(this.0r4);
                }
                this.0r4 = this.Ij;
                this.Ij = null;
                this.push(this.0r4);
            }
            var _local2:Boolean = this.6e;
            this.6e = false;
            return (_local2);
        }

        public function add(_arg1:Dq):void{
            this._lines++;
            _arg1.line = this._lines;
            _arg1.time = this._timer;
            this.registerLog(_arg1);
        }

        private function registerLog(_arg1:Dq):void{
            this.6e = true;
            this.addChannel(_arg1.ch);
            _arg1.8w = (_arg1.line + " ");
            _arg1.04z = (((('[<a href="event:channel_' + _arg1.ch) + '">') + _arg1.ch) + "</a>] ");
            _arg1.1ET = (config.timeStampFormatter(_arg1.time) + " ");
            this.0ou(_arg1);
            if (_arg1.repeat)
            {
                if ((((this.Y > 0)) && (this.0r4)))
                {
                    _arg1.line = this.0r4.line;
                    this.Ij = _arg1;
                    return;
                }
                this.Y = config.maxRepeats;
                this.0r4 = _arg1;
            }
            this.push(_arg1);
            while ((((this.1v1 > config.maxLines)) && ((config.maxLines > 0))))
            {
                this.remove(this.first);
            }
            if (((config.tracing) && (!((config.traceCall == null)))))
            {
                config.traceCall(_arg1.ch, _arg1.plainText(), _arg1.priority);
            }
        }

        public function clear(_arg1:String=null):void{
            var _local2:Dq;
            if (_arg1)
            {
                _local2 = this.first;
                while (_local2)
                {
                    if (_local2.ch == _arg1)
                    {
                        this.remove(_local2);
                    }
                    _local2 = _local2.next;
                }
                delete this.0ot[_arg1];
            } else
            {
                this.first = null;
                this.last = null;
                this.1v1 = 0;
                this.0ot = new Object();
            }
        }

        public function getLogsAsString(_arg1:String, _arg2:Boolean=true, _arg3:Function=null):String{
            var _local4 = "";
            var _local5:Dq = this.first;
            while (_local5)
            {
                if ((((_arg3 == null)) || (_arg3(_local5))))
                {
                    if (this.first != _local5)
                    {
                        _local4 = (_local4 + _arg1);
                    }
                    _local4 = (_local4 + ((_arg2) ? _local5.toString() : _local5.plainText()));
                }
                _local5 = _local5.next;
            }
            return (_local4);
        }

        public function getChannels():Array{
            var _local3:String;
            var _local1:Array = new Array(Console.TI);
            this.1Ny(Console.ss, _local1);
            this.1Ny(Console.Dk, _local1);
            this.1Ny(1-T.1lI, _local1);
            this.1Ny(Console.24a, _local1);
            var _local2:Array = new Array();
            for (_local3 in this.0ot)
            {
                if (_local1.indexOf(_local3) < 0)
                {
                    _local2.push(_local3);
                }
            }
            return (_local1.concat(_local2.sort(Array.CASEINSENSITIVE)));
        }

        private function 1Ny(_arg1:String, _arg2:Array):void{
            if (this.0ot.hasOwnProperty(_arg1))
            {
                _arg2.push(_arg1);
            }
        }

        public function X3():void{
            this.0ot = new Object();
            var _local1:Dq = this.first;
            while (_local1)
            {
                this.addChannel(_local1.ch);
                _local1 = _local1.next;
            }
        }

        public function addChannel(_arg1:String):void{
            this.0ot[_arg1] = null;
        }

        private function push(_arg1:Dq):void{
            if (this.last == null)
            {
                this.first = _arg1;
            } else
            {
                this.last.next = _arg1;
                _arg1.gR = this.last;
            }
            this.last = _arg1;
            this.1v1++;
        }

        private function remove(_arg1:Dq):void{
            if (this.first == _arg1)
            {
                this.first = _arg1.next;
            }
            if (this.last == _arg1)
            {
                this.last = _arg1.gR;
            }
            if (_arg1 == this.0r4)
            {
                this.0r4 = null;
            }
            if (_arg1 == this.Ij)
            {
                this.Ij = null;
            }
            if (_arg1.next != null)
            {
                _arg1.next.gR = _arg1.gR;
            }
            if (_arg1.gR != null)
            {
                _arg1.gR.next = _arg1.next;
            }
            this.1v1--;
        }


    }
}//package 1Tb

