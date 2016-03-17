// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.PetFuser

package 0uE{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 0Z-.0U-;
    import 5z.0TC;
    import 0IN.1qO;
    import 5z.0tK;

    public class PetFuser extends Sprite {

        public const 1oD:_1HZ = new _1HZ(String);

        private var 1LD:0U-;
        private var Ba:1w6;
        private var nL:0U-;
        private var state:0TC;

        public function PetFuser(){
            this.1LD = new 0U-();
            this.Ba = 1qO.1Eb();
            this.nL = 1qO.gy();
            super();
            this.1LD.1U7 = true;
            addChild(this.1LD);
            addChild(this.Ba);
            addChild(this.nL);
            this.1LD.1oD.addOnce(this.Ni);
            this.nL.1oD.addOnce(this.St);
        }

        public function initialize(_arg1:0TC):void{
            this.state = _arg1;
            this.Sz(this.state.06h, 0TC.LEFT);
            if (this.state.1lT)
            {
                this.Sz(this.state.1lT, 0TC.RIGHT);
            };
            this.1Fl();
        }

        public function Sz(_arg1:0tK, _arg2:String):void{
            var _local3:0U-;
            if (_arg1)
            {
                _local3 = (((_arg2 == 0TC.LEFT)) ? this.1LD : this.nL);
                _local3.Sz(_arg1);
            };
        }

        private function Ni():void{
            this.1oD.dispatch(0TC.LEFT);
        }

        private function St():void{
            this.1oD.dispatch(0TC.RIGHT);
        }

        public function 1Fl():void{
            if (this.state.0fw())
            {
                this.Ba.1ZU(true);
                this.nL.1ZU(true);
                this.1LD.1ZU(true);
            } else
            {
                this.nL.1ZU((this.state.1lT == null));
                this.1LD.1ZU((this.state.06h == null));
                this.Ba.1ZU(false);
            };
        }


    }
}//package 0uE

