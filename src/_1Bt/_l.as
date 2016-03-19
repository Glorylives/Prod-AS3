// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Bt.l-

package _1Bt{
    import _Jy._1HZ;

import _aq.Account;

import _jH._1wW;

import com.company.assembleegameclient.util._1ze;

import com.company.assembleegameclient.util.offer.Offer;

    public class _l {

        private static const _1eC:int = 2600;
        private static const b1:int = 604800;

        [Inject]
        public var account:Account;
        [Inject]
        public var model:_1wW;
        public var _1ww:_1HZ;
        private var _1gL:Number;
        private var pF:Number;

        public function _l(){
            this._1ww = new _1HZ();
            super();
        }

        public function oN():Boolean{
            return ((this._1FG() > 0));
        }

        public function _1Xs(_arg1:Number):void{
            this._1gL = _arg1;
            this.pF = this._0DP();
        }

        private function _0DP():Number{
            var _local1:Date = new Date();
            return (Math.round((_local1.time * 0.001)));
        }

        public function _1FG():Number{
            return ((this._1gL - (this._0DP() - this.pF)));
        }

        public function _1g6():Number{
            return (((this._0DP() + this._1FG()) - b1));
        }

        public function YV():Number{
            return (Math.ceil(_1ze.ut(this._1FG())));
        }

        public function _9W():Offer{
            var _local1:Offer;
            if (!this.model.Qo)
            {
                return (null);
            };
            for each (_local1 in this.model.Qo.offerList)
            {
                if (_local1.realmGold_ == _1eC)
                {
                    return (_local1);
                };
            };
            return (null);
        }

        public function _1zN():void{
            this._1Xs(-1);
            this._1ww.dispatch();
        }


    }
}//package 1Bt

