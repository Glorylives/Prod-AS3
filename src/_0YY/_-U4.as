// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0YY.U4

package 0YY{
    import 1uF.Command;
    import 5z.zL;
    import 0xo.lZ;
    import 1qg.0io;
    import 2--.1Kc;
    import 5z.0Nx;
    import com.company.assembleegameclient.objects.ObjectLibrary;

    public class U4 extends Command {

        [Inject]
        public var type:int;
        [Inject]
        public var vM:zL;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var 0n2:0io;


        override public function execute():void{
            this.vM.zU(this.72());
            this.0n2.dispatch(new 1Kc(this.11u.ja));
        }

        private function 72():int{
            var _local1:String = 0Nx.1tV(this.type).value;
            return (ObjectLibrary.0vY(_local1).@type);
        }


    }
}//package 0YY

