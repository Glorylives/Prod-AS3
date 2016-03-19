// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.0vE

package 2--{
    import 1uF.1Mf;
    import 1qg.0An;
    import 5z.0TC;

    public class 0vE extends 1Mf {

        [Inject]
        public var view:0xA;
        [Inject]
        public var 0n2:0An;
        [Inject]
        public var 1UK:0TC;


        override public function initialize():void{
            this.view.1tf.clicked.addOnce(this.1qf);
        }

        private function 1qf():void{
            this.0n2.dispatch(new this.1UK.caller());
        }


    }
}//package 2--

