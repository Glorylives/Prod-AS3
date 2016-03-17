// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//dq.1EO

package dq{
    import 1qg.0io;
    import TN.W3;

    public class 1EO {

        private static const 6D:String = "Package Purchased";
        private static const 0DO:String = "You've already purchased this package!";
        private static const 24Z:String = "Please check your vault for any items purchased";

        [Inject]
        public var 0n2:0io;


        public function execute():void{
            this.0n2.dispatch(this.1NB());
        }

        private function 1NB():W3{
            return (new W3().setTitle(6D).setBody(0DO, 24Z));
        }


    }
}//package dq

