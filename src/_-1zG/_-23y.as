// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.23y

package 1zG{
    import g0.1tk;
    import flash.utils.IDataInput;

    public class 23y extends 11g {

        public var objectId_:int;
        public var pos_:1tk;

        public function 23y(_arg1:uint, _arg2:Function){
            this.pos_ = new 1tk();
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.objectId_ = _arg1.readInt();
            this.pos_.parseFromInput(_arg1);
        }

        override public function toString():String{
            return (formatToString("GOTO", "objectId_", "pos_"));
        }


    }
}//package 1zG

