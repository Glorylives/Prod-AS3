// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.ts

package AB{
    import 1n4.AppendingLineBuilder;

    public class ts extends 103 {

        private static const HB:String = "21";

        private var 0rt:XMLList;
        private var dK:XMLList;

        public function ts(){
            1Tf = new AppendingLineBuilder();
        }

        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var defense:int;
            var otherDefense:int;
            var itemXML:XML = _arg1;
            var curItemXML:XML = _arg2;
            this.0rt = itemXML.ActivateOnEquip.(@stat == HB);
            this.dK = curItemXML.ActivateOnEquip.(@stat == HB);
            if ((((this.0rt.length() == 1)) && ((this.dK.length() == 1))))
            {
                defense = int(this.0rt.@amount);
                otherDefense = int(this.dK.@amount);
            };
        }

        private function 1Hr(_arg1:int, _arg2:int):String{
            var _local3:uint = 1kE((_arg1 - _arg2));
            return (00I((("+" + _arg1) + " Defense"), _local3));
        }


    }
}//package AB

