// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1YL.N8

package 1YL{
    import flash.text.TextField;
    import 1aj.1TB;
    import flash.text.TextFormat;
    import flash.text.TextFieldType;
    import flash.events.KeyboardEvent;
    import flash.ui.Keyboard;
    import flash.geom.Rectangle;
    import 0dW.*;

    public final class N8 extends TextField implements 2-J {

        public static const HEIGHT:int = 20;

        private var 9g:1TB;

        public function N8(){
            background = true;
            backgroundColor = 0x3300;
            border = true;
            borderColor = 0x333333;
            defaultTextFormat = new TextFormat("_sans", 14, 0xFFFFFF, true);
            text = "";
            type = TextFieldType.INPUT;
            restrict = "^`";
            this.9g = new 1TB(this);
            this.9g.23k.add(this.onAddedToStage);
            this.9g.277.add(this.onRemovedFromStage);
        }

        private function onAddedToStage():void{
            addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function onRemovedFromStage():void{
            removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            var _local2:String = text;
            switch (_arg1.keyCode)
            {
                case Keyboard.ENTER:
                    text = "";
                    dispatchEvent(new ConsoleEvent(ConsoleEvent.INPUT, _local2));
                    return;
                case Keyboard.UP:
                    dispatchEvent(new ConsoleEvent(ConsoleEvent.GET_PREVIOUS));
                    return;
                case Keyboard.DOWN:
                    dispatchEvent(new ConsoleEvent(ConsoleEvent.GET_NEXT));
                    return;
            }
        }

        public function resize(_arg1:Rectangle):void{
            var _local2:int = (_arg1.height * 0.5);
            if (_local2 > HEIGHT)
            {
                _local2 = HEIGHT;
            }
            width = _arg1.width;
            height = _local2;
            x = _arg1.x;
            y = (_arg1.bottom - height);
        }


    }
}//package 1YL

