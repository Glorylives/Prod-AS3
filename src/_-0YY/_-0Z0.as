﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0YY.0Z0

package 0YY{
    import 1uF.Command;
    import 0qs.J1;
    import 1E8.Rc;
    import 1r4.1T2;
    import yo.1K8;
    import 0IN.h;

    public class 0Z0 extends Command {

        [Inject]
        public var 08K:uint;
        [Inject]
        public var 27M:J1;
        [Inject]
        public var server:Rc;


        override public function execute():void{
            var _local1:1K8 = (this.27M.lh(1T2.e) as 1K8);
            _local1.1su = this.08K;
            _local1.1ug = h.YE;
            this.server.sendMessage(_local1);
        }


    }
}//package 0YY

