// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.GeneralProjectileComparison

package AB{
    import 1n4.AppendingLineBuilder;
    import 0qj.TR;
    import AO.du;

    public class GeneralProjectileComparison extends 103 {

        private var itemXML:XML;
        private var curItemXML:XML;
        private var 1hr:XML;
        private var return:XML;


        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            this.itemXML = _arg1;
            this.curItemXML = _arg2;
            1Tf = new AppendingLineBuilder();
            if (_arg1.hasOwnProperty("NumProjectiles"))
            {
                this.v0();
                ZX[_arg1.NumProjectiles.toXMLString()] = true;
            }
            if (_arg1.hasOwnProperty("Projectile"))
            {
                this.eW();
                ZX[_arg1.Projectile.toXMLString()] = true;
            }
            this.1T8();
        }

        private function eW():void{
            this.b5();
            var _local1:Number = ((Number(this.1hr.Speed) * Number(this.1hr.LifetimeMS)) / 10000);
            var _local2:Number = ((Number(this.return.Speed) * Number(this.return.LifetimeMS)) / 10000);
            var _local3:String = TR.rI(_local1);
            1Tf.pushParams(du.1x5, {range:00I(_local3, 1kE((_local1 - _local2)))});
            if (this.1hr.hasOwnProperty("MultiHit"))
            {
                1Tf.pushParams(du.0YQ, {}, TR.1pw(1U4), TR.17H());
            }
            if (this.1hr.hasOwnProperty("PassesCover"))
            {
                1Tf.pushParams(du.12u, {}, TR.1pw(1U4), TR.17H());
            }
            if (this.1hr.hasOwnProperty("ArmorPiercing"))
            {
                1Tf.pushParams(du.if , {}, TR.1pw(1U4), TR.17H());
            }
        }

        private function v0():void{
            var _local1:int = int(this.itemXML.NumProjectiles);
            var _local2:int = int(this.curItemXML.NumProjectiles);
            var _local3:uint = 1kE((_local1 - _local2));
            1Tf.pushParams(du.01s, {numShots:00I(_local1.toString(), _local3)});
        }

        private function b5():void{
            this.1hr = XML(this.itemXML.Projectile);
            var _local1:int = int(this.1hr.MinDamage);
            var _local2:int = int(this.1hr.MaxDamage);
            var _local3:Number = ((_local2 + _local1) / 2);
            this.return = XML(this.curItemXML.Projectile);
            var _local4:int = int(this.return.MinDamage);
            var _local5:int = int(this.return.MaxDamage);
            var _local6:Number = ((_local5 + _local4) / 2);
            var _local7:String = (((_local1 == _local2)) ? _local1 : ((_local1 + " - ") + _local2)).toString();
            1Tf.pushParams(du.DAMAGE, {damage:00I(_local7, 1kE((_local3 - _local6)))});
        }

        private function 1T8():void{
            if ((((this.itemXML.RateOfFire.length() == 0)) || ((this.curItemXML.RateOfFire.length() == 0))))
            {
                return;
            }
            var _local1:Number = Number(this.curItemXML.RateOfFire[0]);
            var _local2:Number = Number(this.itemXML.RateOfFire[0]);
            var _local3:int = int(((_local2 / _local1) * 100));
            var _local4:int = (_local3 - 100);
            if (_local4 == 0)
            {
                return;
            }
            var _local5:uint = 1kE(_local4);
            var _local6:String = _local4.toString();
            if (_local4 > 0)
            {
                _local6 = ("+" + _local6);
            }
            _local6 = 00I((_local6 + "%"), _local5);
            1Tf.pushParams(du.1vb, {data:_local6});
            ZX[this.itemXML.RateOfFire[0].toXMLString()];
        }


    }
}//package AB

