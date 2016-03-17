// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.3V

package 1zG{
    import flash.utils.IDataInput;

    public class 3V extends 11g {

        public static const KH:int = 4;
        public static const 02C:int = 5;
        public static const 16o:int = 6;
        public static const 1ei:int = 7;

        public var errorId_:int;
        public var errorDescription_:String;

        public function 3V(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.errorId_ = _arg1.readInt();
            this.errorDescription_ = _arg1.readUTF();
        }

        override public function toString():String{
            return (formatToString("FAILURE", "errorId_", "errorDescription_"));
        }


    }
}//package 1zG

