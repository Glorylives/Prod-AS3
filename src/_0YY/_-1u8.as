// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0YY.1u8

package 0YY{
    import 5I.Command;
    import 0qs.J1;
    import 1E8.Rc;
    import 1r4.1T2;
    import yo.1K8;
    import 0IN.h;

    public class 1u8 extends Command {

        [Inject]
        public var 27M:J1;
        [Inject]
        public var server:Rc;
        [Inject]
        public var 08K:int;


        override public function execute():void{
            var _local1:1K8 = (this.27M.lh(1T2.e) as 1K8);
            _local1.1su = this.08K;
            _local1.1ug = h.12L;
            this.server.sendMessage(_local1);
        }


    }
}//package 0YY

