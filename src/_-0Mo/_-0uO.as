// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Mo.0uO

package 0Mo{
    import tn.1iY;
    import 0qs.J1;
    import 1E8.Rc;
    import 1r4.1T2;
    import yo.1I8;

    public class 0uO {

        [Inject]
        public var skin:1iY;
        [Inject]
        public var 27M:J1;
        [Inject]
        public var server:Rc;


        public function execute():void{
            var _local1:1I8 = (this.27M.lh(1T2.RESKIN) as 1I8);
            _local1.skinID = this.skin.id;
            this.server.sendMessage(_local1);
        }


    }
}//package 0Mo

