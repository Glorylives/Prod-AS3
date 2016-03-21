// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//gh._Dq

package _gh{
    import flash.utils.ByteArray;

    public class _Dq {

        public var line:uint;
        public var text:String;
        public var ch:String;
        public var priority:int;
        public var repeat:Boolean;
        public var html:Boolean;
        public var time:uint;
        public var _1ET:String;
        public var _8w:String;
        public var _04z:String;
        public var next:_Dq;
        public var gR:_Dq;

        public function _Dq(_arg1:String, _arg2:String, _arg3:int, _arg4:Boolean=false, _arg5:Boolean=false){
            this.text = _arg1;
            this.ch = _arg2;
            this.priority = _arg3;
            this.repeat = _arg4;
            this.html = _arg5;
        }

        public static function jk(_arg1:ByteArray):_Dq{
            var _local2:String = _arg1.readUTFBytes(_arg1.readUnsignedInt());
            var _local3:String = _arg1.readUTF();
            var _local4:int = _arg1.readInt();
            var _local5:Boolean = _arg1.readBoolean();
            return (new _Dq(_local2, _local3, _local4, _local5, true));
        }


        public function _0ZY(_arg1:ByteArray):void{
            var _local2:ByteArray = new ByteArray();
            _local2.writeUTFBytes(this.text);
            _arg1.writeUnsignedInt(_local2.length);
            _arg1.writeBytes(_local2);
            _arg1.writeUTF(this.ch);
            _arg1.writeInt(this.priority);
            _arg1.writeBoolean(this.repeat);
        }

        public function plainText():String{
            return (this.text.replace(/<.*?>/g, "").replace(/&lt;/g, "<").replace(/&gt;/g, ">"));
        }

        public function toString():String{
            return (((("[" + this.ch) + "] ") + this.plainText()));
        }

        public function clone():_Dq{
            var _local1:_Dq = new _Dq(this.text, this.ch, this.priority, this.repeat, this.html);
            _local1.line = this.line;
            _local1.time = this.time;
            return (_local1);
        }


    }
}//package gh

