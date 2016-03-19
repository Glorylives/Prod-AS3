// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.1NR

package AB{
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import 1n4.1cA;
    import 0qj.TR;
    import 0Px.*;

    public class 1NR extends 103 {


        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var _local3:XML;
            var _local4:XML;
            var _local5:Number;
            var _local6:Number;
            var _local7:int;
            var _local8:int;
            var _local9:Number;
            var _local10:Number;
            _local3 = this.1EQ(_arg1);
            _local4 = this.1EQ(_arg2);
            1Tf = new AppendingLineBuilder();
            if (((!((_local3 == null))) && (!((_local4 == null)))))
            {
                _local5 = Number(_local3.@radius);
                _local6 = Number(_local4.@radius);
                _local7 = int(_local3.@totalDamage);
                _local8 = int(_local4.@totalDamage);
                _local9 = ((0.5 * _local5) + (0.5 * _local7));
                _local10 = ((0.5 * _local6) + (0.5 * _local8));
                1Tf.pushParams(du.wB, {effect:new 1cA().setParams(du.1ge, {
                        amount:_local7,
                        range:_local5
                    }).setPrefix(TR.1pw(1kE((_local9 - _local10)))).setPostfix(TR.17H())});
                ZX[_local3.toXMLString()] = true;
            }
        }

        private function 1EQ(_arg1:XML):XML{
            var matches:XMLList;
            var xml:XML = _arg1;
            matches = xml.Activate.(text() == 0MX.0W1);
            return ((((matches.length())>=1) ? matches[0] : null));
        }


    }
}//package AB

