// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//22T.UseBuyPotionCommand

package 22T{
    import gx.8Q;
    import gx.1z1;
    import 0xo.lZ;
    import 0Fr.1da;
    import 1r4.1T2;
    import com.company.assembleegameclient.objects.Player;
    import 0xo.25Q;
    import com.company.assembleegameclient.parameters.Parameters;
    import _ZS.0ZC;
    import flash.utils.getTimer;

    public class UseBuyPotionCommand {

        [Inject]
        public var vo:8Q;
        [Inject]
        public var 010:1z1;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var u3:1da;
        private var 0iP:1T2;
        private var player:Player;
        private var 0Fx:int;
        private var count:int;
        private var 0NJ:25Q;

        public function UseBuyPotionCommand(){
            this.0iP = 1T2.1hP;
            super();
        }

        public function execute():void{
            this.player = this.11u.ja.map.player_;
            if (this.player == null)
            {
                return;
            };
            this.0Fx = this.vo.objectId;
            this.count = this.player.getPotionCount(this.0Fx);
            this.0NJ = this.010.08L(this.0Fx);
            if ((((this.count > 0)) || (this.wi())))
            {
                this.1IK();
            } else
            {
                this.u3.info("Not safe to purchase potion");
            };
        }

        private function wi():Boolean{
            var _local1 = (this.player.credits_ >= this.0NJ.18j(this.player.getPotionCount(this.0Fx)));
            var _local2:Boolean = Parameters.data_.contextualPotionBuy;
            return (((_local1) && (_local2)));
        }

        private function 1IK():void{
            if (this.3i())
            {
                this.u3.info("UseBuyPotionCommand.execute: User has MAX of that attribute, not requesting a use/buy from server.");
            } else
            {
                this.XA();
                0ZC.play("use_potion");
            };
        }

        private function 3i():Boolean{
            if (this.0Fx == 1z1.0Rl)
            {
                return ((this.player.1VZ >= this.player.ba));
            };
            if (this.0Fx == 1z1.Ww)
            {
                return ((this.player.12a >= this.player.1nC));
            };
            return (false);
        }

        private function XA():void{
            var _local1:int = 1z1.gp(this.vo.objectId);
            var _local2:int = Parameters.data_.contextualPotionBuy;
            this.0iP.useItem(getTimer(), this.player.objectId_, _local1, this.0Fx, this.player.x_, this.player.y_, _local2);
            if (this.player.getPotionCount(this.vo.objectId) == 0)
            {
                this.010.08L(this.vo.objectId).0Xk();
            };
        }


    }
}//package 22T

