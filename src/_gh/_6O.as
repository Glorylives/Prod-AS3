// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//gh.6O

package _gh{
    import flash.utils.Proxy;
    import flash.utils.flash_proxy

    public dynamic class _6O extends Proxy {

        private var _1WY:Array;
        private var _13i:Object;

        public function _6O(){
            this._13i = new Object();
        }

        public function set(_arg1:String, _arg2:Object, _arg3:Boolean=false):void{
            if (_arg2 == null)
            {
                delete this._13i[_arg1];
            } else
            {
                this._13i[_arg1] = new _27I(_arg2, _arg3);
            }
        }

        public function get(_arg1:String){
            var _local2:_27I = this._13z(_arg1);
            return (((_local2) ? _local2._0yJ : undefined));
        }

        public function _13z(_arg1:String):_27I{
            return ((this._13i[_arg1] as _27I));
        }

        override flash_proxy function getProperty(_arg1){
            return (this.get(_arg1));
        }

        override flash_proxy function callProperty(_arg1, ... _args){
            var _local3:Object = this.get(_arg1);
            return (_local3.apply(this, _args));
        }

        override flash_proxy function setProperty(_arg1, _arg2):void{
            this.set(_arg1, _arg2);
        }

        override flash_proxy function nextName(_arg1:int):String{
            return (this._1WY[(_arg1 - 1)]);
        }

        override flash_proxy function nextValue(_arg1:int){
            return (this[this.nextName(_arg1)]);
        }

        override flash_proxy function nextNameIndex(_arg1:int):int{
            var _local2:*;
            if (_arg1 == 0)
            {
                this._1WY = new Array();
                for (_local2 in this._13i)
                {
                    this._1WY.push(_local2);
                }
            }
            if (_arg1 < this._1WY.length)
            {
                return ((_arg1 + 1));
            }
            return (0);
        }

        override flash_proxy function deleteProperty(_arg1):Boolean{
            return (delete this._13i[_arg1]);
        }

        public function toString():String{
            return ("[WeakObject]");
        }


    }
}//package gh

