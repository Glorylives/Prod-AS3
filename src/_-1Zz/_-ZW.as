// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Zz.ZW

package 1Zz{
    import 1Bg.1zl;
    import 06v.0do;
    import 0Fr.1da;
    import _1aA.zm;
    import JV.hX;

    public class ZW {

        [Inject]
        public var 21r:1zl;
        [Inject]
        public var domain:0do;
        [Inject]
        public var u3:1da;


        public function execute():void{
            if (this.domain.03R())
            {
                this.fS();
            } else
            {
                this.s5();
            }
        }

        private function fS():void{
            this.21r.dispatch(new zm());
        }

        private function s5():void{
            this.u3.debug("bad domain, deny");
            this.21r.dispatch(new hX());
        }


    }
}//package 1Zz

