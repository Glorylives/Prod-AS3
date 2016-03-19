// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Wn.1ot

package _Wn{
    import _Jy._1HZ;
    import _gx._1Nb;
    import _5z._zL;
    import _tn._0ec;
    import kabam.rotmg.assets.services._0Vx;
    import _tn._1iY;

    public class _1ot {

        public const cB:_1HZ = new _1HZ();

        [Inject]
        public var _0j3:_1Nb;
        [Inject]
        public var vM:_zL;
        [Inject]
        public var _1z8:_0ec;
        [Inject]
        public var factory:_0Vx;
        public var _1Gz:Boolean = false;
        public var _1Ui:_0EB;
        public var _M:int = 0;

        public function _1ot(){
            this._1Ui = new _0EB();
            super();
            this.clear();
        }

        public function clear():void{
            this._1Gz = false;
            this._1Ui.R = 0;
            this._1Ui._0e8 = -1;
        }

        public function _1dD():void{
            if (this._1Gz)
            {
                this._1Gz = false;
            } else
            {
                this._1Ui.R++;
                this.cB.dispatch();
            };
        }

        public function _2Z():Boolean{
            return (!((this._1Ui._0e8 == -1)));
        }

        public function _1FI():void{
            this.clear();
            this._1Ui.name = this._0j3.player.name_;
            var _local1:_1iY = this._1z8._7k(this._0j3.player.objectType_)._0sP._15c(this._0j3.player.s0);
            this._1Ui._1me = this.factory.makeIcon(_local1._26, 100, this._0j3.player.getTex1(), this._0j3.player.getTex2());
            this._1Ui.pet = this.vM._1tI();
            this._1Ui.guildName = this._0j3.player.guildName_;
            this._1Ui.ew = this._0j3.player.guildRank_;
            this._1Ui.Zm = this._0j3.player.px.concat();
            this._1Ui._1AM = this._0j3.player._1Wz.concat();
            this._1Ui._1L3 = true;
        }


    }
}//package Wn

