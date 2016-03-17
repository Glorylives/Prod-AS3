// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Mo.sz

package 0Mo{
    import gx.1Nb;
    import tn.0ec;
    import kabam.rotmg.assets.services.0Vx;
    import com.company.assembleegameclient.objects.Player;
    import tn.0dE;
    import tn.1iY;
    import yo.1I8;

    public class sz {

        [Inject]
        public var model:1Nb;
        [Inject]
        public var classes:0ec;
        [Inject]
        public var factory:0Vx;


        public function execute(_arg1:1I8):void{
            var _local2:Player;
            var _local3:int;
            var _local4:0dE;
            _local2 = ((_arg1.player) || (this.model.player));
            _local3 = _arg1.skinID;
            _local4 = this.classes.7k(_local2.objectType_);
            var _local5:1iY = _local4.0sP.15c(_local3);
            _local2.s0 = _local3;
            _local2.skin = this.factory.1hi(_local5.26-);
            _local2.13O = false;
        }


    }
}//package 0Mo

