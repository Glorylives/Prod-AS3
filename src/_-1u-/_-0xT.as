// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1u-.0xT

package 1u-{
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class 0xT {

        private var 1rX:Vector.<String>;
        private var index:int = 0;

        public function 0xT(){
            this.1rX = new Vector.<String>();
            super();
        }

        public function push(_arg1:String):void{
            var _local2:int = this.1rX.indexOf(_arg1);
            if (_local2 != -1)
            {
                this.1rX.splice(_local2, 1);
            };
            this.1rX.unshift(_arg1);
        }

        public function 18g():String{
            if (this.1rX.length > 0)
            {
                this.index = ((this.index + 1) % this.1rX.length);
                return (this.1rX[this.index]);
            };
            return ("");
        }

        public function 1Wf():void{
            this.index = -1;
        }

        public function 0yI():void{
            this.1rX = new Vector.<String>();
            this.index = 0;
        }


    }
}//package 1u-

