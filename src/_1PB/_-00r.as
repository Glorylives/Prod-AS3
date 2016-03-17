// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.00r

package 1PB{
    import 1uF.1Mf;
    import 0eZ.2-y;
    import 1qg.11S;

    public class 00r extends 1Mf {

        [Inject]
        public var view:0jd;
        [Inject]
        public var 0Pa:2-y;
        [Inject]
        public var close:11S;


        override public function initialize():void{
            this.view.cancel.add(this.onCancel);
            this.view.register.add(this.0VB);
        }

        override public function destroy():void{
            this.view.cancel.remove(this.onCancel);
            this.view.register.remove(this.0VB);
        }

        private function 0VB():void{
            this.0Pa.dispatch();
        }

        private function onCancel():void{
            this.close.dispatch();
        }


    }
}//package 1PB

