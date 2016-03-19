// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.sK

package AB{
    import com.company.assembleegameclient.util.ConditionEffect;
    import AO.du;
    import 1n4.1cA;
    import 0qj.TR;
    import com.company.assembleegameclient.util.*;

    public class sK extends 103 {

        private var va:GeneralProjectileComparison;
        private var condition:XMLList;
        private var 1fX:XMLList;

        public function sK(){
            this.va = new GeneralProjectileComparison();
            super();
        }

        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var tagStr:String;
            var duration:Number;
            var conditionEffect:ConditionEffect;
            var itemXML:XML = _arg1;
            var curItemXML:XML = _arg2;
            this.condition = itemXML.Projectile.ConditionEffect.(((((text() == "Slowed")) || ((text() == "Paralyzed")))) || ((text() == "Dazed")));
            this.1fX = curItemXML.Projectile.ConditionEffect.(((((text() == "Slowed")) || ((text() == "Paralyzed")))) || ((text() == "Dazed")));
            this.va.0Ys(itemXML, curItemXML);
            1Tf = this.va.1Tf;
            for (tagStr in this.va.ZX)
            {
                ZX[tagStr] = true;
            }
            if ((((this.condition.length() == 1)) && ((this.1fX.length() == 1))))
            {
                duration = Number(this.condition[0].@duration);
                conditionEffect = ConditionEffect.5X(this.condition.text());
                1Tf.pushParams(du.0ZE, {effect:""});
                1Tf.pushParams(du.0P9, {
                    effect:new 1cA().setParams(conditionEffect.03v),
                    duration:duration
                }, TR.1pw(1U4), TR.17H());
                ZX[this.condition[0].toXMLString()] = true;
            }
        }


    }
}//package AB

