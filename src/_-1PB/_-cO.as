// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.cO

package 1PB{
    import _Jy._1HZ;
    import flash.utils.Dictionary;
    import gY.11k;

    public class cO {

        public var complete:_1HZ;
        private var 1T4:Dictionary;

        public function cO(){
            this.complete = new _1HZ();
            this.1T4 = new Dictionary();
            super();
        }

        public function push(_arg1:_1HZ):cO{
            this.1T4[_arg1] = true;
            this.mC(_arg1);
            return (this);
        }

        public function pushArgs(... _args):cO{
            var _local2:_1HZ;
            for each (_local2 in _args)
            {
                this.push(_local2);
            };
            return (this);
        }

        private function mC(_arg1:_1HZ):void{
            var onTextChanged:Function;
            var value:_1HZ = _arg1;
            onTextChanged = function ():void{
                delete 1T4[value];
                0dt();
            };
            value.addOnce(onTextChanged);
        }

        private function 0dt():void{
            if (this.isEmpty())
            {
                this.complete.dispatch();
            };
        }

        public function isEmpty():Boolean{
            return ((11k.0H2(this.1T4).length == 0));
        }


    }
}//package 1PB

