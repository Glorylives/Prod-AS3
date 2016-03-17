// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//21k.3j

package 21k{
    import 1uF.Command;
    import 5z.1Vb;
    import 1E8.Rc;
    import 0qs.J1;
    import 5z.0OH;
    import 1r4.19D;
    import 1r4.1T2;

    public class 3j extends Command {

        [Inject]
        public var vo:1Vb;
        [Inject]
        public var 1GI:Rc;
        [Inject]
        public var 27M:J1;
        [Inject]
        public var SO:0OH;


        override public function execute():void{
            var _local1:19D;
            _local1 = (this.27M.lh(1T2.4W) as 19D);
            _local1.petInstanceId = this.SO.0Qq().try ();
            _local1.pickedNewPetType = this.SO.1-u(this.SO.05i());
            _local1.item = this.SO.Ey;
            this.1GI.sendMessage(_local1);
        }


    }
}//package 21k

