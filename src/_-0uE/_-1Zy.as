// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.1Zy

package 0uE{
    import 1uF.1Mf;
    import 1qg.11S;

    public class 1Zy extends 1Mf {

        [Inject]
        public var view:KC;
        [Inject]
        public var 1tT:11S;


        override public function initialize():void{
            this.view.clicked.addOnce(this.KW);
        }

        private function KW():void{
            this.1tT.dispatch();
        }


    }
}//package 0uE

