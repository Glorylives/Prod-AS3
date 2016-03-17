// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.Square

package com.company.assembleegameclient.map{
    import __AS3__.vec.Vector;
    import flash.geom.Vector3D;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.engine3d.TextureMatrix;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.util.0Sw;
    import __AS3__.vec.*;

    public class Square {

        public static const 0Gy:Vector.<Number> = new <Number>[0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0];
        private static const 1gk:Vector.<int> = new <int>[26171, 44789, 20333, 70429, 98257, 59393, 33961];

        public var map_:Map;
        public var x_:int;
        public var y_:int;
        public var tileType_:uint = 0xFF;
        public var center_:Vector3D;
        public var 0y2:Vector.<Number>;
        public var obj_:GameObject = null;
        public var props_:1je;
        public var texture_:BitmapData = null;
        public var sink_:int = 0;
        public var lastDamage_:int = 0;
        public var faces_:Vector.<1Nw>;
        public var i6:1Nw = null;
        public var baseTexMatrix_:TextureMatrix = null;
        public var 05K:int;

        public function Square(_arg1:Map, _arg2:int, _arg3:int){
            this.props_ = 0s6.8v;
            this.faces_ = new Vector.<1Nw>();
            super();
            this.map_ = _arg1;
            this.x_ = _arg2;
            this.y_ = _arg3;
            this.center_ = new Vector3D((this.x_ + 0.5), (this.y_ + 0.5), 0);
            this.0y2 = new <Number>[this.x_, this.y_, 0, (this.x_ + 1), this.y_, 0, (this.x_ + 1), (this.y_ + 1), 0, this.x_, (this.y_ + 1), 0];
        }

        private static function hash(_arg1:int, _arg2:int):int{
            var _local3:int = 1gk[((_arg1 + _arg2) % 7)];
            var _local4 = (((_arg1 << 16) | _arg2) ^ 81397550);
            _local4 = ((_local4 * _local3) % 0xFFFF);
            return (_local4);
        }


        public function dispose():void{
            var _local1:1Nw;
            this.map_ = null;
            this.center_ = null;
            this.0y2 = null;
            this.obj_ = null;
            this.texture_ = null;
            for each (_local1 in this.faces_)
            {
                _local1.dispose();
            };
            this.faces_.length = 0;
            if (this.i6 != null)
            {
                this.i6.dispose();
                this.i6 = null;
            };
            this.faces_ = null;
            this.baseTexMatrix_ = null;
        }

        public function bI(_arg1:uint):void{
            this.tileType_ = _arg1;
            this.props_ = 0s6.0Ri[this.tileType_];
            this.texture_ = 0s6.getBitmapData(this.tileType_, hash(this.x_, this.y_));
            this.baseTexMatrix_ = new TextureMatrix(this.texture_, 0Gy);
            this.faces_.length = 0;
        }

        public function 0BK():Boolean{
            return (((!(this.props_.1NX)) && ((((this.obj_ == null)) || (!(this.obj_.props_.occupySquare_))))));
        }

        public function draw(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            var _local4:1Nw;
            if (this.texture_ == null)
            {
                return;
            };
            if (this.faces_.length == 0)
            {
                this.Me();
            };
            for each (_local4 in this.faces_)
            {
                if (!_local4.draw(_arg1, _arg2, _arg3))
                {
                    if (_local4.face_.vout_[1] < _arg2.0KH.bottom)
                    {
                        this.05K = 0;
                    };
                    return;
                };
            };
        }

        public function 1tC(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            this.i6.draw(_arg1, _arg2, _arg3);
        }

        private function Me():void{
            var _local2:Number;
            var _local3:Number;
            var _local4:BitmapData;
            var _local5:Vector.<Number>;
            var _local6:uint;
            this.faces_.length = 0;
            this.i6 = null;
            var _local1:BitmapData;
            if (this.props_.animate_.type_ != 1Ad.15O)
            {
                this.faces_.push(new 1Nw(this.texture_, this.0y2, this.props_.1mN, this.props_.1mN, this.props_.animate_.type_, this.props_.animate_.dx_, this.props_.animate_.dy_));
                _local1 = 0Sw.redraw(this, false);
                if (_local1 != null)
                {
                    this.faces_.push(new 1Nw(_local1, this.0y2, 0, 0, 1Ad.15O, 0, 0));
                };
            } else
            {
                _local1 = 0Sw.redraw(this, true);
                _local2 = 0;
                _local3 = 0;
                if (_local1 == null)
                {
                    if (this.props_.0wB)
                    {
                        _local2 = (int((this.texture_.width * Math.random())) / this.texture_.width);
                        _local3 = (int((this.texture_.height * Math.random())) / this.texture_.height);
                    } else
                    {
                        _local2 = this.props_.1mN;
                        _local3 = this.props_.1FK;
                    };
                };
                this.faces_.push(new 1Nw((((_local1)!=null) ? _local1 : this.texture_), this.0y2, _local2, _local3, 1Ad.15O, 0, 0));
            };
            if (this.props_.sink_)
            {
                this.sink_ = (((_local1)==null) ? 12 : 6);
            } else
            {
                this.sink_ = 0;
            };
            if (this.props_.0zb)
            {
                _local4 = this.props_.0zb.getTexture();
                _local5 = this.0y2.concat();
                _local6 = 2;
                while (_local6 < _local5.length)
                {
                    _local5[_local6] = 1;
                    _local6 = (_local6 + 3);
                };
                this.i6 = new 1Nw(_local4, _local5, 0, 0, this.props_.1yw.type_, this.props_.1yw.dx_, this.props_.1yw.dy_);
            };
        }


    }
}//package com.company.assembleegameclient.map

