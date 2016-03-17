// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Y6.Tm

package 1Y6{
    import 1uF.1Mf;
    import flash.display.DisplayObjectContainer;
    import 0Qa.0Vr;
    import 0Fr.1da;
    import flash.display.LoaderInfo;
    import flash.events.IEventDispatcher;
    import flash.events.ErrorEvent;

    public class Tm extends 1Mf {

        private const ii:String = "uncaughtErrorEvents";
        private const bn:String = "uncaughtError";

        [Inject]
        public var 0X0:DisplayObjectContainer;
        [Inject]
        public var error:0Vr;
        [Inject]
        public var u3:1da;
        private var loaderInfo:LoaderInfo;


        override public function initialize():void{
            this.loaderInfo = this.0X0.loaderInfo;
            if (this.158())
            {
                this.1nM();
            };
        }

        override public function destroy():void{
            if (this.158())
            {
                this.dE();
            };
        }

        private function 158():Boolean{
            return (this.loaderInfo.hasOwnProperty(this.ii));
        }

        private function 1nM():void{
            var _local1:IEventDispatcher = IEventDispatcher(this.loaderInfo[this.ii]);
            _local1.addEventListener(this.bn, this.HD);
        }

        private function dE():void{
            var _local1:IEventDispatcher = IEventDispatcher(this.loaderInfo[this.ii]);
            _local1.removeEventListener(this.bn, this.HD);
        }

        private function HD(_arg1:ErrorEvent):void{
            this.error.dispatch(_arg1);
        }


    }
}//package 1Y6

