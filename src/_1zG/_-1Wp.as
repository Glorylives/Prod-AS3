// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1Wp

package 1zG{
    import flash.utils.IDataInput;

    public class 1Wp extends 11g {

        public var name_:String;
        public var guildName_:String;

        public function 1Wp(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.name_ = _arg1.readUTF();
            this.guildName_ = _arg1.readUTF();
        }

        override public function toString():String{
            return (formatToString("INVITEDTOGUILD", "name_", "guildName_"));
        }


    }
}//package 1zG

