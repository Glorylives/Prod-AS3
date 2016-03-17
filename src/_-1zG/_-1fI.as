// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1fI

package 1zG{
    import flash.utils.IDataInput;

    public class 1fI extends 11g {

        public var ok:Boolean;
        public var message:String;

        public function 1fI(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.ok = _arg1.readBoolean();
            this.message = _arg1.readUTF();
        }

        override public function toString():String{
            return (formatToString("QUESTREDEEMRESPONSE", "ok", "message"));
        }


    }
}//package 1zG

