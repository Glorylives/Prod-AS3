// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Fa.GH

package 0Fa{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import flash.text.TextField;
    import 1u-.tM;
    import flash.events.KeyboardEvent;
    import flash.text.TextFieldType;
    import flash.filters.GlowFilter;
    import flash.events.Event;
    import flash.ui.Keyboard;

    public class GH extends Sprite {

        public const message:_1HZ = new _1HZ(String);
        public const close:_1HZ = new _1HZ();

        private var input:TextField;
        private var 234:Boolean;

        public function GH(){
            visible = false;
            this.234 = false;
        }

        public function setup(_arg1:tM, _arg2:TextField):void{
            addChild((this.input = _arg2));
            _arg2.width = (_arg1.1Xo.width - 2);
            _arg2.height = _arg1.1jC;
            _arg2.y = (_arg1.1Xo.height - _arg1.1jC);
        }

        public function activate(_arg1:String, _arg2:Boolean):void{
            this.234 = false;
            if (_arg1 != null)
            {
                this.input.text = _arg1;
            }
            var _local3:int = ((_arg1) ? _arg1.length : 0);
            this.input.setSelection(_local3, _local3);
            if (_arg2)
            {
                this.0he();
            } else
            {
                this.0Pd();
            }
            visible = true;
        }

        public function deactivate():void{
            this.234 = false;
            removeEventListener(KeyboardEvent.KEY_UP, this.0M9);
            stage.removeEventListener(KeyboardEvent.KEY_UP, this.0T4);
            visible = false;
            ((stage) && ((stage.focus = null)));
        }

        public function 0_ZS():Boolean{
            return (this.234);
        }

        private function 0he():void{
            this.input.type = TextFieldType.INPUT;
            this.input.border = true;
            this.input.selectable = true;
            this.input.maxChars = 128;
            this.input.borderColor = 0xFFFFFF;
            this.input.height = 18;
            this.input.filters = [new GlowFilter(0, 1, 3, 3, 2, 1)];
            addEventListener(KeyboardEvent.KEY_UP, this.0M9);
            stage.addEventListener(KeyboardEvent.KEY_UP, this.0T4);
            ((stage) && ((stage.focus = this.input)));
        }

        private function 0T4(_arg1:Event):void{
            this.234 = true;
        }

        private function 0Pd():void{
            this.input.type = TextFieldType.DYNAMIC;
            this.input.border = false;
            this.input.selectable = false;
            this.input.filters = [new GlowFilter(0, 1, 3, 3, 2, 1)];
            this.input.height = 18;
            removeEventListener(KeyboardEvent.KEY_UP, this.0M9);
            stage.removeEventListener(KeyboardEvent.KEY_UP, this.0T4);
        }

        private function 0M9(_arg1:KeyboardEvent):void{
            if (_arg1.keyCode == Keyboard.ENTER)
            {
                if (this.input.text != "")
                {
                    this.message.dispatch(this.input.text);
                } else
                {
                    this.close.dispatch();
                }
                _arg1.stopImmediatePropagation();
            }
        }


    }
}//package 0Fa

