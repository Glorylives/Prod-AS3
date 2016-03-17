// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0YY.RX

package 0YY{
    import 5I.Command;
    import 1qg.0io;
    import 5z.25f;
    import 2--.NewAbility;

    public class RX extends Command {

        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 077:25f;
        [Inject]
        public var 1Zb:int;


        override public function execute():void{
            var _local1:NewAbility = new NewAbility(this.077.try (this.1Zb));
            this.0n2.dispatch(_local1);
        }


    }
}//package 0YY

