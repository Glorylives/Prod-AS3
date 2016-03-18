// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.Ga

package BG{
    import 1uF.1Mf;
    import _ZE.PortalPanel;
    import 0UV.1P9;

    public class Ga extends 1Mf {

        [Inject]
        public var view:PortalPanel;
        [Inject]
        public var 0n:1P9;


        override public function initialize():void{
            this.view.0n.add(this.gf);
        }

        private function gf():void{
            this.0n.dispatch();
        }

        override public function destroy():void{
            this.view.0n.remove(this.gf);
        }


    }
}//package BG

