// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//gh.1oT

package _gh{
    import flash.geom.Rectangle;
    import flash.utils.ByteArray;

    public class _1oT {

        public static const _13x:uint = 1;
        public static const _1md:uint = 2;

        public var type:uint;
        public var name:String;
        public var _0c0:int = 1;
        public var low:Number;
        public var _7p:Number;
        public var fixed:Boolean;
        public var _1QT:uint;
        public var _1JS:Boolean;
        public var interests:Array;
        public var rect:Rectangle;
        public var _1VY:int;

        public function _1oT(_arg1:String){
            this.interests = [];
            super();
            this.name = _arg1;
        }

        public static function jk(_arg1:ByteArray):_1oT{
            var _local2:_1oT = new _1oT(_arg1.readUTF());
            _local2.type = _arg1.readUnsignedInt();
            _local2._1VY = _arg1.readUnsignedInt();
            _local2.low = _arg1.readDouble();
            _local2._7p = _arg1.readDouble();
            _local2._1JS = _arg1.readBoolean();
            var _local3:uint = _arg1.readUnsignedInt();
            while (_local3)
            {
                _local2.interests.push(_0Nm.jk(_arg1));
                _local3--;
            }
            return (_local2);
        }


        public function _0BX(_arg1:Number):void{
            if (((!(isNaN(_arg1))) && (!(this.fixed))))
            {
                if (isNaN(this.low))
                {
                    this.low = _arg1;
                    this._7p = _arg1;
                }
                if (_arg1 > this._7p)
                {
                    this._7p = _arg1;
                }
                if (_arg1 < this.low)
                {
                    this.low = _arg1;
                }
            }
        }

        public function _0ZY(_arg1:ByteArray):void{
            var _local2:_0Nm;
            _arg1.writeUTF(this.name);
            _arg1.writeUnsignedInt(this.type);
            _arg1.writeUnsignedInt(this._1VY);
            _arg1.writeDouble(this.low);
            _arg1.writeDouble(this._7p);
            _arg1.writeBoolean(this._1JS);
            _arg1.writeUnsignedInt(this.interests.length);
            for each (_local2 in this.interests)
            {
                _local2._0ZY(_arg1);
            }
        }


    }
}//package gh

