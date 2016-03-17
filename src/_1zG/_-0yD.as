// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.0yD

package 1zG{
    import flash.utils.IDataInput;

    public class 0yD extends 11g {

        public static const in:int = 0;
        public static const 1Na:int = 1;

        public var code_:int;
        public var description_:String;

        public function 0yD(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.code_ = _arg1.readInt();
            this.description_ = _arg1.readUTF();
        }

        override public function toString():String{
            return (formatToString("TRADEDONE", "code_", "description_"));
        }


    }
}//package 1zG

