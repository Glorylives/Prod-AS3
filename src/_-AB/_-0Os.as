// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.0Os

package AB{
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import 0qj.TR;

    public class 0Os extends 103 {

        private var 0eH:XML;
        private var 0ij:XML;
        private var 1ht:XML;
        private var Im:XML;


        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var tag:XML;
            var itemXML:XML = _arg1;
            var curItemXML:XML = _arg2;
            1Tf = new AppendingLineBuilder();
            this.0eH = this.rE(itemXML, "Healing");
            this.0ij = this.rE(itemXML, "Damaging");
            this.1ht = this.rE(curItemXML, "Healing");
            this.Im = this.rE(curItemXML, "Damaging");
            if (this.ai())
            {
                this.8a();
                this.Ap();
                if (itemXML.@id == "Seal _of Blasphemous Prayer")
                {
                    tag = itemXML.Activate.(text() == "ConditionEffectSelf")[0];
                    1Tf.pushParams(du.1Dr, {effect:""});
                    1Tf.pushParams(du.0P9, {
                        effect:du.0y4(du.NK),
                        duration:tag.@duration
                    }, TR.1pw(2-W), TR.17H());
                    ZX[tag.toXMLString()] = true;
                };
            };
        }

        private function ai():Boolean{
            return (((((((!((this.0eH == null))) && (!((this.0ij == null))))) && (!((this.1ht == null))))) && (!((this.Im == null)))));
        }

        private function rE(_arg1:XML, _arg2:String):XML{
            var matches:XMLList;
            var tag:XML;
            var xml:XML = _arg1;
            var effectName:String = _arg2;
            matches = xml.Activate.(text() == "ConditionEffectAura");
            for each (tag in matches)
            {
                if (tag.@effect == effectName)
                {
                    return (tag);
                };
            };
            return (null);
        }

        private function 8a():void{
            var _local1:int = int(this.0eH.@duration);
            var _local2:int = int(this.1ht.@duration);
            var _local3:Number = Number(this.0eH.@range);
            var _local4:Number = Number(this.1ht.@range);
            var _local5:Number = (((0.5 * _local1) * 0.5) * _local3);
            var _local6:Number = (((0.5 * _local2) * 0.5) * _local4);
            var _local7:uint = 1kE((_local5 - _local6));
            var _local8:AppendingLineBuilder = new AppendingLineBuilder();
            _local8.pushParams(du.l, {range:this.0eH.@range}, TR.1pw(_local7), TR.17H());
            _local8.pushParams(du.0P9, {
                effect:du.0y4(du.1Ga),
                duration:_local1.toString()
            }, TR.1pw(_local7), TR.17H());
            1Tf.pushParams(du.Nk, {effect:_local8});
            ZX[this.0eH.toXMLString()] = true;
        }

        private function Ap():void{
            var _local1:int = int(this.0ij.@duration);
            var _local2:int = int(this.Im.@duration);
            var _local3:Number = Number(this.0ij.@range);
            var _local4:Number = Number(this.Im.@range);
            var _local5:Number = (((0.5 * _local1) * 0.5) * _local3);
            var _local6:Number = (((0.5 * _local2) * 0.5) * _local4);
            var _local7:uint = 1kE((_local5 - _local6));
            var _local8:AppendingLineBuilder = new AppendingLineBuilder();
            _local8.pushParams(du.l, {range:this.0ij.@range}, TR.1pw(_local7), TR.17H());
            _local8.pushParams(du.0P9, {
                effect:du.0y4(du.1ld),
                duration:_local1.toString()
            }, TR.1pw(_local7), TR.17H());
            1Tf.pushParams(du.Nk, {effect:_local8});
            ZX[this.0ij.toXMLString()] = true;
        }


    }
}//package AB

