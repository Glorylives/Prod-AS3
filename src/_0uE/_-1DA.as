// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.1DA

package 0uE{
    import 1uF.1Mf;
    import 1Bg.1hy;
    import 0qj.1ae;

    public class 1DA extends 1Mf {

        [Inject]
        public var view:82;
        [Inject]
        public var showToolTip:1hy;


        override public function initialize():void{
            this.view.1z6.add(this.0xJ);
        }

        override public function destroy():void{
            this.view.destroy();
        }

        private function 0xJ(_arg1:1ae):void{
            this.showToolTip.dispatch(_arg1);
        }


    }
}//package 0uE

