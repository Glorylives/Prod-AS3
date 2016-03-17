// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//23a.02c

package 23a{
    import 1uF.1Mf;
    import 0Mo.0Yg;

    public class 02c extends 1Mf {

        [Inject]
        public var view:ReskinPanel;
        [Inject]
        public var mK:0Yg;


        override public function initialize():void{
            this.view.reskin.add(this.Hr);
        }

        override public function destroy():void{
            this.view.reskin.remove(this.Hr);
        }

        private function Hr():void{
            this.mK.dispatch();
        }


    }
}//package 23a

