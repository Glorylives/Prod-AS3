// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.Uz

package 1PB{
    import 1uF.1Mf;
    import _1aA.Qd;
    import 0y3.0gx;
    import 1Bg.1zl;

    public class Uz extends 1Mf {

        [Inject]
        public var view:Qd;
        [Inject]
        public var servers:0gx;
        [Inject]
        public var 21r:1zl;


        override public function initialize():void{
            this.view.1KG.add(this.0AY);
            this.view.initialize(this.servers.1Gj());
        }

        override public function destroy():void{
            this.view.1KG.remove(this.0AY);
        }

        private function 0AY():void{
            this.21r.dispatch(new TitleView());
        }


    }
}//package 1PB

