// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.PetFeeder

package _0uE{
import _0IN._1qO;

import _0Z._0U;

import flash.display.Sprite;
    import _Jy._1HZ;
    import _5z._0tK;

    public class PetFeeder extends Sprite {

        public const _1oD:_1HZ = new _1HZ();
        public const _1Ua:_1HZ = new _1HZ(Boolean, _0tK);
        public const _1KD:_1HZ = new _1HZ(_0tK);

        private var _1LD:_0U;
        private var Ba:_1w6;
        private var nL:_0YK;
        private var state:_0TC;

        public function PetFeeder(){
            this._1LD = new _0U();
            this.Ba = _1qO._1Eb();
            this.nL = _1qO._1Vt();
            super();
            addChild(this._1LD);
            addChild(this.Ba);
            addChild(this.nL);
            this._1LD._1oD.addOnce(this._21K);
            this.nL.Ma.add(this.0JJ);
            this.nL._1F3.add(this.1oq);
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
            }
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
            }
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
            }
        }


    }
}//package 0uE

