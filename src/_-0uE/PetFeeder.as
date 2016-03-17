// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.PetFeeder

package 0uE{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 5z.0tK;
    import 0Z-.0U-;
    import 0Z-.0YK;
    import 5z.0TC;
    import 0IN.1qO;

    public class PetFeeder extends Sprite {

        public const 1oD:_1HZ = new _1HZ();
        public const 1Ua:_1HZ = new _1HZ(Boolean, 0tK);
        public const 1KD:_1HZ = new _1HZ(0tK);

        private var 1LD:0U-;
        private var Ba:1w6;
        private var nL:0YK;
        private var state:0TC;

        public function PetFeeder(){
            this.1LD = new 0U-();
            this.Ba = 1qO.1Eb();
            this.nL = 1qO.1Vt();
            super();
            addChild(this.1LD);
            addChild(this.Ba);
            addChild(this.nL);
            this.1LD.1oD.addOnce(this.21K);
            this.nL.Ma.add(this.0JJ);
            this.nL.1F3.add(this.1oq);
        }

        public function initialize(_arg1:0TC):void{
            this.state = _arg1;
            this.Sz(this.state.06h);
            this.update();
        }

        public function Sz(_arg1:0tK):void{
            this.1LD.Sz(_arg1);
            if (_arg1)
            {
                this.1KD.dispatch(_arg1);
            };
        }

        public function 0Ng():void{
            this.state.1f0 = -1;
            this.state.n- = -1;
            this.state.26l = -1;
            this.nL.0Ve();
            this.update();
        }

        private function 1oq():void{
            this.state.1f0 = -1;
            this.state.n- = -1;
            this.state.26l = -1;
            this.update();
        }

        private function 0JJ(_arg1:int):void{
            this.state.1f0 = _arg1;
            this.update();
        }

        private function update():void{
            this.1Fl();
            this.1Ua.dispatch(this.state.uY(), this.state.06h);
        }

        private function 21K():void{
            this.1oD.dispatch();
        }

        public function 1Fl():void{
            if (this.state.uY())
            {
                this.Ba.1ZU(true);
                this.nL.1ZU(true);
                this.1LD.1ZU(true);
            } else
            {
                this.nL.1ZU((this.state.1f0 == -1));
                this.1LD.1ZU((this.state.06h == null));
                this.Ba.1ZU(false);
            };
        }

        public function dm(_arg1:Boolean):void{
            this.nL.dm(_arg1);
            this.1LD.dm(_arg1);
            if (_arg1)
            {
                this.Ba.1ZU(false);
                this.nL.1ZU(false);
                this.1LD.1ZU(false);
            } else
            {
                this.update();
            };
        }


    }
}//package 0uE

