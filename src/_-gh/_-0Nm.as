// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//gh.0Nm

package gh{
    import flash.utils.ByteArray;
    import 1Tb.Executer;

    public class 0Nm {

        private var 0-a:27I;
        public var 27R:String;
        private var 1aF:Boolean;
        public var key:String;
        public var col:Number;
        public var v:Number;
        public var avg:Number;

        public function 0Nm(_arg1:String="", _arg2:Number=0):void{
            this.col = _arg2;
            this.key = _arg1;
        }

        public static function jk(_arg1:ByteArray):0Nm{
            var _local2:0Nm = new 0Nm(_arg1.readUTF(), _arg1.readUnsignedInt());
            _local2.v = _arg1.readDouble();
            _local2.avg = _arg1.readDouble();
            return (_local2);
        }


        public function setObject(_arg1:Object, _arg2:String):Number{
            this.0-a = new 27I(_arg1);
            this.27R = _arg2;
            this.1aF = (this.27R.search(/[^\w\d]/) >= 0);
            this.v = this.1at();
            this.avg = this.v;
            return (this.v);
        }

        public function get obj():Object{
            return ((((this.0-a)!=null) ? this.0-a.0yJ : undefined));
        }

        public function get prop():String{
            return (this.27R);
        }

        public function 1at():Number{
            return (((this.1aF) ? Executer.KZ(this.obj, this.27R) : this.obj[this.27R]));
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

        public function 0ZY(_arg1:ByteArray):void{
            _arg1.writeUTF(this.key);
            _arg1.writeUnsignedInt(this.col);
            _arg1.writeDouble(this.v);
            _arg1.writeDouble(this.avg);
        }


    }
}//package gh

