// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0mE.1qw

package 0mE{
    import aq.Account;
    import 1Bg.h8;
    import 1Bg.0oS;
    import WZ.07B;
    import 1tt.DT;
    import 5z.zL;
    import 1cI.1iz;
    import 1m5.FameView;
    import _1aA.CharacterSelectionAndNewsScreen;
    import flash.display.Sprite;

    public class 1qw {

        [Inject]
        public var account:Account;
        [Inject]
        public var 0gc:h8;
        [Inject]
        public var fP:0oS;
        [Inject]
        public var xA:07B;
        [Inject]
        public var 24c:DT;
        [Inject]
        public var 1G5:zL;


        public function execute():void{
            this.account.clear();
            this.0gc.dispatch();
            this.1G5.FZ();
            this.24c.1uB.addOnce(this.0Uc);
            this.24c.start();
        }

        private function 0Uc(_arg1:1iz, _arg2:Boolean, _arg3:String):void{
            this.fP.dispatch(this.0nY());
        }

        private function 0nY():Sprite{
            if (this.xA.1oO() == FameView)
            {
                return (new CharacterSelectionAndNewsScreen());
            }
            return (new (((this.xA.1oO()) || (CharacterSelectionAndNewsScreen)))());
        }


    }
}//package 0mE

