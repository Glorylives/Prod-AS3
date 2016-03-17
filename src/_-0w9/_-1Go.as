// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0w9.1Go

package 0w9{
    import aq.0VE;
    import 14V.0WB;
    import 1cI.3D;
    import 1Bt.l-;
    import dq.fB;

    public class 1Go {

        [Inject]
        public var data:0VE;
        [Inject]
        public var 1LU:0WB;
        [Inject]
        public var ES:3D;
        [Inject]
        public var model:l-;
        [Inject]
        public var init:fB;


        public function execute():void{
            this.ES.add(this.1LU);
            this.1LU.start();
            this.model.1zN();
            this.init.dispatch();
        }


    }
}//package 0w9

