// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.R1

package AB{
    import 1n4.1cA;
    import AO.du;
    import 0qj.TR;

    public class R1 extends 103 {

        private var va:GeneralProjectileComparison;

        public function R1(){
            this.va = new GeneralProjectileComparison();
            super();
        }

        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var _local3:String;
            this.va.0Ys(_arg1, _arg2);
            1Tf = this.va.1Tf;
            for (_local3 in this.va.ZX)
            {
                ZX[_local3] = this.va.ZX[_local3];
            }
            this.Ku(_arg1);
        }

        private function Ku(_arg1:XML):void{
            var tag:XML;
            var innerLineBuilder:1cA;
            var itemXML:XML = _arg1;
            if (itemXML.@id == "Shield _of Ogmur")
            {
                tag = itemXML.ConditionEffect.(text() == "Armor Broken")[0];
                innerLineBuilder = new 1cA().setParams(du.0P9, {
                    effect:du.0y4(du.0rC),
                    duration:tag.@duration
                }).setPrefix(TR.1pw(2-W)).setPostfix(TR.17H());
                1Tf.pushParams(du.Nk, {effect:innerLineBuilder});
                ZX[tag.toXMLString()] = true;
            }
        }


    }
}//package AB

