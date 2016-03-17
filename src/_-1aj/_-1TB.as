// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1aj.1TB

package 1aj{
    import flash.display.DisplayObject;
    import _Jy._1HZ;
    import flash.events.Event;

    public class 1TB {

        private var target:DisplayObject;
        private var 08Z:_1HZ;
        private var 0-0:_1HZ;

        public function 1TB(_arg1:DisplayObject){
            this.target = _arg1;
            _arg1.addEventListener(Event.ADDED_TO_STAGE, this.kJ);
        }

        private function kJ(_arg1:Event):void{
            this.target.removeEventListener(Event.ADDED_TO_STAGE, this.kJ);
            this.target.addEventListener(Event.REMOVED_FROM_STAGE, this.7G);
            ((this.08Z) && (this.08Z.dispatch()));
        }

        private function 7G(_arg1:Event):void{
            this.target.addEventListener(Event.ADDED_TO_STAGE, this.kJ);
            this.target.removeEventListener(Event.REMOVED_FROM_STAGE, this.7G);
            ((this.0-0) && (this.0-0.dispatch()));
        }

        public function get 23k():_1HZ{
            return ((this.08Z = ((this.08Z) || (new _1HZ()))));
        }

        public function get 277():_1HZ{
            return ((this.0-0 = ((this.0-0) || (new _1HZ()))));
        }


    }
}//package 1aj

