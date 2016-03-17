// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Wn.1ot

package Wn{
    import _Jy._1HZ;
    import gx.1Nb;
    import 5z.zL;
    import tn.0ec;
    import kabam.rotmg.assets.services.0Vx;
    import tn.1iY;

    public class 1ot {

        public const cB:_1HZ = new _1HZ();

        [Inject]
        public var 0j3:1Nb;
        [Inject]
        public var vM:zL;
        [Inject]
        public var 1z8:0ec;
        [Inject]
        public var factory:0Vx;
        public var 1Gz:Boolean = false;
        public var 1Ui:0EB;
        public var M-:int = 0;

        public function 1ot(){
            this.1Ui = new 0EB();
            super();
            this.clear();
        }

        public function clear():void{
            this.1Gz = false;
            this.1Ui.R = 0;
            this.1Ui.0e8 = -1;
        }

        public function 1dD():void{
            if (this.1Gz)
            {
                this.1Gz = false;
            } else
            {
                this.1Ui.R++;
                this.cB.dispatch();
            };
        }

        public function 2Z():Boolean{
            return (!((this.1Ui.0e8 == -1)));
        }

        public function 1FI():void{
            this.clear();
            this.1Ui.name = this.0j3.player.name_;
            var _local1:1iY = this.1z8.7k(this.0j3.player.objectType_).0sP.15c(this.0j3.player.s0);
            this.1Ui.1me = this.factory.makeIcon(_local1.26-, 100, this.0j3.player.getTex1(), this.0j3.player.getTex2());
            this.1Ui.pet = this.vM.1tI();
            this.1Ui.guildName = this.0j3.player.guildName_;
            this.1Ui.ew = this.0j3.player.guildRank_;
            this.1Ui.Zm = this.0j3.player.px.concat();
            this.1Ui.1AM = this.0j3.player.1Wz.concat();
            this.1Ui.1L3 = true;
        }


    }
}//package Wn

