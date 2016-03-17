// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1t6.tg

package 1t6{
    import flash.events.Event;

    public class tg extends 1hH {

        public function tg(_arg1:String, _arg2:String="Debug"){
            super(_arg2, _arg1, "OK", null, null);
            addEventListener(Dialog.LEFT_BUTTON, this.onDialogComplete);
        }

        private function onDialogComplete(_arg1:Event):void{
            if (this.parent != null)
            {
                this.parent.removeChild(this);
            };
        }


    }
}//package 1t6

