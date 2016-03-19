// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.RankText

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import _CU._13j;
    import 1PB.cO;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import 1n4.1WS;
    import com.company.assembleegameclient.util.09g;

    public class RankText extends Sprite {

        public var background:Sprite = null;
        public var 0Og:Boolean;
        private var numStars_:int = -1;
        private var 1jx:_13j = null;
        private var 1he:cO;
        private var icon:Sprite;

        public function RankText(_arg1:int, _arg2:Boolean, _arg3:Boolean){
            this.1he = new cO();
            super();
            this.0Og = _arg2;
            if (_arg3)
            {
                this.1jx = this.makeText();
                this.1jx.setStringBuilder(new 1cA().setParams(du.184));
                this.1jx.filters = [new DropShadowFilter(0, 0, 0)];
                this.1jx.textChanged.addOnce(this.position);
                addChild(this.1jx);
            }
            mouseEnabled = false;
            mouseChildren = false;
            this.draw(_arg1);
        }

        public function makeText():_13j{
            var _local1:int = ((this.0Og) ? 18 : 16);
            var _local2:_13j = new _13j();
            _local2.setSize(_local1).setColor(0xB3B3B3);
            _local2.setBold(this.0Og);
            return (_local2);
        }

        public function draw(_arg1:int):void{
            var text:_13j;
            var onTextChanged:Function;
            var numStars:int = _arg1;
            onTextChanged = function ():void{
                text.y = text.height;
                icon.x = (text.width + 2);
                icon.y = (text.y - icon.height);
                var _local1:int = (icon.x + icon.width);
                background.graphics.clear();
                background.graphics.beginFill(0, 0.4);
                var _local2:Number = (icon.height + 8);
                background.graphics.drawRoundRect(-2, (icon.y - 3), (_local1 + 6), _local2, 12, 12);
                background.graphics.endFill();
                position();
            }
            if (numStars == this.numStars_)
            {
                return;
            }
            this.numStars_ = numStars;
            if (((!((this.background == null))) && (contains(this.background))))
            {
                removeChild(this.background);
            }
            if (this.numStars_ < 0)
            {
                return;
            }
            this.background = new Sprite();
            text = this.makeText();
            text.setVerticalAlign(_13j.BOTTOM);
            text.setStringBuilder(new 1WS(this.numStars_.toString()));
            text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            this.background.addChild(text);
            this.icon = ((this.0Og) ? 09g.1Ru(this.numStars_) : 09g.12D(this.numStars_));
            this.background.addChild(this.icon);
            text.textChanged.addOnce(onTextChanged);
            addChild(this.background);
            if (this.1jx != null)
            {
                this.1rR();
            }
        }

        private function 1rR():void{
            if (this.1he.isEmpty())
            {
                this.position();
            } else
            {
                this.1he.complete.addOnce(this.position);
            }
        }

        private function position():void{
            if (this.1jx)
            {
                this.background.x = this.1jx.width;
                this.1jx.y = (this.icon.y - 3);
            }
        }


    }
}//package com.company.assembleegameclient.ui

