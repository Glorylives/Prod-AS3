// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//xk.Lv

package xk{
    import WZ.0Te;
    import 1Cs.ds;
    import 1Bg.1zl;
    import 0Fr.1da;
    import static.ResurrectionView;

    public class Lv {

        [Inject]
        public var model:0Te;
        [Inject]
        public var d7:ds;
        [Inject]
        public var 21r:1zl;
        [Inject]
        public var u3:1da;


        public function execute():void{
            this.u3.info("Resurrect Player");
            this.d7.46();
            this.model.1Lw(true);
            this.21r.dispatch(new ResurrectionView());
        }


    }
}//package xk

