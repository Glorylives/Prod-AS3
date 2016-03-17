// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Ux.0dq

package 0Ux{
    import 1uF.1Mf;
    import 1Bt.l-;
    import 1g8.Bd;

    public class 0dq extends 1Mf {

        [Inject]
        public var view:0tu;
        [Inject]
        public var model:l-;
        [Inject]
        public var 1ji:Bd;


        override public function initialize():void{
            this.model.1ww.addOnce(this.0Pm);
            this.view.clicked.add(this.onButtonClick);
            this.view.fK(this.model.YV());
        }

        override public function destroy():void{
            this.model.1ww.remove(this.0Pm);
            this.view.clicked.remove(this.onButtonClick);
        }

        private function onButtonClick():void{
            this.1ji.dispatch();
        }

        private function 0Pm():void{
            this.view.destroy();
        }


    }
}//package 0Ux

