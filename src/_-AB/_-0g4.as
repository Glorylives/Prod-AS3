// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.0g4

package AB{
    import 1n4.1cA;
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import 0qj.TR;

    public class 0g4 extends 103 {


        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var nova:XMLList;
            var otherNova:XMLList;
            var tag:XML;
            var range:Number;
            var otherRange:Number;
            var amount:Number;
            var otherAmount:Number;
            var wavg:Number;
            var otherWavg:Number;
            var innerStringBuilder:1cA;
            var itemXML:XML = _arg1;
            var curItemXML:XML = _arg2;
            nova = itemXML.Activate.(text() == "HealNova");
            otherNova = curItemXML.Activate.(text() == "HealNova");
            1Tf = new AppendingLineBuilder();
            if ((((nova.length() == 1)) && ((otherNova.length() == 1))))
            {
                range = Number(nova.@range);
                otherRange = Number(otherNova.@range);
                amount = Number(nova.@amount);
                otherAmount = Number(otherNova.@amount);
                wavg = ((0.5 * range) + (0.5 * amount));
                otherWavg = ((0.5 * otherRange) + (0.5 * otherAmount));
                innerStringBuilder = new 1cA().setParams(du.1ge, {
                    amount:amount.toString(),
                    range:range.toString()
                }).setPrefix(TR.1pw(1kE((wavg - otherWavg)))).setPostfix(TR.17H());
                1Tf.pushParams(du.0HX, {effect:innerStringBuilder});
                ZX[nova.toXMLString()] = true;
            }
            if (itemXML.@id == "Tome _of Purification")
            {
                tag = itemXML.Activate.(text() == "RemoveNegativeConditions")[0];
                1Tf.pushParams(du.OC, {}, TR.1pw(2-W), TR.17H());
                ZX[tag.toXMLString()] = true;
            } else
            {
                if (itemXML.@id == "Tome _of Holy Protection")
                {
                    tag = itemXML.Activate.(text() == "ConditionEffectSelf")[0];
                    1Tf.pushParams(du.1Dr, {effect:""});
                    1Tf.pushParams(du.0P9, {
                        effect:du.0y4(du.0-J),
                        duration:tag.@duration
                    }, TR.1pw(2-W), TR.17H());
                    ZX[tag.toXMLString()] = true;
                }
            }
        }


    }
}//package AB

