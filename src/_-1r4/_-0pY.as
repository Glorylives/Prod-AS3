// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1r4.0pY

package 1r4{
    import 1zG.11g;
    import flash.utils.IDataInput;

    public class 0pY extends 11g {

        public var 08K:int;

        public function 0pY(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.08K = _arg1.readInt();
        }


    }
}//package 1r4

