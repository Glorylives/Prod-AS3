// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Jt.4b

package _Jt{
import _1Wd._uo;

import flash.display.BitmapData;
    import flash.geom.Matrix3D;
    import flash.geom.Vector3D;
    import flash.display3D.textures.Texture;
    import flash.display3D.Context3DVertexBufferFormat;
    import flash.display3D.Context3DTextureFormat;
    import flash.display3D.Context3D;

    public class _4b {

        public static const _062:BitmapData = new BitmapData(1, 1, true, 0x888888FF);

        public var bk:_192 = null;
        private var bitmapData:BitmapData;
        public var _0XA:Matrix3D;
        public var dr:Matrix3D;
        public var _0pu:Matrix3D;
        public var position:Vector3D;
        private var _1x4:Number;
        private var texture_:Texture;

        public function _4b(_arg1:_192){
            this.bk = _arg1;
            this._0XA = new Matrix3D();
            this.dr = new Matrix3D();
            this._0pu = new Matrix3D();
        }

        public function _11F(_arg1:BitmapData):void{
            this.bitmapData = _uo.wJ(_arg1);
        }

        public function setPosition(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number):void{
            this.position = new Vector3D(_arg1, -(_arg2), _arg3);
            this._1x4 = _arg4;
        }

        public function dispose():void{
            if (this.texture_ != null)
            {
                this.texture_.dispose();
                this.texture_ = null;
            }
            this.bitmapData = null;
            this._0XA = null;
            this.dr = null;
            this._0pu = null;
            this.position = null;
        }

        public function UpdateModelMatrix(_arg1:Number, _arg2:Number):void{
            this._0XA.identity();
            this._0XA.appendRotation(-90, Vector3D.Z_AXIS);
            this._0XA.appendRotation(-(this._1x4), Vector3D.Z_AXIS);
            this._0XA.appendTranslation(this.position.x, this.position.y, 0);
            this._0XA.appendTranslation(_arg1, _arg2, 0);
        }

        public function GetModelMatrix():Matrix3D{
            return (this._0XA);
        }

        public function draw(_arg1:Context3D):void{
            var _local2:_0Ev;
            _arg1.setVertexBufferAt(0, this.bk.fg, 0, Context3DVertexBufferFormat.FLOAT_3);
            _arg1.setVertexBufferAt(1, this.bk.fg, 3, Context3DVertexBufferFormat.FLOAT_3);
            _arg1.setVertexBufferAt(2, this.bk.fg, 6, Context3DVertexBufferFormat.FLOAT_2);
            if ((((this.texture_ == null)) && (!((this.bitmapData == null)))))
            {
                this.texture_ = _arg1.createTexture(this.bitmapData.width, this.bitmapData.height, Context3DTextureFormat.BGRA, false);
                this.texture_.uploadFromBitmapData(this.bitmapData);
            } else
            {
                if (this.texture_ == null)
                {
                    this.bitmapData = _062;
                    this.texture_ = _arg1.createTexture(this.bitmapData.width, this.bitmapData.height, Context3DTextureFormat.BGRA, false);
                    this.texture_.uploadFromBitmapData(this.bitmapData);
                }
            }
            _arg1.setTextureAt(0, this.texture_);
            for each (_local2 in this.bk._27N)
            {
                if (_local2._1ck != null)
                {
                    _arg1.drawTriangles(_local2._1ck);
                }
            }
        }


    }
}//package Jt

