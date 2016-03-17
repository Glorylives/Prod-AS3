// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Bt.l-

package 1Bt{
    import aq.Account;
    import jH.1wW;
    import _Jy._1HZ;
    import com.company.assembleegameclient.util.1ze;
    import com.company.assembleegameclient.util.offer.Offer;

    public class l- {

        private static const 1eC:int = 2600;
        private static const b1:int = 604800;

        [Inject]
        public var account:Account;
        [Inject]
        public var model:1wW;
        public var 1ww:_1HZ;
        private var 1gL:Number;
        private var pF:Number;

        public function l-(){
            this.1ww = new _1HZ();
            super();
        }

        public function oN():Boolean{
            return ((this.1FG() > 0));
        }

        public function 1Xs(_arg1:Number):void{
            this.1gL = _arg1;
            this.pF = this.0DP();
        }

        private function 0DP():Number{
            var _local1:Date = new Date();
            return (Math.round((_local1.time * 0.001)));
        }

        public function 1FG():Number{
            return ((this.1gL - (this.0DP() - this.pF)));
        }

        public function 1g6():Number{
            return (((this.0DP() + this.1FG()) - b1));
        }

        public function YV():Number{
            return (Math.ceil(1ze.ut(this.1FG())));
        }

        public function 9W():Offer{
            var _local1:Offer;
            if (!this.model.Qo)
            {
                return (null);
            };
            for each (_local1 in this.model.Qo.offerList)
            {
                if (_local1.realmGold_ == 1eC)
                {
                    return (_local1);
                };
            };
            return (null);
        }

        public function 1zN():void{
            this.1Xs(-1);
            this.1ww.dispatch();
        }


    }
}//package 1Bt

