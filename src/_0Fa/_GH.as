// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Fa._GH

package _0Fa{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import flash.text.TextField;
    import _1u._tM;
    import flash.events.KeyboardEvent;
    import flash.text.TextFieldType;
    import flash.filters.GlowFilter;
    import flash.events.Event;
    import flash.ui.Keyboard;

    public class _GH extends Sprite {

        public const message:_1HZ = new _1HZ(String);
        public const close:_1HZ = new _1HZ();

        private var input:TextField;
        private var _234:Boolean;

        public function _GH(){
            visible = false;
            this._234 = false;
        }

        public function setup(_arg1:_tM, _arg2:TextField):void{
            addChild((this.input = _arg2));
            _arg2.width = (_arg1._1Xo.width - 2);
            _arg2.height = _arg1._1jC;
            _arg2.y = (_arg1._1Xo.height - _arg1._1jC);
        }

        public function activate(_arg1:String, _arg2:Boolean):void{
            this._234 = false;
            if (_arg1 != null)
            {
                this.input.text = _arg1;
            }
            var _local3:int = ((_arg1) ? _arg1.length : 0);
            this.input.setSelection(_local3, _local3);
            if (_arg2)
            {
                this._0he();
            } else
            {
                this._0Pd();
            }
            visible = true;
        }

        public function deactivate():void{
            this._234 = false;
            removeEventListener(KeyboardEvent.KEY_UP, this._0M9);
            stage.removeEventListener(KeyboardEvent.KEY_UP, this._0T4);
            visible = false;
            ((stage) && ((stage.focus = null)));
        }

        public function _0_ZS():Boolean{
            return (this._234);
        }

        private function _0he():void{
            this.input.type = TextFieldType.INPUT;
            this.input.border = true;
            this.input.selectable = true;
            this.input.maxChars = 128;
            this.input.borderColor = 0xFFFFFF;
            this.input.height = 18;
            this.input.filters = [new GlowFilter(0, 1, 3, 3, 2, 1)];
            addEventListener(KeyboardEvent.KEY_UP, this._0M9);
            stage.addEventListener(KeyboardEvent.KEY_UP, this._0T4);
            ((stage) && ((stage.focus = this.input)));
        }

        private function _0T4(_arg1:Event):void{
            this._234 = true;
        }

        private function _0Pd():void{
            this.input.type = TextFieldType.DYNAMIC;
            this.input.border = false;
            this.input.selectable = false;
            this.input.filters = [new GlowFilter(0, 1, 3, 3, 2, 1)];
            this.input.height = 18;
            removeEventListener(KeyboardEvent.KEY_UP, this._0M9);
            stage.removeEventListener(KeyboardEvent.KEY_UP, this._0T4);
        }

        private function _0M9(_arg1:KeyboardEvent):void{
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
}//package _0Fa

