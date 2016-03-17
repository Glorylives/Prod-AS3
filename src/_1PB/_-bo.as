// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.bo

package 1PB{
    import 1uF.1Mf;
    import _1aA.24C;
    import 1Bg.1zl;

    public class bo extends 1Mf {

        [Inject]
        public var view:24C;
        [Inject]
        public var 21r:1zl;


        override public function initialize():void{
            this.view.close.add(this.0X9);
            this.view.initialize();
        }

        override public function destroy():void{
            this.view.close.remove(this.0X9);
        }

        private function 0X9():void{
            this.21r.dispatch(new TitleView());
        }


    }
}//package 1PB

