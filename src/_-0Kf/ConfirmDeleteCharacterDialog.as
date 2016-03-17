// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Kf.ConfirmDeleteCharacterDialog

package 0Kf{
    import flash.display.Sprite;
    import 1t6.Dialog;
    import _Jy._1HZ;
    import AO.du;
    import flash.events.Event;

    public class ConfirmDeleteCharacterDialog extends Sprite {

        private const 1B-:String = Dialog.LEFT_BUTTON;
        private const 1XI:String = Dialog.RIGHT_BUTTON;

        public var deleteCharacter:_1HZ;
        public var cancel:_1HZ;

        public function ConfirmDeleteCharacterDialog(){
            this.deleteCharacter = new _1HZ();
            this.cancel = new _1HZ();
        }

        public function 1wG(_arg1:String, _arg2:String):void{
            var _local3:Dialog = new Dialog(du.0U9, "", du.0PK, du.0r8, "/deleteDialog");
            _local3.12Z(du.MY, {
                name:_arg1,
                displayID:_arg2
            });
            _local3.addEventListener(this.1B-, this.onCancel);
            _local3.addEventListener(this.1XI, this.onDelete);
            addChild(_local3);
        }

        private function onCancel(_arg1:Event):void{
            this.cancel.dispatch();
        }

        private function onDelete(_arg1:Event):void{
            this.deleteCharacter.dispatch();
        }


    }
}//package 0Kf

