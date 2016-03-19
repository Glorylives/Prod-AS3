// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//IN.0Ar

package IN{
    import tn.0ec;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import kabam.rotmg.assets.24A;
    import tn.1iY;
    import kabam.rotmg.assets.model.0Ug;
    import tn.0dE;

    public class 0Ar {

        [Inject]
        public var model:0ec;


        private static function 1g1(_arg1:XML):void{
            var _local2:XMLList;
            var _local3:XML;
            var _local4:int;
            var _local5:int;
            _local2 = _arg1.children();
            for each (_local3 in _local2)
            {
                if (_local3.attribute("skinType").length() != 0)
                {
                    _local4 = int(_local3.@skinType);
                    _local5 = 0xFFD700;
                    if (_local3.attribute("color").length() != 0)
                    {
                        _local5 = int(_local3.@color);
                    }
                    ObjectLibrary.RY[_local4] = _local3;
                }
            }
        }


        public function execute():void{
            var _local1:XML;
            var _local2:XMLList;
            var _local3:XML;
            _local1 = 24A.vV;
            _local2 = _local1.children();
            for each (_local3 in _local2)
            {
                this.0P8(_local3);
            }
            _local1 = 24A.1Tr;
            _local2 = _local1.children();
            for each (_local3 in _local2)
            {
                1g1(_local3);
            }
        }

        private function 0P8(_arg1:XML):void{
            var _local2:String = _arg1.AnimatedTexture.File;
            var _local3:int = _arg1.AnimatedTexture.Index;
            var _local4:1iY = new 1iY();
            _local4.id = _arg1.@type;
            _local4.name = _arg1.DisplayId;
            _local4.unlockLevel = _arg1.UnlockLevel;
            if (_arg1.hasOwnProperty("NoSkinSelect"))
            {
                _local4.1S1 = false;
            }
            if (_arg1.hasOwnProperty("UnlockSpecial"))
            {
                _local4.CM = _arg1.UnlockSpecial;
            }
            _local4.26- = new 0Ug(_local2, _local3);
            var _local5:0dE = this.model.7k(_arg1.PlayerClassType);
            _local5.0sP.1UF(_local4);
        }


    }
}//package IN

