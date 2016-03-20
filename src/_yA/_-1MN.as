// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yA.1MN

package yA{
    import flash.display.Sprite;
    import flash.events.Event;

    public class 1MN extends Sprite {

        public static var 1Bx:Boolean = false;

        public function 1MN():void{
            1Bx = true;
            addEventListener(Event.REMOVED_FROM_STAGE, this.277);
            super();
        }

        public function 277(_arg1:Event):void{
            1Bx = false;
        }


    }
}//package yA

