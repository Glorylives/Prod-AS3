// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.iF

package AB{
    import 1n4.1cA;
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import 0qj.TR;
    import 0Px.*;

    public class iF extends 103 {


        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var result:XMLList;
            var otherResult:XMLList;
            var damage:int;
            var otherDamage:int;
            var textColor:uint;
            var targets:int;
            var otherTargets:int;
            var innerLineBuilder:1cA;
            var condition:String;
            var duration:Number;
            var compositeStr:String;
            var htmlStr:String;
            var itemXML:XML = _arg1;
            var curItemXML:XML = _arg2;
            result = itemXML.Activate.(text() == 0MX.07W);
            otherResult = curItemXML.Activate.(text() == 0MX.07W);
            1Tf = new AppendingLineBuilder();
            if ((((result.length() == 1)) && ((otherResult.length() == 1))))
            {
                damage = int(result[0].@totalDamage);
                otherDamage = int(otherResult[0].@totalDamage);
                textColor = 1kE((damage - otherDamage));
                targets = int(result[0].@maxTargets);
                otherTargets = int(otherResult[0].@maxTargets);
                innerLineBuilder = new 1cA().setParams(du.1bC, {
                    damage:damage.toString(),
                    targets:targets.toString()
                }).setPrefix(TR.1pw(1kE((damage - otherDamage)))).setPostfix(TR.17H());
                1Tf.pushParams(du.07W, {data:innerLineBuilder});
                ZX[result[0].toXMLString()] = true;
            }
            if (String(itemXML.Activate.@condEffect))
            {
                condition = itemXML.Activate.@condEffect;
                duration = itemXML.Activate.@condDuration;
                compositeStr = ((((" " + condition) + " for ") + duration) + " secs\n");
                htmlStr = ("Shot Effect:\n" + 00I(compositeStr, 1U4));
                1Tf.pushParams(du.0ZE, {effect:""});
                1Tf.pushParams(du.0P9, {
                    effect:condition,
                    duration:duration.toString()
                }, TR.1pw(1U4), TR.17H());
            }
        }


    }
}//package AB

