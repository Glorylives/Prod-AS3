// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.1QB

package AB{
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import 1n4.1cA;
    import 0qj.TR;

    public class 1QB extends 103 {


        private function 154(_arg1:XML):XML{
            var matches:XMLList;
            var xml:XML = _arg1;
            matches = xml.Activate.(text() == "Trap");
            if (matches.length() >= 1)
            {
                return (matches[0]);
            };
            return (null);
        }

        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var trap:XML;
            var otherTrap:XML;
            var tag:XML;
            var radius:Number;
            var otherRadius:Number;
            var damage:int;
            var otherDamage:int;
            var duration:int;
            var otherDuration:int;
            var avg:Number;
            var otherAvg:Number;
            var textColor:uint;
            var itemXML:XML = _arg1;
            var curItemXML:XML = _arg2;
            trap = this.154(itemXML);
            otherTrap = this.154(curItemXML);
            1Tf = new AppendingLineBuilder();
            if (((!((trap == null))) && (!((otherTrap == null)))))
            {
                if (itemXML.@id == "Coral Venom Trap")
                {
                    tag = itemXML.Activate.(text() == "Trap")[0];
                    1Tf.pushParams(du.0ny, {data:new 1cA().setParams(du.1ge, {
                            amount:tag.@totalDamage,
                            range:tag.@radius
                        }).setPrefix(TR.1pw(2-W)).setPostfix(TR.17H())});
                    1Tf.pushParams(du.0P9, {
                        effect:new 1cA().setParams(du.0BF),
                        duration:tag.@condDuration
                    }, TR.1pw(2-W), TR.17H());
                    ZX[tag.toXMLString()] = true;
                } else
                {
                    radius = Number(trap.@radius);
                    otherRadius = Number(otherTrap.@radius);
                    damage = int(trap.@totalDamage);
                    otherDamage = int(otherTrap.@totalDamage);
                    duration = int(trap.@condDuration);
                    otherDuration = int(otherTrap.@condDuration);
                    avg = (((0.33 * radius) + (0.33 * damage)) + (0.33 * duration));
                    otherAvg = (((0.33 * otherRadius) + (0.33 * otherDamage)) + (0.33 * otherDuration));
                    textColor = 1kE((avg - otherAvg));
                    1Tf.pushParams(du.0ny, {data:new 1cA().setParams(du.1ge, {
                            amount:trap.@totalDamage,
                            range:trap.@radius
                        }).setPrefix(TR.1pw(textColor)).setPostfix(TR.17H())});
                    1Tf.pushParams(du.0P9, {
                        effect:new 1cA().setParams(du.0sH),
                        duration:trap.@condDuration
                    }, TR.1pw(textColor), TR.17H());
                    ZX[trap.toXMLString()] = true;
                };
            };
        }


    }
}//package AB

