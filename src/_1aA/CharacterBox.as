// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.CharacterBox

package _1aA{
    import flash.display.Sprite;
    import flash.geom.ColorTransform;
    import com.company.assembleegameclient.appengine.1WG;
    import WZ.0Te;
    import flash.display.Bitmap;
    import _CU._13j;
    import OZ.08g;
    import XF.1eq;
    import com.company.rotmg.graphics.LockedCharBoxGraphic;
    import com.company.rotmg.graphics.FullCharBoxGraphic;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.util._BJ;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.util.09g;
    import com.company.util.AssetLibrary;
    import 0gd.GTween;
    import 0qj.RP;
    import 0qj.1ae;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import com.company.rotmg.graphics.StarGraphic;
    import AO.du;
    import com.company.assembleegameclient.util.Currency;

    public class CharacterBox extends Sprite {

        public static const DELETE_CHAR:String = "DELETE_CHAR";
        public static const ENTER_NAME:String = "ENTER_NAME";
        private static const 0fa:ColorTransform = new ColorTransform(0.8, 0.8, 0.8);
        private static const 04l:ColorTransform = new ColorTransform(0.2, 0.2, 0.2);

        private var 0Rz:Class;
        public var playerXML_:XML = null;
        public var charStats_:1WG;
        public var model:0Te;
        public var 0ma:Boolean;
        private var 1GF:Sprite;
        private var 0pB:Sprite;
        private var bitmap_:Bitmap;
        private var 0-i:_13j;
        private var classNameText_:_13j;
        private var 0JA:08g;
        private var cost:int = 0;
        private var 1o1:Bitmap;
        private var 0B1:_13j;
        private var 0Zy:_13j;
        private var 12e;
        public var 0it:1eq;
        public var 0En:1eq;

        public function CharacterBox(_arg1:XML, _arg2:1WG, _arg3:0Te, _arg4:Boolean=false){
            var _local5:Sprite;
            this.0Rz = ye;
            super();
            this.model = _arg3;
            this.playerXML_ = _arg1;
            this.charStats_ = _arg2;
            this.0ma = ((_arg4) || (_arg3.1if(this.objectType())));
            if (!this.0ma)
            {
                this.0pB = new LockedCharBoxGraphic();
                this.cost = this.playerXML_.UnlockCost;
            } else
            {
                this.0pB = new FullCharBoxGraphic();
            };
            this.1GF = new Sprite();
            addChild(this.1GF);
            this.1GF.addChild(this.0pB);
            this.0En = new 1eq(this.1GF, MouseEvent.CLICK, MouseEvent);
            this.bitmap_ = new Bitmap(null);
            this.setImage(_BJ.DOWN, _BJ.1OS, 0);
            this.0pB.addChild(this.bitmap_);
            this.classNameText_ = new _13j().setSize(14).setColor(0xFFFFFF).setAutoSize(TextFieldAutoSize.CENTER).setTextWidth(this.0pB.width).setBold(true);
            this.classNameText_.setStringBuilder(new 1cA().setParams(this.playerXML_.DisplayId));
            this.classNameText_.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
            this.0pB.addChild(this.classNameText_);
            this.06C();
            this.1Nh();
            if (this.0ma)
            {
                _local5 = this.19u(09g.numStars(_arg3.0E-(this.objectType())), 09g.1wz.length);
                _local5.y = 60;
                _local5.x = ((this.0pB.width / 2) - (_local5.width / 2));
                _local5.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
                this.1GF.addChild(_local5);
                this.classNameText_.y = 74;
            } else
            {
                addChild(this.0JA);
                this.1o1 = new Bitmap(AssetLibrary.1JR("lofiInterface2", 5));
                this.1o1.scaleX = 2;
                this.1o1.scaleY = 2;
                this.1o1.x = 4;
                this.1o1.y = 8;
                addChild(this.1o1);
                addChild(this.0-i);
                this.classNameText_.y = 78;
            };
        }

        public function objectType():int{
            return (int(this.playerXML_.@type));
        }

        public function unlock():void{
            var _local1:Sprite;
            var _local2:GTween;
            if (this.0ma == false)
            {
                this.0ma = true;
                this.1GF.removeChild(this.0pB);
                this.0pB = new FullCharBoxGraphic();
                this.1GF.addChild(this.0pB);
                this.setImage(_BJ.DOWN, _BJ.1OS, 0);
                this.0pB.addChild(this.bitmap_);
                this.0pB.addChild(this.classNameText_);
                if (contains(this.0-i))
                {
                    removeChild(this.0-i);
                };
                if (contains(this.0JA))
                {
                    removeChild(this.0JA);
                };
                if (((this.1o1) && (contains(this.1o1))))
                {
                    removeChild(this.1o1);
                };
                if (((this.12e) && (contains(this.12e))))
                {
                    removeChild(this.12e);
                };
                if (((this.0B1) && (contains(this.0B1))))
                {
                    removeChild(this.0B1);
                };
                _local1 = this.19u(09g.numStars(this.model.0E-(this.objectType())), 09g.1wz.length);
                _local1.y = 60;
                _local1.x = ((this.0pB.width / 2) - (_local1.width / 2));
                _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
                addChild(_local1);
                this.classNameText_.y = 74;
                if (!this.0Zy)
                {
                    this.1I6();
                };
                addChild(this.0Zy);
                _local2 = new GTween(this.0Zy, 2.5, {
                    alpha:0,
                    y:-30
                });
                _local2.onComplete = this.O-;
            };
        }

        private function O-(_arg1:GTween):void{
            removeChild(this.0Zy);
        }

        public function getTooltip():1ae{
            return (new RP(this.playerXML_, this.model, this.charStats_));
        }

        public function pS(_arg1:Boolean):void{
            if (!this.0ma)
            {
                return;
            };
            if (_arg1)
            {
                transform.colorTransform = new ColorTransform(1.2, 1.2, 1.2);
            } else
            {
                transform.colorTransform = new ColorTransform(1, 1, 1);
            };
        }

        private function setImage(_arg1:int, _arg2:int, _arg3:Number):void{
            this.bitmap_.bitmapData = SavedCharacter.getImage(null, this.playerXML_, _arg1, _arg2, _arg3, this.0ma, false);
            this.bitmap_.x = ((this.0pB.width / 2) - (this.bitmap_.bitmapData.width / 2));
        }

        private function 19u(_arg1:int, _arg2:int):Sprite{
            var _local5:Sprite;
            var _local3:Sprite = new Sprite();
            var _local4:int;
            var _local6:int;
            while (_local4 < _arg1)
            {
                _local5 = new StarGraphic();
                _local5.x = _local6;
                _local5.transform.colorTransform = 0fa;
                _local3.addChild(_local5);
                _local6 = (_local6 + _local5.width);
                _local4++;
            };
            while (_local4 < _arg2)
            {
                _local5 = new StarGraphic();
                _local5.x = _local6;
                _local5.transform.colorTransform = 04l;
                _local3.addChild(_local5);
                _local6 = (_local6 + _local5.width);
                _local4++;
            };
            return (_local3);
        }

        public function KV(_arg1:int):void{
            if (!this.12e)
            {
                this.12e = new this.0Rz();
                this.12e.x = 38;
                this.12e.y = 8;
                addChild(this.12e);
            };
            if (!this.0B1)
            {
                this.dn();
                addChild(this.0B1);
            };
            this.0B1.setStringBuilder(new 1cA().setParams(du.sD, {percent:String(_arg1)}));
        }

        private function 06C():void{
            this.0JA = new 08g(du.0H5, 13, this.cost, Currency.1Jg);
            this.0JA.y = (this.0JA.y + this.0pB.height);
            this.0JA.setWidth(this.0pB.width);
            this.0it = new 1eq(this.0JA, MouseEvent.CLICK, MouseEvent);
        }

        private function 1Nh():void{
            this.0-i = new _13j().setSize(14).setColor(0xFF0000).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setTextWidth(this.0pB.width);
            this.0-i.setStringBuilder(new 1cA().setParams(du.LOCKED));
            this.0-i.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
            this.0-i.y = 58;
        }

        private function dn():void{
            this.0B1 = new _13j().setSize(14).setColor(0xFFFFFF).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setTextHeight(this.12e.height).setTextWidth(this.12e.width);
            this.0B1.x = 42;
            this.0B1.y = 12;
        }

        private function 1I6():void{
            this.0Zy = new _13j().setSize(14).setColor(0xFF00).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
            this.0Zy.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
            this.0Zy.setStringBuilder(new 1cA().setParams(du.15d));
            this.0Zy.y = -20;
        }

        public function 0ok(_arg1:Boolean):void{
            this.0JA.setEnabled(_arg1);
        }


    }
}//package _1aA

