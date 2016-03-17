// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.1ab

package AB{
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import 1n4.1cA;
    import 0qj.TR;

    public class 1ab extends 103 {


        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var _local3:XML;
            var _local4:XML;
            var _local5:int;
            var _local6:int;
            var _local7:uint;
            _local3 = this.v8(_arg1);
            _local4 = this.v8(_arg2);
            1Tf = new AppendingLineBuilder();
            if (((!((_local3 == null))) && (!((_local4 == null)))))
            {
                _local5 = int(_local3.@duration);
                _local6 = int(_local4.@duration);
                _local7 = 1kE((_local5 - _local6));
                1Tf.pushParams(du.1Rm, {stasis:new 1cA().setParams(du.1oV, {duration:_local5}).setPrefix(TR.1pw(_local7)).setPostfix(TR.17H())});
                ZX[_local3.toXMLString()] = true;
                this.05j(_arg1);
            };
        }

        private function v8(_arg1:XML):XML{
            var matches:XMLList;
            var orbXML:XML = _arg1;
            matches = orbXML.Activate.(text() == "StasisBlast");
            return ((((matches.length())==1) ? matches[0] : null));
        }

        private function 05j(_arg1:XML):void{
            var selfTags:XMLList;
            var speedy:XML;
            var damaging:XML;
            var itemXML:XML = _arg1;
            if (itemXML.@id == "Orb of Conflict")
            {
                selfTags = itemXML.Activate.(text() == "ConditionEffectSelf");
                speedy = selfTags.(@effect == "Speedy")[0];
                damaging = selfTags.(@effect == "Damaging")[0];
                1Tf.pushParams(du.1Dr, {effect:""});
                1Tf.pushParams(du.0P9, {
                    effect:du.0y4(du.sy),
                    duration:speedy.@duration
                }, TR.1pw(2-W), TR.17H());
                1Tf.pushParams(du.1Dr, {effect:""});
                1Tf.pushParams(du.0P9, {
                    effect:du.0y4(du.1ld),
                    duration:damaging.@duration
                }, TR.1pw(2-W), TR.17H());
                ZX[speedy.toXMLString()] = true;
                ZX[damaging.toXMLString()] = true;
            };
        }


    }
}//package AB

