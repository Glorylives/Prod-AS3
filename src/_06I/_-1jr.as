// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//06I.1jr

package 06I{
    import flash.display.DisplayObjectContainer;
    import flash.display.DisplayObject;

    public class 1jr {

        private var n3:Dc;

        public function 1jr(_arg1:Dc){
            var _local2:Ko;
            super();
            this.n3 = _arg1;
            this.n3.addEventListener(Cv.1fg, this.1h3);
            this.n3.addEventListener(Cv.0PQ, this.0yl);
            for each (_local2 in this.n3.j1)
            {
                this.0Qm(_local2.container);
            }
        }

        public function destroy():void{
            var _local1:Ko;
            this.n3.removeEventListener(Cv.1fg, this.1h3);
            this.n3.removeEventListener(Cv.0PQ, this.0yl);
            for each (_local1 in this.n3.j1)
            {
                this.17u(_local1.container);
            }
        }

        private function 1h3(_arg1:Cv):void{
            this.0Qm(_arg1.container);
        }

        private function 0yl(_arg1:Cv):void{
            this.17u(_arg1.container);
        }

        private function 0Qm(_arg1:DisplayObjectContainer):void{
            _arg1.addEventListener(0m6.1k, this.07L);
        }

        private function 17u(_arg1:DisplayObjectContainer):void{
            _arg1.removeEventListener(0m6.1k, this.07L);
        }

        private function 07L(_arg1:0m6):void{
            var _local3:DisplayObject;
            _arg1.stopImmediatePropagation();
            var _local2:DisplayObjectContainer = (_arg1.currentTarget as DisplayObjectContainer);
            _local3 = (_arg1.target as DisplayObject);
            var _local4:Class = _local3["constructor"];
            this.n3.E(_local2).27D(_local3, _local4);
        }


    }
}//package 06I

