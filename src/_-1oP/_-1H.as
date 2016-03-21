// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1oP.1H

package 1oP{
    import kabam.rotmg.assets.services.0Vx;

    import tn.1iY;
    import flash.display.DisplayObject;
    import tn.0a0;
    import com.company.util.AssetLibrary;
    import OZ.08g;
    import com.company.assembleegameclient.util.Currency;
    import flash.display.BitmapData;
    import flash.display.Bitmap;


    public class 1H {

        [Inject]
        public var characters:0Vx;


        public function make(_arg1:0a0):Vector.<DisplayObject>{
            var _local2:Vector.<1iY>;
            var _local3:int;
            _local2 = _arg1.nf();
            _local3 = _local2.length;
            var _local4:Vector.<DisplayObject> = new Vector.<DisplayObject>(_local3, true);
            var _local5:int;
            while (_local5 < _local3)
            {
                _local4[_local5] = this.1h0(_local2[_local5]);
                _local5++;
            }
            return (_local4);
        }

        private function 1h0(_arg1:1iY):CharacterSkinListItem{
            var _local2:CharacterSkinListItem = new CharacterSkinListItem();
            _local2.1es(this.makeIcon(_arg1));
            _local2.0oJ(_arg1);
            _local2.0MI(AssetLibrary.1JR("lofiInterface2", 5));
            _local2.06C(this.4j());
            return (_local2);
        }

        private function 4j():08g{
            return (new 08g("", 16, 0, Currency.1Jg));
        }

        private function makeIcon(_arg1:1iY):Bitmap{
            var _local2:BitmapData = this.characters.makeIcon(_arg1.26-);
            return (new Bitmap(_local2));
        }


    }
}//package 1oP

