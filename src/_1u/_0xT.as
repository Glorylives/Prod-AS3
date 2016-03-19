// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1u-.0xT

package _1u{


    public class _0xT {

        private var _1rX:Vector.<String>;
        private var index:int = 0;

        public function _0xT(){
            this._1rX = new Vector.<String>();
            super();
        }

        public function push(_arg1:String):void{
            var _local2:int = this._1rX.indexOf(_arg1);
            if (_local2 != -1)
            {
                this._1rX.splice(_local2, 1);
            }
            this._1rX.unshift(_arg1);
        }

        public function _18g():String{
            if (this._1rX.length > 0)
            {
                this.index = ((this.index + 1) % this._1rX.length);
                return (this._1rX[this.index]);
            }
            return ("");
        }

        public function _1Wf():void{
            this.index = -1;
        }

        public function _0yI():void{
            this._1rX = new Vector.<String>();
            this.index = 0;
        }


    }
}//package 1u-

