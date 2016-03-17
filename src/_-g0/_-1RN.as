// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//g0.1RN

package g0{
    import flash.utils.IDataInput;

    public class 1RN {

        public var item_:int;
        public var 0P0:int;
        public var 1sy:Boolean;
        public var included_:Boolean;


        public function parseFromInput(_arg1:IDataInput):void{
            this.item_ = _arg1.readInt();
            this.0P0 = _arg1.readInt();
            this.1sy = _arg1.readBoolean();
            this.included_ = _arg1.readBoolean();
        }

        public function toString():String{
            return (((((((("item: " + this.item_) + " slotType: ") + this.0P0) + " tradeable: ") + this.1sy) + " included:") + this.included_));
        }


    }
}//package g0

