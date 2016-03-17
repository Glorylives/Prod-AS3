// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.ZV

package AB{
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import 0qj.TR;
    import 0Px.*;

    public class ZV extends 103 {


        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var _local3:XML;
            var _local4:XML;
            var _local5:Number;
            var _local6:Number;
            _local3 = this.0LI(_arg1);
            _local4 = this.0LI(_arg2);
            1Tf = new AppendingLineBuilder();
            if (((!((_local3 == null))) && (!((_local4 == null)))))
            {
                _local5 = Number(_local3.@duration);
                _local6 = Number(_local4.@duration);
                this.HA(_local5, _local6);
                ZX[_local3.toXMLString()] = true;
            };
            this.05j(_arg1);
        }

        private function 05j(_arg1:XML):void{
            var teleportTag:XML;
            var itemXML:XML = _arg1;
            if (itemXML.@id == "Cloak _of the Planewalker")
            {
                1Tf.pushParams(du.1l7, {}, TR.1pw(2-W), TR.17H());
                teleportTag = XML(itemXML.Activate.(text() == 0MX.TELEPORT))[0];
                ZX[teleportTag.toXMLString()] = true;
            };
        }

        private function 0LI(_arg1:XML):XML{
            var matches:XMLList;
            var conditionTag:XML;
            var xml:XML = _arg1;
            matches = xml.Activate.(text() == 0MX.1YG);
            for each (conditionTag in matches)
            {
                if (conditionTag.(@effect == "Invisible"))
                {
                    return (conditionTag);
                };
            };
            return (null);
        }

        private function HA(_arg1:Number, _arg2:Number):void{
            var _local3:uint = 1kE((_arg1 - _arg2));
            1Tf.pushParams(du.1Dr, {effect:""});
            1Tf.pushParams(du.0P9, {
                effect:du.0y4(du.1Sd),
                duration:_arg1.toString()
            }, TR.1pw(_local3), TR.17H());
        }


    }
}//package AB

