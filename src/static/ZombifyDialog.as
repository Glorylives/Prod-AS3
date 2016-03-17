// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//static.ZombifyDialog

package static{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 1t6.Dialog;
    import flash.events.Event;

    public class ZombifyDialog extends Sprite {

        public static const TITLE:String = "ZombifyDialog.title";
        public static const 1hN:String = "ZombifyDialog.body";
        public static const 0Su:String = "ZombifyDialog.button";

        public const closed:_1HZ = new _1HZ();

        private var 1WQ:Dialog;

        public function ZombifyDialog(){
            this.1WQ = new Dialog(TITLE, 1hN, 0Su, null, null);
            this.1WQ.offsetX = -100;
            this.1WQ.offsetY = 200;
            this.1WQ.addEventListener(Dialog.LEFT_BUTTON, this.onButtonClick);
            addChild(this.1WQ);
        }

        private function onButtonClick(_arg1:Event):void{
            this.closed.dispatch();
        }


    }
}//package static

