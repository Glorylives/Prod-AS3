// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.21g

package 1PB{
    import 1uF.1Mf;
    import 0eZ.2-y;

    public class 21g extends 1Mf {

        [Inject]
        public var view:ChooseNameRegisterDialog;
        [Inject]
        public var 0Pa:2-y;


        override public function initialize():void{
            this.view.register.add(this.0VB);
            this.view.cancel.add(this.onCancel);
        }

        override public function destroy():void{
            this.view.register.remove(this.0VB);
            this.view.cancel.remove(this.onCancel);
        }

        private function 0VB():void{
            this.onCancel();
            this.0Pa.dispatch();
        }

        private function onCancel():void{
            this.view.parent.removeChild(this.view);
        }


    }
}//package 1PB

