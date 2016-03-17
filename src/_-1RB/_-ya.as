// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1RB.ya

package 1RB{
    import 1uF.1Mf;
    import 8u.56;
    import 1Cs.ds;
    import kY.0v-;
    import Kb.Oe;
    import Kb.j4;
    import Kb.1i1;
    import 1Bg.0EO;
    import 8u.Timespan;
    import 8u.1QY;

    public class ya extends 1Mf {

        [Inject]
        public var view:aU;
        [Inject]
        public var model:56;
        [Inject]
        public var d7:ds;
        [Inject]
        public var ed:0v-;
        [Inject]
        public var 1Rq:Oe;
        [Inject]
        public var update:j4;
        [Inject]
        public var exit:1i1;
        [Inject]
        public var Ud:0EO;


        override public function initialize():void{
            this.Ud.dispatch("/legendsScreen");
            this.view.close.add(this.D2);
            this.view.4N.add(this.w3);
            this.view.1Bk.add(this.0a);
            this.update.add(this.1xk);
            this.w3(this.model.0A());
        }

        private function D2():void{
            this.exit.dispatch();
        }

        override public function destroy():void{
            this.view.close.remove(this.D2);
            this.view.4N.remove(this.w3);
            this.view.1Bk.remove(this.0a);
            this.update.remove(this.1xk);
            this.d7.46();
            this.model.clear();
        }

        private function w3(_arg1:Timespan):void{
            this.model.0lj(_arg1);
            if (this.model.0aY())
            {
                this.1xk();
            } else
            {
                this.1tX();
            };
        }

        private function 1tX():void{
            this.view.clear();
            this.view.0Hk();
            this.1Rq.dispatch(this.model.0A());
        }

        private function 1xk(_arg1:Timespan=null):void{
            _arg1 = ((_arg1) || (this.model.0A()));
            this.view.1Pi();
            this.view.RU(_arg1, this.model.0tw());
        }

        private function 0a(_arg1:1QY):void{
            this.ed.dispatch(_arg1);
        }


    }
}//package 1RB

