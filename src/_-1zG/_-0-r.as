// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.0-r

package 1zG{
    import flash.utils.IDataInput;

    public class 0-r extends 11g {

        public var 08Q:int;
        public var 1Fw:int;
        public var 1uS:int;

        public function 0-r(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.08Q = _arg1.readInt();
            this.1Fw = _arg1.readInt();
            this.1uS = _arg1.readInt();
        }


    }
}//package 1zG

