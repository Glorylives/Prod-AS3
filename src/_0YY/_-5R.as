// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0YY.5R

package 0YY{
    import 1uF.Command;
    import 5z.22-;
    import 0qs.J1;
    import 1E8.Rc;
    import aq.Account;
    import 1qg.0io;
    import 1r4.1kP;
    import 5z.1jA;
    import 1r4.1T2;
    import 5z.1TV;
    import 5z.0Lz;
    import 12X.0KD;

    public class 5R extends Command {

        private static const 0XW:String = "In order to upgrade your yard you must be a registered user.";

        [Inject]
        public var vo:22-;
        [Inject]
        public var 27M:J1;
        [Inject]
        public var server:Rc;
        [Inject]
        public var account:Account;
        [Inject]
        public var 0n2:0io;


        override public function execute():void{
            var _local1:1kP;
            if ((this.vo is 1jA))
            {
                if (!this.account.0D3())
                {
                    this.S8(0XW);
                }
                _local1 = (this.27M.lh(1T2.sn) as 1kP);
                _local1.25d = 1;
                _local1.objectId = 1jA(this.vo).3y;
                _local1.0m1 = 1jA(this.vo).0m1;
            }
            if ((this.vo is 1TV))
            {
                _local1 = (this.27M.lh(1T2.sn) as 1kP);
                _local1.25d = 2;
                _local1.0Hb = 1TV(this.vo).petInstanceId;
                _local1.0qR = 1TV(this.vo).0qR;
                _local1.0m1 = 1TV(this.vo).0m1;
            }
            if ((this.vo is 0Lz))
            {
                _local1 = (this.27M.lh(1T2.sn) as 1kP);
                _local1.25d = 3;
                _local1.0Hb = 0Lz(this.vo).FS;
                _local1.f = 0Lz(this.vo).0C-;
                _local1.0m1 = 0Lz(this.vo).0m1;
            }
            if (_local1)
            {
                this.server.sendMessage(_local1);
            }
        }

        private function S8(_arg1:String):void{
            this.0n2.dispatch(new 0KD(_arg1));
        }


    }
}//package 0YY

