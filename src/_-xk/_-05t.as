// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//xk.05t

package xk{
    import 1zG.1wd;
    import WZ.0Te;
    import 1Bg.fQ;
    import 14V.BM;
    import kY.0v-;
    import 1cI.3D;
    import 0ci.23T;
    import 0ci.H9;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import 1fx.1Zh;
    import com.company.assembleegameclient.parameters.Parameters;
    import 1cI.0bm;
    import 1cI.06P;

    public class 05t {

        [Inject]
        public var death:1wd;
        [Inject]
        public var player:0Te;
        [Inject]
        public var Ud:fQ;
        [Inject]
        public var 1LU:BM;
        [Inject]
        public var En:0v-;
        [Inject]
        public var ES:3D;
        private var 1rQ:23T;


        public function execute():void{
            this.1rQ = new H9(this.death.accountId_, this.death.charId_);
            this.0Y8();
            this.IX();
            this.Ra();
        }

        private function 0Y8():void{
            var _local1:SavedCharacter = this.player.0mo(this.death.charId_);
            var _local2:int = ((_local1) ? _local1.level() : 0);
            var _local3:1Zh = new 1Zh();
            _local3.category = "killedBy";
            _local3.1D9 = this.death.killedBy_;
            _local3.value = _local2;
            this.Ud.dispatch(_local3);
        }

        private function IX():void{
            Parameters.data_.needsRandomRealm = false;
            Parameters.save();
        }

        private function Ra():void{
            if (this.player.0YA() == "")
            {
                this.1Px();
            } else
            {
                this.En.dispatch(this.1rQ);
            }
        }

        private function 1Px():void{
            var _local1:0bm = new 0bm();
            _local1.add(this.1LU);
            _local1.add(new 06P(this.En, this.1rQ));
            this.ES.add(_local1);
            _local1.start();
        }


    }
}//package xk

