// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0s4.1CI

package 0s4{
    import JV.1OM;
    import 0Oi.nI;
    import 1cW.08S;

    public class 1CI {

        [Inject]
        public var W2:1OM;
        [Inject]
        public var view:nI;
        [Inject]
        public var model:08S;


        public function execute():void{
            this.view.BR(this.model.1CN());
            this.W2.0sw.addChild(this.view);
        }


    }
}//package 0s4

