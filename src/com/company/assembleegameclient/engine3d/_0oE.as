// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d.0oE

package com.company.assembleegameclient.engine3d{
    import flash.geom.Matrix3D;
    import flash.geom.Vector3D;
    import flash.geom.Utils3D;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map._1C8;
    import flash.display.BitmapData;

    public class _0oE {

        public var bk:_1hA = null;
        public var vL_:Vector.<Number>;
        public var uvts_:Vector.<Number>;
        public var faces_:Vector.<ObjectFace3D>;
        public var vS_:Vector.<Number>;
        public var vW_:Vector.<Number>;
        public var jJ:Matrix3D;

        public function _0oE(_arg1:_1hA=null){
            var _local2:_10H;
            this.faces_ = new Vector.<ObjectFace3D>();
            this.vS_ = new Vector.<Number>();
            this.vW_ = new Vector.<Number>();
            this.jJ = new Matrix3D();
            super();
            if (_arg1 != null)
            {
                this.bk = _arg1;
                this.vL_ = this.bk.vL_;
                this.uvts_ = this.bk.uvts_.concat();
                for each (_local2 in this.bk.faces_)
                {
                    this.faces_.push(new ObjectFace3D(this, _local2._0Vc, _local2._18b));
                };
            } else
            {
                this.vL_ = new Vector.<Number>();
                this.uvts_ = new Vector.<Number>();
            };
            this.setPosition(0, 0, 0, 0);
        }

        public static function getObject(_arg1:String):_0oE{
            var _local2:_1hA = _1hA.Bb(_arg1);
            return (new _0oE(_local2));
        }


        public function dispose():void{
            var _local1:ObjectFace3D;
            this.vL_ = null;
            this.uvts_ = null;
            for each (_local1 in this.faces_)
            {
                _local1.dispose();
            };
            this.faces_.length = 0;
            this.faces_ = null;
            this.vS_ = null;
            this.vW_ = null;
            this.jJ = null;
        }

        public function setPosition(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number):void{
            var _local5:ObjectFace3D;
            this.jJ.identity();
            this.jJ.appendRotation(_arg4, Vector3D.Z_AXIS);
            this.jJ.appendTranslation(_arg1, _arg2, _arg3);
            this.jJ.transformVectors(this.vL_, this.vW_);
            for each (_local5 in this.faces_)
            {
                _local5._1sg();
            };
        }

        public function _0m(_arg1:int):Vector3D{
            var _local2:int = (_arg1 * 3);
            if (_local2 >= this.vW_.length)
            {
                return (null);
            };
            return (new Vector3D(this.vW_[_local2], this.vW_[(_local2 + 1)], this.vW_[(_local2 + 2)]));
        }

        public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:uint, _arg4:BitmapData):void{
            var _local5:ObjectFace3D;
            Utils3D.projectVectors(_arg2.wToS_, this.vW_, this.vS_, this.uvts_);
            for each (_local5 in this.faces_)
            {
                _local5.draw(_arg1, _arg3, _arg4);
            };
        }


    }
}//package com.company.assembleegameclient.engine3d

