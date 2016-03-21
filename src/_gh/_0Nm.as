// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//gh.0Nm

package _gh{
    import flash.utils.ByteArray;
    import _1Tb.Executer;

    public class _0Nm {

        private var _0a:_27I;
        public var _27R:String;
        private var _1aF:Boolean;
        public var key:String;
        public var col:Number;
        public var v:Number;
        public var avg:Number;

        public function _0Nm(_arg1:String="", _arg2:Number=0):void{
            this.col = _arg2;
            this.key = _arg1;
        }

        public static function jk(_arg1:ByteArray):_0Nm{
            var _local2:_0Nm = new _0Nm(_arg1.readUTF(), _arg1.readUnsignedInt());
            _local2.v = _arg1.readDouble();
            _local2.avg = _arg1.readDouble();
            return (_local2);
        }


        public function setObject(_arg1:Object, _arg2:String):Number{
            this._0a = new _27I(_arg1);
            this._27R = _arg2;
            this._1aF = (this._27R.search(/[^\w\d]/) >= 0);
            this.v = this._1at();
            this.avg = this.v;
            return (this.v);
        }

        public function get obj():Object{
            return ((((this._0a)!=null) ? this._0a._0yJ : undefined));
        }

        public function get prop():String{
            return (this._27R);
        }

        public function _1at():Number{
            return (((this._1aF) ? Executer.KZ(this.obj, this._27R) : this.obj[this._27R]));
        }

        public function setValue(_arg1:Number, _arg2:uint=0):void{
            this.v = _arg1;
            if (_arg2 > 0)
            {
                if (isNaN(this.avg))
                {
                    this.avg = this.v;
                } else
                {
                    this.avg = (this.avg + ((this.v - this.avg) / _arg2));
                }
            }
        }

        public function _0ZY(_arg1:ByteArray):void{
            _arg1.writeUTF(this.key);
            _arg1.writeUnsignedInt(this.col);
            _arg1.writeDouble(this.v);
            _arg1.writeDouble(this.avg);
        }


    }
}//package gh

