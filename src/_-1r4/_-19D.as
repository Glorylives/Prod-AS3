// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1r4.19D

package 1r4{
    import yo.0j1;
    import g0._Tz;
    import flash.utils.IDataOutput;

    public class 19D extends 0j1 {

        public var petInstanceId:int;
        public var pickedNewPetType:int;
        public var item:_Tz;

        public function 19D(_arg1:uint, _arg2:Function){
            this.item = new _Tz();
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.petInstanceId);
            _arg1.writeInt(this.pickedNewPetType);
            this.item.writeToOutput(_arg1);
        }

        override public function toString():String{
            return (formatToString("ENTER_ARENA", "petInstanceId", "pickedNewPetType"));
        }


    }
}//package 1r4

