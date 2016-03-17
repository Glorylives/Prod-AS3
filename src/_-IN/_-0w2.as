// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//IN.0w2

package IN{
    import tn.0ec;
    import 0Fr.1da;
    import tn.0dE;
    import tn.1iY;
    import tn.Lm;

    public class 0w2 {

        [Inject]
        public var data:XML;
        [Inject]
        public var model:0ec;
        [Inject]
        public var u3:1da;


        public function execute():void{
            this.016();
            this.KD();
            this.Rp();
        }

        private function 016():void{
            var _local2:XML;
            var _local3:0dE;
            var _local1:XMLList = this.data.MaxClassLevelList.MaxClassLevel;
            for each (_local2 in _local1)
            {
                _local3 = this.model.7k(_local2.@classType);
                _local3.0nw(_local2.@maxLevel);
            };
        }

        private function KD():void{
            var _local2:XML;
            var _local3:1iY;
            var _local1:XMLList = this.data.ItemCosts.ItemCost;
            for each (_local2 in _local1)
            {
                _local3 = this.model.LW(_local2.@type);
                if (_local3)
                {
                    _local3.cost = int(_local2);
                    _local3.limited = Boolean(int(_local2.@expires));
                    if (!Boolean(int(_local2.@purchasable)))
                    {
                        _local3.setState(Lm.UNLISTED);
                    };
                } else
                {
                    this.u3.0K("Cannot set Character Skin cost: type {0} not found", [_local2.@type]);
                };
            };
        }

        private function Rp():void{
            var _local2:int;
            var _local3:1iY;
            var _local1:Array = ((this.data.OwnedSkins.length()) ? this.data.OwnedSkins.split(",") : []);
            for each (_local2 in _local1)
            {
                _local3 = this.model.LW(_local2);
                if (_local3)
                {
                    _local3.setState(Lm.OWNED);
                } else
                {
                    this.u3.0K("Cannot set Character Skin ownership: type {0} not found", [_local2]);
                };
            };
        }


    }
}//package IN

