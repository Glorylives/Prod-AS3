// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.19t

package 1zG{
    import flash.utils.IDataInput;

    public class 19t extends 11g {

        public var objectId_:int;
        public var message:String;
        public var color_:int;

        public function 19t(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.objectId_ = _arg1.readInt();
            this.message = _arg1.readUTF();
            this.color_ = _arg1.readInt();
        }

        override public function toString():String{
            return (formatToString("NOTIFICATION", "objectId_", "message", "color_"));
        }


    }
}//package 1zG

