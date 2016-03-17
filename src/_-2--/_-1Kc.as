// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.1Kc

package 2--{
    import com.company.assembleegameclient.game.GameSprite;
    import 1qg.11S;
    import _04_._1JZ;
    import AO.du;
    import 1t6.Dialog;
    import flash.events.Event;
    import com.company.googleanalytics.GA;
    import com.company.assembleegameclient.parameters.Parameters;

    public class 1Kc extends 1Xr {

        private var ja:GameSprite;
        private var 1tT:11S;

        public function 1Kc(_arg1:GameSprite){
            this.1tT = _1JZ.0JF().getInstance(11S);
            this.ja = _arg1;
            super("LeavePetYardDialog.title", "LeavePetYardDialog.text", du.0ql, du.0a7, null);
            addEventListener(Dialog.LEFT_BUTTON, this.D2);
            addEventListener(Dialog.RIGHT_BUTTON, this.02);
            064.setMultiLine(true);
        }

        private function D2(_arg1:Event):void{
            this.1tT.dispatch();
        }

        private function 02(_arg1:Event):void{
            this.ja.gsc_.escape();
            GA.global().trackEvent("enterPortal", "Nexus Button");
            Parameters.data_.needsRandomRealm = false;
            Parameters.save();
            this.1tT.dispatch();
        }


    }
}//package 2--

