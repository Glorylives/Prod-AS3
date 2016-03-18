// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.0on

package BG{
    import 1uF.1Mf;
    import 9T.Zf;
    import 0UV.105;
    import gx.0Xo;
    import aq.Account;
    import 9T.0b7;
    import gx._Wl;

    public class 0on extends 1Mf {

        [Inject]
        public var view:Zf;
        [Inject]
        public var addSpeechBalloon:105;
        [Inject]
        public var zB:0Xo;
        [Inject]
        public var account:Account;


        override public function initialize():void{
            this.addSpeechBalloon.add(this.1Zv);
        }

        override public function destroy():void{
            this.addSpeechBalloon.remove(this.1Zv);
        }

        private function 1Zv(_arg1:_Wl):void{
            var _local2:String = ((((this.account.0D3()) || (this.zB.09N(_arg1.go.name_)))) ? _arg1.text : ". . .");
            var _local3:* = new 0b7(_arg1.go, _local2, _arg1.name, _arg1.17n, _arg1.140, _arg1.background, _arg1.mo, _arg1.Je, _arg1.nT, _arg1.textColor, _arg1.14B, _arg1.bold, _arg1.nA);
            this.view.addSpeechBalloon(_local3);
        }


    }
}//package BG

