// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.CharacterSlotNeedGoldDialog

package 1PB{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 1t6.Dialog;
    import AO.du;
    import flash.events.Event;

    public class CharacterSlotNeedGoldDialog extends Sprite {

        private static const oA:String = "/charSlotNeedGold";

        public const UY:_1HZ = new _1HZ();
        public const cancel:_1HZ = new _1HZ();

        private var 1WQ:Dialog;
        private var price:int;


        public function setPrice(_arg1:int):void{
            this.price = _arg1;
            ((((this.1WQ) && (contains(this.1WQ)))) && (removeChild(this.1WQ)));
            this.1NB();
            this.1WQ.addEventListener(Dialog.LEFT_BUTTON, this.onCancel);
            this.1WQ.addEventListener(Dialog.RIGHT_BUTTON, this.1Tk);
        }

        private function 1NB():void{
            this.1WQ = new Dialog(du.1Bo, "", du.04x, du.0FB, oA);
            this.1WQ.12Z(du.0aE, {price:this.price});
            addChild(this.1WQ);
        }

        public function onCancel(_arg1:Event):void{
            this.cancel.dispatch();
        }

        public function 1Tk(_arg1:Event):void{
            this.UY.dispatch();
        }


    }
}//package 1PB

