// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1C9.1D-

package 1C9{
    import WZ.0Te;
    import 1Bg.1zl;
    import flash.display.Sprite;
    import 1cI.3D;
    import 14V.BM;
    import _1aA.1oj;
    import 1cI.0bm;
    import 1cI.06P;

    public class 1D- {

        [Inject]
        public var model:0Te;
        [Inject]
        public var 21r:1zl;
        [Inject]
        public var view:Sprite;
        [Inject]
        public var ES:3D;
        [Inject]
        public var 1LU:BM;


        public function execute():void{
            if (this.model.qv)
            {
                this.0XF();
            } else
            {
                this.21r.dispatch(this.view);
            };
        }

        private function 0XF():void{
            this.21r.dispatch(new 1oj());
            var _local1:0bm = new 0bm();
            _local1.add(this.1LU);
            _local1.add(new 06P(this.21r, this.view));
            this.ES.add(_local1);
            _local1.start();
        }


    }
}//package 1C9

