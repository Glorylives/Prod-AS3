// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Av.TV

package Av{
    import 1t6.tg;
    import _Jy._1HZ;
    import XF.lY;

    public class TV extends tg {

        private static const MESSAGE:String = "Failed to retrieve valid Kabam request! Click to reload.";

        public var close:_1HZ;

        public function TV(){
            super(MESSAGE);
            this.close = new lY(this, LEFT_BUTTON);
        }

    }
}//package Av

