// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//dq.1un

package dq{
    import 1uF.Command;
    import 1qg.0io;
    import 1tt.0jv;
    import 0wP.kM;
    import TN.PackageOfferDialog;

    public class 1un extends Command {

        [Inject]
        public var 1qM:0io;
        [Inject]
        public var 2M:0jv;
        [Inject]
        public var packageId:int;
        [Inject]
        public var 0Em:Xe;


        override public function execute():void{
            var _local1:kM;
            if (this.2M.1X7(this.packageId))
            {
                _local1 = this.2M.0Si(this.packageId);
                this.1qM.dispatch(new PackageOfferDialog().setPackage(_local1));
            } else
            {
                this.0Em.dispatch();
            };
        }


    }
}//package dq

