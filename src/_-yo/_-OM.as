// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.OM

package yo{
    import flash.utils.ByteArray;
    import flash.utils.IDataOutput;

    public class OM extends 0j1 {

        public var buildVersion_:String;
        public var gameId_:int = 0;
        public var guid_:String;
        public var password_:String;
        public var secret_:String;
        public var keyTime_:int = 0;
        public var key_:ByteArray;
        public var cq:String;
        public var 16v:String = "";
        public var 1RQ:String = "";
        public var 0DA:String = "";
        public var 229:String = "";
        public var 1cH:String = "";

        public function OM(_arg1:uint, _arg2:Function){
            this.buildVersion_ = new String();
            this.guid_ = new String();
            this.password_ = new String();
            this.secret_ = new String();
            this.key_ = new ByteArray();
            this.cq = new String();
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeUTF(this.buildVersion_);
            _arg1.writeInt(this.gameId_);
            _arg1.writeUTF(this.guid_);
            _arg1.writeInt(int(Math.floor((Math.random() * 0x3B9ACA00))));
            _arg1.writeUTF(this.password_);
            _arg1.writeInt(int(Math.floor((Math.random() * 0x3B9ACA00))));
            _arg1.writeUTF(this.secret_);
            _arg1.writeInt(this.keyTime_);
            _arg1.writeShort(this.key_.length);
            _arg1.writeBytes(this.key_);
            _arg1.writeInt(this.cq.length);
            _arg1.writeUTFBytes(this.cq);
            _arg1.writeUTF(this.16v);
            _arg1.writeUTF(this.1RQ);
            _arg1.writeUTF(this.0DA);
            _arg1.writeUTF(this.229);
            _arg1.writeUTF(this.1cH);
        }

        override public function toString():String{
            return (formatToString("HELLO", "buildVersion_", "gameId_", "guid_", "password_", "secret_"));
        }


    }
}//package yo

