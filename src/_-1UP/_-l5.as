// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UP.l5

package 1UP{
    import 1cI.1iz;
    import _0BB.Fu;
    import 1qg.0io;
    import 0sk.26Z;
    import 1qQ.0Uh;
    import flash.utils.getTimer;
    import 0sk.BZ;
    import __AS3__.vec.Vector;
    import 0sk.1Of;
    import 1t6.ErrorDialog;
    import __AS3__.vec.*;

    public class l5 extends 1iz implements 0cw {

        private static const OF:int = 600;

        [Inject]
        public var client:Fu;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var model:26Z;
        [Inject]
        public var 0ur:0Uh;
        private var 06g:int = -1;
        private var 0Bg:int = 0;
        private var 1zm:int = 600;


        override protected function startTask():void{
            this.0Bg++;
            if ((((this.06g == -1)) || (((this.06g + this.1zm) < (getTimer() / 1000)))))
            {
                this.06g = (getTimer() / 1000);
                this.client.complete.addOnce(this.onComplete);
                this.client.sendRequest("/app/globalNews", {language:this.0ur.1Jp()});
            } else
            {
                1d5(true);
                reset();
            };
            if (((((!(("production".toLowerCase() == "dev"))) && (!((this.1zm == 0))))) && ((this.0Bg >= 2))))
            {
                this.1zm = 0;
            };
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.0be(_arg2);
            } else
            {
                this.fb(_arg2);
            };
            1d5(_arg1, _arg2);
            reset();
        }

        private function 0be(_arg1:String):void{
            var _local4:Object;
            var _local2:Vector.<BZ> = new Vector.<BZ>();
            var _local3:Object = JSON.parse(_arg1);
            for each (_local4 in _local3)
            {
                _local2.push(this.4I(_local4));
            };
            this.model.0cO(_local2);
        }

        private function 4I(_arg1:Object):BZ{
            var _local2:BZ = new BZ();
            _local2.0iC = _arg1.title;
            _local2.bz = _arg1.image;
            _local2.linkDetail = _arg1.linkDetail;
            _local2.14s = Number(_arg1.startTime);
            _local2.1Om = Number(_arg1.endTime);
            _local2.linkType = 1Of.parse(_arg1.linkType);
            _local2.0Rv = String(_arg1.platform).split(",");
            _local2.priority = uint(_arg1.priority);
            _local2.slot = uint(_arg1.slot);
            return (_local2);
        }

        private function fb(_arg1:String):void{
            this.0n2.dispatch(new ErrorDialog("Unable to get news data."));
        }


    }
}//package 1UP

