// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//8u.56

package 8u{


    public class 56 {

        private const map:Object = {}

        private var timespan:Timespan;

        public function 56(){
            this.timespan = Timespan.0W3;
            super();
        }

        public function 0A():Timespan{
            return (this.timespan);
        }

        public function 0lj(_arg1:Timespan):void{
            this.timespan = _arg1;
        }

        public function 0aY():Boolean{
            return (!((this.map[this.timespan.67()] == null)));
        }

        public function 0tw():Vector.<1QY>{
            return (this.map[this.timespan.67()]);
        }

        public function 0kH(_arg1:Vector.<1QY>):void{
            this.map[this.timespan.67()] = _arg1;
        }

        public function clear():void{
            var _local1:String;
            for (_local1 in this.map)
            {
                this.dispose(this.map[_local1]);
                delete this.map[_local1];
            }
        }

        private function dispose(_arg1:Vector.<1QY>):void{
            var _local2:1QY;
            for each (_local2 in _arg1)
            {
                ((_local2.character) && (this.3u(_local2)));
            }
        }

        private function 3u(_arg1:1QY):void{
            _arg1.character.dispose();
            _arg1.character = null;
        }


    }
}//package 8u

