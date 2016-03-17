// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kY.0tk

package kY{
    import 0ci.23T;
    import 0ci.1WK;
    import 1Bg.1zl;
    import 1m5.FameView;

    public class 0tk {

        [Inject]
        public var vo:23T;
        [Inject]
        public var model:1WK;
        [Inject]
        public var 21r:1zl;


        public function execute():void{
            this.model.accountId = this.vo.0YA();
            this.model.iV = this.vo.22e();
            this.21r.dispatch(new FameView());
        }


    }
}//package kY

