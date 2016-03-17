// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.PoisonComparison

package AB{
    import 1n4.1cA;
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import 0qj.TR;

    public class PoisonComparison extends 103 {


        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var activate:XMLList;
            var otherActivate:XMLList;
            var damage:int;
            var otherDamage:int;
            var radius:Number;
            var otherRadius:Number;
            var duration:Number;
            var otherDuration:Number;
            var avg:Number;
            var otherAvg:Number;
            var dataLineBuilder:1cA;
            var itemXML:XML = _arg1;
            var curItemXML:XML = _arg2;
            activate = itemXML.Activate.(text() == "PoisonGrenade");
            otherActivate = curItemXML.Activate.(text() == "PoisonGrenade");
            1Tf = new AppendingLineBuilder();
            if ((((activate.length() == 1)) && ((otherActivate.length() == 1))))
            {
                damage = int(activate[0].@totalDamage);
                otherDamage = int(otherActivate[0].@totalDamage);
                radius = Number(activate[0].@radius);
                otherRadius = Number(otherActivate[0].@radius);
                duration = Number(activate[0].@duration);
                otherDuration = Number(otherActivate[0].@duration);
                avg = (((0.33 * damage) + (0.33 * radius)) + (0.33 * duration));
                otherAvg = (((0.33 * otherDamage) + (0.33 * otherRadius)) + (0.33 * otherDuration));
                dataLineBuilder = new 1cA().setParams(du.1n7, {
                    damage:damage.toString(),
                    duration:duration.toString(),
                    radius:radius.toString()
                }).setPrefix(TR.1pw(1kE((avg - otherAvg)))).setPostfix(TR.17H());
                1Tf.pushParams(du.22a, {data:dataLineBuilder});
                ZX[activate[0].toXMLString()] = true;
            };
        }


    }
}//package AB

