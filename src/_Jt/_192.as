// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Jt.192

package _Jt{
    import flash.display3D.VertexBuffer3D;
    import flash.utils.Dictionary;
    import flash.display3D.Context3D;
    import flash.utils.ByteArray;

    public class _192 {

        public var name:String;
        public var _27N:Vector.<_0Ev>;
        public var fg:VertexBuffer3D;
        protected var _0y5:Dictionary;
        protected var _1wZ:uint;
        protected var _1xh:Dictionary;
        protected var _0Y9:Vector.<Number>;

        public function _192(){
            this._27N = new Vector.<_0Ev>();
            this._0y5 = new Dictionary();
            this._0Y9 = new Vector.<Number>();
        }

        public function dispose():void{
            var _local1:_0Ev;
            for each (_local1 in this._27N)
            {
                _local1.dispose();
            };
            this._27N.length = 0;
            if (this.fg !== null)
            {
                this.fg.dispose();
                this.fg = null;
            };
            this._0Y9.length = 0;
            this._1wZ = 0;
            this._1xh = new Dictionary();
        }

        public function _1T(_arg1:Context3D):void{
            var _local2:_0Ev;
            for each (_local2 in this._27N)
            {
                if (_local2._1rN.length > 0)
                {
                    _local2._1ck = _arg1.createIndexBuffer(_local2._1rN.length);
                    _local2._1ck.uploadFromVector(_local2._1rN, 0, _local2._1rN.length);
                    _local2.VU = null;
                };
            };
            this.fg = _arg1.createVertexBuffer((this._0Y9.length / 8), 8);
            this.fg.uploadFromVector(this._0Y9, 0, (this._0Y9.length / 8));
        }

        public function readBytes(_arg1:ByteArray):void{
            var _local2:Vector.<String>;
            var _local3:_0Ev;
            var _local10:String;
            var _local11:Array;
            var _local12:String;
            var _local13:int;
            var _local14:int;
            this.dispose();
            var _local4 = "";
            var _local5:Vector.<Number> = new Vector.<Number>();
            var _local6:Vector.<Number> = new Vector.<Number>();
            var _local7:Vector.<Number> = new Vector.<Number>();
            _arg1.position = 0;
            var _local8:String = _arg1.readUTFBytes(_arg1.bytesAvailable);
            var _local9:Array = _local8.split(/[\r\n]+/);
            for each (_local10 in _local9)
            {
                _local10 = _local10.replace(/^\s*|\s*$/g, "");
                if (!(((_local10 == "")) || ((_local10.charAt(0) === "#"))))
                {
                    _local11 = _local10.split(/\s+/);
                    switch (_local11[0].toLowerCase())
                    {
                        case "v":
                            _local5.push(parseFloat(_local11[1]), parseFloat(_local11[2]), parseFloat(_local11[3]));
                            break;
                        case "vn":
                            _local6.push(parseFloat(_local11[1]), parseFloat(_local11[2]), parseFloat(_local11[3]));
                            break;
                        case "vt":
                            _local7.push(parseFloat(_local11[1]), (1 - parseFloat(_local11[2])));
                            break;
                        case "f":
                            _local2 = new Vector.<String>();
                            for each (_local12 in _local11.slice(1))
                            {
                                _local2.push(_local12);
                            };
                            if (_local3 === null)
                            {
                                _local3 = new _0Ev(null, _local4);
                                this._27N.push(_local3);
                            };
                            _local3.VU.push(_local2);
                            break;
                        case "g":
                            _local3 = new _0Ev(_local11[1], _local4);
                            this._27N.push(_local3);
                            break;
                        case "o":
                            this.name = _local11[1];
                            break;
                        case "mtllib":
                            break;
                        case "usemtl":
                            _local4 = _local11[1];
                            if (_local3 !== null)
                            {
                                _local3._0qa = _local4;
                            };
                            break;
                    };
                };
            };
            for each (_local3 in this._27N)
            {
                _local3._1rN.length = 0;
                for each (_local2 in _local3.VU)
                {
                    _local13 = (_local2.length - 1);
                    _local14 = 1;
                    while (_local14 < _local13)
                    {
                        _local3._1rN.push(this._5F(_local2[_local14], _local5, _local6, _local7));
                        _local3._1rN.push(this._5F(_local2[0], _local5, _local6, _local7));
                        _local3._1rN.push(this._5F(_local2[(_local14 + 1)], _local5, _local6, _local7));
                        _local14++;
                    };
                };
                _local3.VU = null;
            };
            this._1wZ = 0;
            this._1xh = null;
        }

        protected function _5F(_arg1:String, _arg2:Vector.<Number>, _arg3:Vector.<Number>, _arg4:Vector.<Number>):uint{
            var _local5:Array;
            var _local6:uint;
            if (this._1xh[_arg1] !== undefined)
            {
                return (this._1xh[_arg1]);
            };
            _local5 = _arg1.split("/");
            _local6 = (parseInt(_local5[0], 10) - 1);
            this._0Y9.push(_arg2[((_local6 * 3) + 0)], _arg2[((_local6 * 3) + 1)], _arg2[((_local6 * 3) + 2)]);
            if ((((_local5.length > 2)) && ((_local5[2].length > 0))))
            {
                _local6 = (parseInt(_local5[2], 10) - 1);
                this._0Y9.push(_arg3[((_local6 * 3) + 0)], _arg3[((_local6 * 3) + 1)], _arg3[((_local6 * 3) + 2)]);
            } else
            {
                this._0Y9.push(0, 0, 0);
            };
            if ((((_local5.length > 1)) && ((_local5[1].length > 0))))
            {
                _local6 = (parseInt(_local5[1], 10) - 1);
                this._0Y9.push(_arg4[((_local6 * 2) + 0)], _arg4[((_local6 * 2) + 1)]);
            } else
            {
                this._0Y9.push(0, 0);
            };
            return ((this._1xh[_arg1] = this._1wZ++));
        }


    }
}//package Jt

