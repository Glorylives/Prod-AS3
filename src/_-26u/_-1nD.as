// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//26u.1nD

package 26u{
    import 1zG.11g;
    import flash.utils.IDataInput;

    public class 1nD extends 11g {

        public var 08Q:int;

        public function 1nD(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.08Q = _arg1.readInt();
        }


    }
}//package 26u

