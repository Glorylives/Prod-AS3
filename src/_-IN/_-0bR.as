// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//IN.0bR

package IN{
    import tn.0ec;
    import tn.0dE;
    import tn.1iY;
    import AO.du;
    import kabam.rotmg.assets.model.0Ug;
    import tn.Lm;
    import tn.0dS;
    import tn.1Ta;
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class 0bR {

        [Inject]
        public var data:XML;
        [Inject]
        public var classes:0ec;


        public function execute():void{
            var _local2:XML;
            var _local1:XMLList = this.data.Object;
            for each (_local2 in _local1)
            {
                this.5Y(_local2);
            };
        }

        private function 5Y(_arg1:XML):void{
            var _local2:int = _arg1.@type;
            var _local3:0dE = this.classes.7k(_local2);
            this.26D(_local3, _arg1);
        }

        private function 26D(_arg1:0dE, _arg2:XML):void{
            var _local3:XML;
            _arg1.id = _arg2.@type;
            _arg1.name = _arg2.DisplayId;
            _arg1.description = _arg2.Description;
            _arg1.1uw = _arg2.HitSound;
            _arg1.1uY = _arg2.DeathSound;
            _arg1.TJ = _arg2.BloodProb;
            _arg1.Zm = this.7T(_arg2.SlotTypes);
            _arg1.0Mh = this.7T(_arg2.Equipment);
            _arg1.m0 = this.0jM(_arg2, "MaxHitPoints");
            _arg1.1ch = this.0jM(_arg2, "MaxMagicPoints");
            _arg1.attack = this.0jM(_arg2, "Attack");
            _arg1.defense = this.0jM(_arg2, "Defense");
            _arg1.speed = this.0jM(_arg2, "Speed");
            _arg1.dexterity = this.0jM(_arg2, "Dexterity");
            _arg1.1CS = this.0jM(_arg2, "HpRegen");
            _arg1.O9 = this.0jM(_arg2, "MpRegen");
            _arg1.unlockCost = _arg2.UnlockCost;
            for each (_local3 in _arg2.UnlockLevel)
            {
                _arg1.No.push(this.1bt(_local3));
            };
            _arg1.0sP.1UF(this.dy(_arg2), true);
        }

        private function dy(_arg1:XML):1iY{
            var _local2:String = _arg1.AnimatedTexture.File;
            var _local3:int = _arg1.AnimatedTexture.Index;
            var _local4:1iY = new 1iY();
            _local4.id = 0;
            _local4.name = du.1vd;
            _local4.26- = new 0Ug(_local2, _local3);
            _local4.setState(Lm.OWNED);
            _local4.eR(true);
            return (_local4);
        }

        private function 1bt(_arg1:XML):0dS{
            var _local2:0dS = new 0dS();
            _local2.level = _arg1.@level;
            _local2.character = this.classes.7k(_arg1.@type);
            return (_local2);
        }

        private function 0jM(_arg1:XML, _arg2:String):1Ta{
            var _local4:XML;
            var _local5:XML;
            var _local6:1Ta;
            var _local3:XML = _arg1[_arg2][0];
            for each (_local5 in _arg1.LevelIncrease)
            {
                if (_local5.text() == _arg2)
                {
                    _local4 = _local5;
                };
            };
            _local6 = new 1Ta();
            _local6.0VD = int(_local3.toString());
            _local6.max = _local3.@max;
            _local6.B0 = ((_local4) ? _local4.@min : 0);
            _local6.1gh = ((_local4) ? _local4.@max : 0);
            return (_local6);
        }

        private function 7T(_arg1:String):Vector.<int>{
            var _local2:Array = _arg1.split(",");
            var _local3:int = _local2.length;
            var _local4:Vector.<int> = new Vector.<int>(_local3, true);
            var _local5:int;
            while (_local5 < _local3)
            {
                _local4[_local5] = int(_local2[_local5]);
                _local5++;
            };
            return (_local4);
        }


    }
}//package IN

