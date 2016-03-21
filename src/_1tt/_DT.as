// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1tt.DT

package _1tt{
    import _1cI._1iz;

import _1qQ._0Uh;

import flash.utils.Timer;
    import _0BB._Fu;
    import _aq.Account;
    import _0Fr._1da;
    import flash.events.TimerEvent;
    import _0wP._kM;

    public class _DT extends _1iz {

        private static const _0sh:int = ((1000 * 60) * 60);//3600000

        public var timer:Timer;
        [Inject]
        public var client:_Fu;
        [Inject]
        public var _2M:_0jv;
        [Inject]
        public var account:Account;
        [Inject]
        public var u3:_1da;
        [Inject]
        public var _0ur:_0Uh;

        public function _DT(){
            this.timer = new Timer(_0sh);
            super();
        }

        override protected function startTask():void{
            var _local1:Object = this.account._1Y();
            _local1.language = this._0ur._1Jp();
            this.client.sendRequest("/package/getPackages", _local1);
            this.client.complete.addOnce(this.onComplete);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this._0dg(_arg2);
            } else
            {
                this.u3._0K("GetPackageTask.onComplete: Request failed.");
                _1d5(false);
            }
        }

        private function _0dg(_arg1):void{
            var _local2:XML;
            if (this._0D1(_arg1))
            {
                this.u3.info("GetPackageTask.onComplete: No package available, retrying in 1 hour.");
                this.timer.addEventListener(TimerEvent.TIMER, this._0cR);
                this.timer.start();
                this._2M.sZ([]);
            } else
            {
                _local2 = XML(_arg1);
                this.parse(_local2);
            }
            _1d5(true);
        }

        private function _0D1(_arg1):Boolean{
            var _local2:XMLList = XML(_arg1).Packages;
            var _local3 = (_local2.length() == 0);
            return (_local3);
        }

        private function parse(_arg1:XML):void{
            var _local3:XML;
            var _local4:int;
            var _local5:String;
            var _local6:int;
            var _local7:int;
            var _local8:int;
            var _local9:int;
            var _local10:Date;
            var _local11:String;
            var _local12:int;
            var _local13:_kM;
            var _local2:Array = [];
            for each (_local3 in _arg1.Packages.Package)
            {
                _local4 = int(_local3.@id);
                _local5 = String(_local3.Name);
                _local6 = int(_local3.Price);
                _local7 = int(_local3.Quantity);
                _local8 = int(_local3.MaxPurchase);
                _local9 = int(_local3.Weight);
                _local10 = new Date(String(_local3.EndDate));
                _local11 = String(_local3.BgURL);
                _local12 = this._0CP(_arg1, _local4);
                _local13 = new _kM();
                _local13.Va(_local4, _local10, _local5, _local7, _local8, _local9, _local6, _local11, _local12);
                _local2.push(_local13);
            }
            this._2M.sZ(_local2);
        }

        private function _0CP(_arg1:XML, _arg2:int):int{
            var packageHistory:XMLList;
            var packagesXML:XML = _arg1;
            var packageID:int = _arg2;
            var numPurchased:int;
            var history:XMLList = packagesXML.History;
            if (history)
            {
                packageHistory = history.Package.(@id == packageID);
                if (packageHistory)
                {
                    numPurchased = int(packageHistory.Count);
                }
            }
            return (numPurchased);
        }

        private function _0cR(_arg1:TimerEvent):void{
            this.timer.removeEventListener(TimerEvent.TIMER, this._0cR);
            this.timer.stop();
            this.startTask();
        }


    }
}//package 1tt

