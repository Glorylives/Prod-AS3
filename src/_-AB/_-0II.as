// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.0II

package AB{
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import 1n4.1Jo;

    public class 0II extends 103 {

        private var itemXML:XML;
        private var curItemXML:XML;
        private var 1hr:XML;
        private var return:XML;

        public function 0II(){
            1Tf = new AppendingLineBuilder();
        }

        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            this.itemXML = _arg1;
            this.curItemXML = _arg2;
            this.1hr = _arg1.Projectile[0];
            this.return = _arg2.Projectile[0];
            this.1j4();
            this.0PE();
            ZX[this.1hr.toXMLString()] = true;
        }

        private function 1j4():1Jo{
            var _local1:int = int(this.1hr.MinDamage);
            var _local2:int = int(this.1hr.MaxDamage);
            var _local3:int = int(this.return.MinDamage);
            var _local4:int = int(this.return.MaxDamage);
            var _local5:Number = ((_local1 + _local2) / 2);
            var _local6:Number = ((_local3 + _local4) / 2);
            var _local7:uint = 1kE((_local5 - _local6));
            var _local8:String = (((_local1)==_local2) ? _local2.toString() : ((_local1 + " - ") + _local2));
            return (1Tf.pushParams(du.DAMAGE, {damage:(((('<font color="#' + _local7.toString(16)) + '">') + _local8) + "</font>")}));
        }

        private function 0PE():1Jo{
            var _local1:Number = ((Number(this.1hr.Speed) * Number(this.1hr.LifetimeMS)) / 10000);
            var _local2:Number = ((Number(this.return.Speed) * Number(this.return.LifetimeMS)) / 10000);
            var _local3:uint = 1kE((_local1 - _local2));
            return (1Tf.pushParams(du.1x5, {range:(((('<font color="#' + _local3.toString(16)) + '">') + _local1) + "</font>")}));
        }


    }
}//package AB

