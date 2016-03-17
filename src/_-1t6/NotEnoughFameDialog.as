// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1t6.NotEnoughFameDialog

package 1t6{
    import AO.du;
    import flash.events.Event;

    public class NotEnoughFameDialog extends Dialog {

        public function NotEnoughFameDialog(){
            super(du.fA, du.1u6, du.0gP, null, "/notEnoughFame");
            addEventListener(LEFT_BUTTON, this.0g0);
        }

        public function 0g0(_arg1:Event):void{
            parent.removeChild(this);
        }


    }
}//package 1t6

