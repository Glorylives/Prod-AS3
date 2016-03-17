// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1ki.1x-

package 1ki{
    import 1uF.1Mf;

    public class 1x- extends 1Mf {

        [Inject]
        public var view:KongregateAccountInfoView;
        [Inject]
        public var  each:0e0;


        override public function initialize():void{
            this.view.register.add(this.0VB);
        }

        override public function destroy():void{
            this.view.register.remove(this.0VB);
        }

        private function 0VB():void{
            this. each.1cv();
        }


    }
}//package 1ki

