// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1YL.1tb

package 1YL{
    import 1uF.1Mf;
    import go.0kt;
    import go.o8;
    import go.1Gu;
    import go.06U;

    public class 1tb extends 1Mf {

        [Inject]
        public var view:YU;
        [Inject]
        public var 0rS:0kt;
        [Inject]
        public var show:o8;
        [Inject]
        public var hide:1Gu;
        [Inject]
        public var remove:06U;


        override public function initialize():void{
            this.remove.add(this.1UV);
            this.0rS.add(this.0SG);
            this.show.add(this.vq);
            this.hide.add(this.W4);
            this.view.visible = false;
        }

        override public function destroy():void{
            this.remove.remove(this.1UV);
            this.0rS.remove(this.0SG);
            this.show.remove(this.vq);
            this.hide.remove(this.W4);
        }

        private function 1UV():void{
            this.view.parent.removeChild(this.view);
        }

        private function 0SG():void{
            this.view.visible = !(this.view.visible);
        }

        private function vq():void{
            this.view.visible = true;
        }

        private function W4():void{
            this.view.visible = false;
        }


    }
}//package 1YL

