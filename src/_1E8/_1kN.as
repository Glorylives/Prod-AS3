// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1E8.1kN

package _1E8{
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;

    public class _1kN {

        public var pool:_9P;
        public var gR:_1kN;
        public var next:_1kN;
        private var _227:Boolean;
        public var id:uint;
        public var callback:Function;

        public function _1kN(_arg1:uint, _arg2:Function=null){
            this.id = _arg1;
            this._227 = !((_arg2 == null));
            this.callback = _arg2;
        }

        public function parseFromInput(_arg1:IDataInput):void{
        }

        public function writeToOutput(_arg1:IDataOutput):void{
        }

        public function toString():String{
            return (this.formatToString("MESSAGE", "id"));
        }

        protected function formatToString(_arg1:String, ... _args):String{
            var _local3:String = ("[" + _arg1);
            var _local4:int;
            while (_local4 < _args.length)
            {
                _local3 = (_local3 + ((((" " + _args[_local4]) + '="') + this[_args[_local4]]) + '"'));
                _local4++;
            }
            _local3 = (_local3 + "]");
            return (_local3);
        }

        public function consume():void{
            ((this._227) && (this.callback(this)));
            this.gR = null;
            this.next = null;
            this.pool.append(this);
        }


    }
}//package 1E8

