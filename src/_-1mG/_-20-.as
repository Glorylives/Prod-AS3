// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1mG.20-

package 1mG{
    import 1cI.1iz;
    import _0BB._Fu;
    import WZ.0Te;
    import 8u.56;
    import 8u.18i;
    import 8u.Timespan;
    import __AS3__.vec.Vector;
    import 8u.1QY;

    public class 20- extends 1iz {

        [Inject]
        public var client:_Fu;
        [Inject]
        public var player:0Te;
        [Inject]
        public var model:56;
        [Inject]
        public var factory:18i;
        [Inject]
        public var timespan:Timespan;
        public var charId:int;


        override protected function startTask():void{
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/fame/list", this.0J4());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            ((_arg1) && (this.1n-(_arg2)));
            1d5(_arg1, _arg2);
        }

        private function 1n-(_arg1:String):void{
            var _local2:Vector.<1QY> = this.factory.1Jh(XML(_arg1));
            this.model.0kH(_local2);
        }

        private function 0J4():Object{
            var _local1:Object = {}
            _local1.timespan = this.timespan.67();
            _local1.accountId = this.player.0YA();
            _local1.charId = this.charId;
            return (_local1);
        }


    }
}//package 1mG

