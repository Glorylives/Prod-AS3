// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1ih.ZL

package 1ih{
    import 1t6.tg;
    import _Jy._1HZ;
    import XF.lY;
    import 1t6.Dialog;

    public class ZL extends tg {

        public var ok:_1HZ;

        public function ZL(){
            super("Failed to retrieve valid Steam Credentials! Click to retry.");
            this.ok = new lY(this, Dialog.LEFT_BUTTON);
        }

    }
}//package 1ih

