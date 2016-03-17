// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1Qn

package 1zG{
    import flash.utils.IDataInput;

    public class 1Qn extends 11g {

        public static const 0Od:int = -1;
        public static const 0Oa:int = 0;
        public static const 223:int = 1;
        public static const 1nm:int = 2;
        public static const 1qI:int = 3;
        public static const 0gt:int = 4;
        public static const 1fE:int = 5;
        public static const iP:int = 6;
        public static const 23b:int = 7;

        public var result_:int;
        public var resultString_:String;

        public function 1Qn(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.result_ = _arg1.readInt();
            this.resultString_ = _arg1.readUTF();
        }

        override public function toString():String{
            return (formatToString("BUYRESULT", "result_", "resultString_"));
        }


    }
}//package 1zG

