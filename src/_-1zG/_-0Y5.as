// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.0Y5

package 1zG{
    import flash.utils.IDataInput;

    public class 0Y5 extends 11g {

        public var result_:int;

        public function 0Y5(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.result_ = _arg1.readInt();
        }

        override public function toString():String{
            return (formatToString("INVRESULT", "result_"));
        }


    }
}//package 1zG

