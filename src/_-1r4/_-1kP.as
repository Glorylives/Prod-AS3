// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1r4.1kP

package 1r4{
    import yo.0j1;
    import g0._Tz;
    import flash.utils.IDataOutput;

    public class 1kP extends 0j1 {

        public static const 1--:int = 0;
        public static const 0Z8:int = 1;

        public var 25d:int;
        public var 0Hb:int;
        public var f:int;
        public var objectId:int;
        public var 0qR:_Tz;
        public var 0m1:int;

        public function 1kP(_arg1:uint, _arg2:Function){
            this.0qR = new _Tz();
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeByte(this.25d);
            _arg1.writeInt(this.0Hb);
            _arg1.writeInt(this.f);
            _arg1.writeInt(this.objectId);
            this.0qR.writeToOutput(_arg1);
            _arg1.writeByte(this.0m1);
        }


    }
}//package 1r4

