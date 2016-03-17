// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1ih.15p

package 1ih{
    import 1uF.1Mf;
    import 12X.RegisterWebAccountDialog;
    import 0eZ.aE;
    import 1qg.11S;
    import qs.1T5;

    public class 15p extends 1Mf {

        [Inject]
        public var view:RegisterWebAccountDialog;
        [Inject]
        public var register:aE;
        [Inject]
        public var 25R:11S;


        override public function initialize():void{
            this.view.register.add(this.0VB);
            this.view.cancel.add(this.D2);
        }

        override public function destroy():void{
            this.view.register.remove(this.0VB);
        }

        private function 0VB(_arg1:1T5):void{
            this.register.dispatch(_arg1);
        }

        private function D2():void{
            this.25R.dispatch();
        }


    }
}//package 1ih

