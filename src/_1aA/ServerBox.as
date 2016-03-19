// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.ServerBox

package _1aA{
    import flash.display.Sprite;
    import _CU._13j;
    import 1n4.1cA;
    import AO.du;
    import 1n4.1WS;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import 0y3.Server;
    import flash.text.TextFieldAutoSize;

    public class ServerBox extends Sprite {

        public static const WIDTH:int = 384;
        public static const HEIGHT:int = 52;

        public var value_:String;
        private var nameText_:_13j;
        private var 0-i:_13j;
        private var selected_:Boolean = false;
        private var over_:Boolean = false;

        public function ServerBox(_arg1:Server){
            this.value_ = (((_arg1 == null)) ? null : _arg1.name);
            this.nameText_ = new _13j().setSize(18).setColor(0xFFFFFF).setBold(true);
            if (_arg1 == null)
            {
                this.nameText_.setStringBuilder(new 1cA().setParams(du.0uB));
            } else
            {
                this.nameText_.setStringBuilder(new 1WS(_arg1.name));
            }
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.nameText_.x = 18;
            this.nameText_.setVerticalAlign(_13j.MIDDLE);
            this.nameText_.y = (ServerBox.HEIGHT / 2);
            addChild(this.nameText_);
            this.NP(_arg1);
            this.draw();
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        }

        private function NP(_arg1:Server):void{
            var onTextChanged:Function;
            var color:uint;
            var text:String;
            var server:Server = _arg1;
            onTextChanged = function ():void{
                makeStatusText(color, text);
            }
            if (server != null)
            {
                color = 0xFF00;
                text = "ServerBox.normal";
                if (server.1zU())
                {
                    color = 0xFF0000;
                    text = "ServerBox.full";
                } else
                {
                    if (server.0-4())
                    {
                        color = 16549442;
                        text = "ServerBox.crowded";
                    }
                }
                this.nameText_.textChanged.addOnce(onTextChanged);
            }
        }

        private function makeStatusText(_arg1:uint, _arg2:String):void{
            this.0-i = new _13j().setSize(18).setColor(_arg1).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
            this.0-i.setStringBuilder(new 1cA().setParams(_arg2));
            this.0-i.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.0-i.x = ((WIDTH / 2) + (WIDTH / 4));
            this.0-i.y = ((ServerBox.HEIGHT / 2) - (this.nameText_.height / 2));
            addChild(this.0-i);
        }

        public function setSelected(_arg1:Boolean):void{
            this.selected_ = _arg1;
            this.draw();
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.over_ = true;
            this.draw();
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this.over_ = false;
            this.draw();
        }

        private function draw():void{
            graphics.clear();
            if (this.selected_)
            {
                graphics.lineStyle(2, 16777103);
            }
            graphics.beginFill(((this.over_) ? 0x6B6B6B : 0x5C5C5C), 1);
            graphics.drawRect(0, 0, WIDTH, HEIGHT);
            if (this.selected_)
            {
                graphics.lineStyle();
            }
        }


    }
}//package _1aA

