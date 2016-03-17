// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1nb.0pH

package 1nb{
    import _Jy._1HZ;
    import _Jy._201;

    public class 0pH extends _1HZ {

        private var data:Array;
        private var log:Boolean = true;

        public function 0pH(... _args){
            this.data = [];
            super(_args);
        }

        override public function dispatch(... _args):void{
            if (this.log)
            {
                this.data.push(_args);
            };
            super.dispatch.apply(this, _args);
        }

        override public function add(_arg1:Function):_201{
            var _local2:_201 = super.add(_arg1);
            while (this.data.length > 0)
            {
                _arg1.apply(this, this.data.shift());
            };
            this.log = false;
            return (_local2);
        }

        override public function addOnce(_arg1:Function):_201{
            var _local2:_201;
            if (this.data.length > 0)
            {
                _arg1.apply(this, this.data.shift());
            } else
            {
                _local2 = super.addOnce(_arg1);
                this.log = false;
            };
            while (this.data.length > 0)
            {
                this.data.shift();
            };
            return (_local2);
        }

        public function 0CK():int{
            return (this.data.length);
        }


    }
}//package 1nb

