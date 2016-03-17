// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//12X.Id

package 12X{
    import 1uF.1Mf;
    import 0eZ.2-y;
    import 1qg.11S;

    public class Id extends 1Mf {

        [Inject]
        public var view:0KD;
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
            this.onCancel();
            this.0Pa.dispatch();
        }

        private function onCancel():void{
            this.close.dispatch();
        }


    }
}//package 12X

