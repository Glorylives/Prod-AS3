// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//22T.wX

package 22T{
    import 1Bg.1zl;
    import gx.1KE;
    import WZ.0Te;
    import 5z.zL;
    import 0y3.0gx;
    import 14V.BM;
    import 1cI.3D;
    import 1E8.0M1;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import com.company.assembleegameclient.parameters.Parameters;
    import 0y3.Server;
    import flash.utils.ByteArray;
    import com.company.assembleegameclient.game.GameSprite;

    public class wX {

        public static const 7t:int = 2000;

        [Inject]
        public var 21r:1zl;
        [Inject]
        public var data:1KE;
        [Inject]
        public var model:0Te;
        [Inject]
        public var 1G5:zL;
        [Inject]
        public var servers:0gx;
        [Inject]
        public var 1LU:BM;
        [Inject]
        public var ES:3D;
        [Inject]
        public var 1tP:0M1;


        public function execute():void{
            if (!this.data.0iT)
            {
                this.1tP.11A = wX.7t;
            }
            this.ar();
            this.Pc();
            this.Xz();
        }

        private function Xz():void{
            var _local1:SavedCharacter = this.model.zO(this.model.1IA);
            if (_local1)
            {
                this.1G5.0mj(_local1.getPetVO());
            } else
            {
                if (((((this.model.1IA) && (this.1G5.1tI()))) && (!(this.data.0iT))))
                {
                    return;
                }
                this.1G5.0mj(null);
            }
        }

        private function ar():void{
            Parameters.data_.charIdUseMap[this.data.charId] = new Date().getTime();
            Parameters.save();
        }

        private function Pc():void{
            var _local1:Server = ((this.data.server) || (this.servers.Zz()));
            var _local2:int = ((this.data.0iT) ? this.1tM() : this.data.gameId);
            var _local3:Boolean = this.data.19j;
            var _local4:int = this.data.charId;
            var _local5:int = ((this.data.0iT) ? -1 : this.data.0Pq);
            var _local6:ByteArray = this.data.key;
            this.model.1IA = _local4;
            this.21r.dispatch(new GameSprite(_local1, _local2, _local3, _local4, _local5, _local6, this.model, null, this.data.0L0));
        }

        private function 1tM():int{
            var _local1:int;
            if (Parameters.data_.needsTutorial)
            {
                _local1 = Parameters.1HD;
            } else
            {
                if (Parameters.data_.needsRandomRealm)
                {
                    _local1 = Parameters.0AM;
                } else
                {
                    _local1 = Parameters.1rc;
                }
            }
            return (_local1);
        }


    }
}//package 22T

