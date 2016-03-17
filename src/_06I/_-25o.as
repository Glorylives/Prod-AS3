// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//06I.25o

package 06I{
    import flash.events.Event;
    import flash.display.DisplayObjectContainer;
    import flash.display.DisplayObject;
    import flash.utils.getQualifiedClassName;

    public class 25o {

        private const _filter:RegExp = /^mx\.|^spark\.|^flash\./;

        private var n3:Dc;

        public function 25o(_arg1:Dc){
            var _local2:Ko;
            super();
            this.n3 = _arg1;
            this.n3.addEventListener(Cv.11, this.o4);
            this.n3.addEventListener(Cv.cj, this.PP);
            for each (_local2 in this.n3.pr)
            {
                this.1Yf(_local2.container);
            };
        }

        public function destroy():void{
            var _local1:Ko;
            this.n3.removeEventListener(Cv.11, this.o4);
            this.n3.removeEventListener(Cv.cj, this.PP);
            for each (_local1 in this.n3.pr)
            {
                this.1a9(_local1.container);
            };
        }

        private function o4(_arg1:Cv):void{
            this.1Yf(_arg1.container);
        }

        private function PP(_arg1:Cv):void{
            this.1a9(_arg1.container);
        }

        private function 1Yf(_arg1:DisplayObjectContainer):void{
            _arg1.addEventListener(Event.ADDED_TO_STAGE, this.CJ, true);
            _arg1.addEventListener(Event.ADDED_TO_STAGE, this.wM);
        }

        private function 1a9(_arg1:DisplayObjectContainer):void{
            _arg1.removeEventListener(Event.ADDED_TO_STAGE, this.CJ, true);
            _arg1.removeEventListener(Event.ADDED_TO_STAGE, this.wM);
        }

        private function CJ(_arg1:Event):void{
            var _local2:DisplayObject;
            var _local3:String;
            _local2 = (_arg1.target as DisplayObject);
            _local3 = getQualifiedClassName(_local2);
            var _local4:Boolean = this._filter.test(_local3);
            if (_local4)
            {
                return;
            };
            var _local5:Class = _local2["constructor"];
            var _local6:Ko = this.n3.0p(_local2);
            while (_local6)
            {
                _local6.27D(_local2, _local5);
                _local6 = _local6.parent;
            };
        }

        private function wM(_arg1:Event):void{
            var _local2:DisplayObjectContainer;
            _local2 = (_arg1.target as DisplayObjectContainer);
            _local2.removeEventListener(Event.ADDED_TO_STAGE, this.wM);
            var _local3:Class = _local2["constructor"];
            var _local4:Ko = this.n3.E(_local2);
            _local4.27D(_local2, _local3);
        }


    }
}//package 06I

