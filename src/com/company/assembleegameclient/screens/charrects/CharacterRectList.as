// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.screens.charrects.CharacterRectList

package com.company.assembleegameclient.screens.charrects{
    import flash.display.Sprite;
    import tn.0ec;
    import WZ.0Te;
    import kabam.rotmg.assets.services.0Vx;
    import _Jy._1HZ;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import tn.0dE;
    import com.company.assembleegameclient.appengine.1WG;
    import _04_._1JZ;
    import _0OG._22M;
    import __AS3__.vec.Vector;
    import flash.events.MouseEvent;
    import tn.1iY;
    import flash.display.BitmapData;
    import flash.display.Bitmap;
    import flash.display.DisplayObject;
    import flash.events.Event;

    public class CharacterRectList extends Sprite {

        private var classes:0ec;
        private var model:0Te;
        private var assetFactory:0Vx;
        public var newCharacter:_1HZ;
        public var buyCharacterSlot:_1HZ;

        public function CharacterRectList(){
            var _local5:SavedCharacter;
            var _local6:BuyCharacterRect;
            var _local7:0dE;
            var _local8:1WG;
            var _local9:CurrentCharacterRect;
            var _local10:int;
            var _local11:CreateNewCharacterRect;
            super();
            var _local1:_22M = _1JZ.0JF();
            this.classes = _local1.getInstance(0ec);
            this.model = _local1.getInstance(0Te);
            this.assetFactory = _local1.getInstance(0Vx);
            this.newCharacter = new _1HZ();
            this.buyCharacterSlot = new _1HZ();
            var _local2:String = this.model.getName();
            var _local3:int = 4;
            var _local4:Vector.<SavedCharacter> = this.model.sN();
            for each (_local5 in _local4)
            {
                _local7 = this.classes.7k(_local5.objectType());
                _local8 = this.model.OO()[_local5.objectType()];
                _local9 = new CurrentCharacterRect(_local2, _local7, _local5, _local8);
                _local9.setIcon(this.getIcon(_local5));
                _local9.y = _local3;
                addChild(_local9);
                _local3 = (_local3 + (CharacterRect.HEIGHT + 4));
            }
            if (this.model.hasAvailableCharSlot())
            {
                _local10 = 0;
                while (_local10 < this.model.M9())
                {
                    _local11 = new CreateNewCharacterRect(this.model);
                    _local11.addEventListener(MouseEvent.MOUSE_DOWN, this.onNewChar);
                    _local11.y = _local3;
                    addChild(_local11);
                    _local3 = (_local3 + (CharacterRect.HEIGHT + 4));
                    _local10++;
                }
            }
            _local6 = new BuyCharacterRect(this.model);
            _local6.addEventListener(MouseEvent.MOUSE_DOWN, this.onBuyCharSlot);
            _local6.y = _local3;
            addChild(_local6);
        }

        private function getIcon(_arg1:SavedCharacter):DisplayObject{
            var _local2:0dE = this.classes.7k(_arg1.objectType());
            var _local3:1iY = ((_local2.0sP.15c(_arg1.skinType())) || (_local2.0sP.0i1()));
            var _local4:BitmapData = this.assetFactory.makeIcon(_local3.26-, 100, _arg1.tex1(), _arg1.tex2());
            return (new Bitmap(_local4));
        }

        private function onNewChar(_arg1:Event):void{
            this.newCharacter.dispatch();
        }

        private function onBuyCharSlot(_arg1:Event):void{
            this.buyCharacterSlot.dispatch(this.model.CO());
        }


    }
}//package com.company.assembleegameclient.screens.charrects

