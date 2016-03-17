// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1dX.2y

package 1dX{
    import flash.display.Sprite;
    import flash.display.DisplayObject;
    import kabam.rotmg.assets.0EP;
    import 0uE.0Gd;
    import _0OG._22M;
    import 0uE.Py;
    import 1r4.0nf;
    import 5z.0tK;

    public class 2y extends Sprite {

        public const background:DisplayObject = new 0EP.EvolveBackground();
        public const 1uL:DisplayObject = new 0EP.EvolveBackground();

        [Inject]
        public var sB:0Gd;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var 1wB:05h;
        public var 1WZ:Py;
        public var 21C:1py;
        private var 0IG:0nf;

        public function 2y(){
            addChild(this.background);
            addChild(this.1uL);
        }

        public function 0QP(_arg1:0nf):void{
            this.sB.0YD = 6;
            this.0IG = _arg1;
            this.0R3(_arg1.1WZ);
            this.08X(_arg1.0M3);
            addChild(this.1wB);
            this.1wB.1FW.addOnce(this.0Yt);
            this.1wB.play();
        }

        public function ep():0nf{
            return (this.0IG);
        }

        private function 08X(_arg1:0tK):void{
            this.21C = this.kf.getInstance(1py);
            this.21C.Sz(_arg1);
            this.21C.mask = this.1uL;
            this.21C.x = (this.background.width / 2);
            this.21C.y = (this.background.height / 2);
        }

        private function 0R3(_arg1:0tK):void{
            this.1WZ = this.sB.create(_arg1, 100);
            this.1WZ.x = ((this.background.width - this.1WZ.width) / 2);
            this.1WZ.y = ((this.background.height - this.1WZ.height) / 2);
            addChild(this.1WZ);
        }

        private function 0Yt():void{
            removeChild(this.1WZ);
            addChildAt(this.21C, getChildIndex(this.1wB));
        }


    }
}//package 1dX

