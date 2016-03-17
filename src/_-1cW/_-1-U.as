// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1cW.1-U

package 1cW{
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class 1-U implements 08S {

        public static var 12C:Class = RT;

        private var 15F:Vector.<String>;
        private var Ea:Vector.<int>;
        private var index:int;
        private var count:int;

        public function 1-U(){
            this.index = 0;
            this.1B0();
            this.count = this.15F.length;
            this.1is();
        }

        public function 1CN():String{
            var _local1:int = this.Ea[(this.index++ % this.count)];
            return (this.15F[_local1]);
        }

        private function 1B0():void{
            var _local2:XML;
            var _local1:XML = XML(new 12C());
            this.15F = new <String>[];
            for each (_local2 in _local1.Protip)
            {
                this.15F.push(_local2.toString());
            };
            this.count = this.15F.length;
        }

        private function 1is():void{
            var _local1:Vector.<int> = new <int>[];
            var _local2:int;
            while (_local2 < this.count)
            {
                _local1.push(_local2);
                _local2++;
            };
            this.Ea = new <int>[];
            while (_local2 > 0)
            {
                this.Ea.push(_local1.splice(Math.floor((Math.random() * _local2--)), 1)[0]);
            };
            this.Ea.fixed = true;
        }


    }
}//package 1cW

