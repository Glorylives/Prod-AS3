// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//TN.Xj

package TN{
    import 1uF.1Mf;
    import 1qg.11S;

    public class Xj extends 1Mf {

        [Inject]
        public var view:W3;
        [Inject]
        public var closeDialogs:11S;


        override public function initialize():void{
            this.view.closed.add(this.1qf);
        }

        override public function destroy():void{
            this.view.closed.remove(this.1qf);
        }

        private function 1qf():void{
            this.closeDialogs.dispatch();
        }


    }
}//package TN

