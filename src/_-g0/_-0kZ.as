// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//g0.0kZ

package g0{
    import flash.utils.IDataInput;

    public class 0kZ {

        public var objectType_:int;
        public var 13L:ge;

        public function 0kZ(){
            this.13L = new ge();
            super();
        }

        public function parseFromInput(_arg1:IDataInput):void{
            this.objectType_ = _arg1.readShort();
            this.13L.parseFromInput(_arg1);
        }

        public function toString():String{
            return (((("objectType_: " + this.objectType_) + " status_: ") + this.13L));
        }


    }
}//package g0

