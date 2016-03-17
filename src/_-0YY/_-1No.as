// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0YY.1No

package 0YY{
    import 5I.Command;
    import 1qg.0io;
    import 1r4.0nf;
    import _0OG._22M;
    import 1dX.EvolveDialog;

    public class 1No extends Command {

        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 0IG:0nf;
        [Inject]
        public var kf:_22M;


        override public function execute():void{
            var _local1:EvolveDialog = this.kf.getInstance(EvolveDialog);
            this.0n2.dispatch(_local1);
            _local1.yv.0QP(this.0IG);
        }


    }
}//package 0YY

