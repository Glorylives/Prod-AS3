// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1ki.26c

package 1ki{
    import 1uF.1Mf;
    import 12X.RegisterWebAccountDialog;
    import 0eZ.aE;
    import qs.1T5;

    public class 26c extends 1Mf {

        [Inject]
        public var view:RegisterWebAccountDialog;
        [Inject]
        public var register:aE;


        override public function initialize():void{
            this.view.register.add(this.0VB);
        }

        override public function destroy():void{
            this.view.register.remove(this.0VB);
        }

        private function 0VB(_arg1:1T5):void{
            this.register.dispatch(_arg1);
        }


    }
}//package 1ki

