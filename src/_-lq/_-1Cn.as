// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//lq.1Cn

package lq{
    import 1uF.Command;
    import 1cI.3D;
    import _0OG._22M;
    import 1cI.0bm;
    import 0D5.G8;
    import 1cI.06P;

    public class 1Cn extends Command {

        [Inject]
        public var 252:3D;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var 0B7:117;


        override public function execute():void{
            var _local1:0bm = new 0bm();
            _local1.add(this.kf.getInstance(G8));
            _local1.add(new 06P(this.0B7));
            this.252.add(_local1);
            _local1.start();
        }


    }
}//package lq

