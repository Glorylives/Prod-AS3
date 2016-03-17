// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//zf.0RM

package zf{
    import 1uF.Command;
    import Wn.1ot;
    import JV.1OM;
    import 1UB.1nU;

    public class 0RM extends Command {

        [Inject]
        public var 0e8:int;
        [Inject]
        public var model:1ot;
        [Inject]
        public var W2:1OM;


        override public function execute():void{
            this.model.1dD();
            this.model.1Ui.0e8 = this.0e8;
            this.W2.1Nd.addChild(new 1nU());
        }


    }
}//package zf

