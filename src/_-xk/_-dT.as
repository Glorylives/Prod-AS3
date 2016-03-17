// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//xk.dT

package xk{
    import 1qg.0io;
    import 1qg.iU;
    import 0Fr.1da;
    import static.ZombifyDialog;

    public class dT {

        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 0q1:iU;
        [Inject]
        public var u3:1da;


        public function execute():void{
            this.u3.info("Zombify Player");
            this.0n2.dispatch(new ZombifyDialog());
            this.0q1.dispatch(0x3300);
        }


    }
}//package xk

