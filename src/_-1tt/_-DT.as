// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1tt.DT

package 1tt{
    import 1cI.1iz;
    import flash.utils.Timer;
    import _0BB._Fu;
    import aq.Account;
    import 0Fr.1da;
    import 1qQ.0Uh;
    import flash.events.TimerEvent;
    import 0wP.kM;

    public class DT extends 1iz {

        private static const 0sh:int = ((1000 * 60) * 60);//3600000

        public var timer:Timer;
        [Inject]
        public var client:_Fu;
        [Inject]
        public var 2M:0jv;
        [Inject]
        public var account:Account;
        [Inject]
        public var u3:1da;
        [Inject]
        public var 0ur:0Uh;

        public function DT(){
            this.timer = new Timer(0sh);
            super();
        }

        override protected function startTask():void{
            var _local1:Object = this.account.1Y();
            _local1.language = this.0ur.1Jp();
            this.client.sendRequest("/package/getPackages", _local1);
            this.client.complete.addOnce(this.onComplete);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.0dg(_arg2);
            } else
            {
                this.u3.0K("GetPackageTask.onComplete: Request failed.");
                1d5(false);
            }
        }

        private function 0dg(_arg1):void{
            var _local2:XML;
            if (this.0D1(_arg1))
            {
                this.u3.info("GetPackageTask.onComplete: No package available, retrying in 1 hour.");
                this.timer.addEventListener(TimerEvent.TIMER, this.0cR);
                this.timer.start();
                this.2M.sZ([]);
            } else
            {
                _local2 = XML(_arg1);
                this.parse(_local2);
            }
            1d5(true);
        }

        private function 0D1(_arg1):Boolean{
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
            var _local13:kM;
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
                _local12 = this.0CP(_arg1, _local4);
                _local13 = new kM();
                _local13.Va(_local4, _local10, _local5, _local7, _local8, _local9, _local6, _local11, _local12);
                _local2.push(_local13);
            }
            this.2M.sZ(_local2);
        }

        private function 0CP(_arg1:XML, _arg2:int):int{
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

        private function 0cR(_arg1:TimerEvent):void{
            this.timer.removeEventListener(TimerEvent.TIMER, this.0cR);
            this.timer.stop();
            this.startTask();
        }


    }
}//package 1tt

