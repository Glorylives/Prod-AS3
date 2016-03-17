// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Np.0bT

package 0Np{
    import 1uF.1Mf;
    import JV.1OM;
    import 1qQ.0Uh;
    import 122.Gs;
    import 1Bg.1zl;
    import 1PB.TitleView;

    public class 0bT extends 1Mf {

        [Inject]
        public var W2:1OM;
        [Inject]
        public var 0ur:0Uh;
        [Inject]
        public var so:Gs;
        [Inject]
        public var view:24b;
        [Inject]
        public var 21r:1zl;


        override public function initialize():void{
            this.view.0tG(this.0ur.yj());
            this.view.setSelected(this.0ur.0lI(this.0ur.1Jp()));
            this.view.1fV.add(this.Ak);
            this.view.back.add(this.0K2);
        }

        override public function destroy():void{
            this.view.1fV.remove(this.Ak);
            this.view.back.remove(this.0K2);
        }

        private function 0K2():void{
            this.21r.dispatch(new TitleView());
        }

        private function Ak(_arg1:String):void{
            this.so.dispatch(this.0ur.0Mz(_arg1));
        }


    }
}//package 0Np

