// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.yB

package 1Np{
    import com.company.assembleegameclient.objects.BasicObject;
    import flash.display.BitmapData;
    import 0W4.Animations;
    import flash.geom.Vector3D;
    import flash.display.GraphicsBitmapFill;
    import flash.display.GraphicsPath;

    import flash.geom.Matrix;
    import com.company.util._tu;
    import com.company.assembleegameclient.map.Square;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map.1C8;


    public class yB extends BasicObject {

        public var texture_:BitmapData = null;
        public var 0dP:Animations = null;
        public var size_:int;
        public var 0Cd:Number;
        public var moveVec_:Vector3D;
        protected var bitmapFill_:GraphicsBitmapFill;
        protected var path_:GraphicsPath;
        protected var vS_:Vector.<Number>;
        protected var yL:Vector.<Number>;
        protected var 1rx:Matrix;

        public function yB(_arg1:25b){
            this.bitmapFill_ = new GraphicsBitmapFill(null, null, false, false);
            this.path_ = new GraphicsPath(_tu.0xS, null);
            this.vS_ = new Vector.<Number>();
            this.yL = new Vector.<Number>();
            this.1rx = new Matrix();
            super();
            objectId_ = 0Zh();
            this.size_ = _arg1.size_;
            z_ = _arg1.z_;
            this.0Cd = _arg1.duration_;
            this.texture_ = _arg1.1lr.getTexture(objectId_);
            if (_arg1.en != null)
            {
                this.0dP = new Animations(_arg1.en);
            }
            this.moveVec_ = new Vector3D();
            var _local2:Number = ((Math.PI * 2) * Math.random());
            this.moveVec_.x = ((Math.cos(_local2) * 0.1) * 5);
            this.moveVec_.y = ((Math.sin(_local2) * 0.1) * 5);
        }

        public function moveTo(_arg1:Number, _arg2:Number):Boolean{
            var _local3:Square = map_.getSquare(_arg1, _arg2);
            if (_local3 == null)
            {
                return (false);
            }
            x_ = _arg1;
            y_ = _arg2;
            xy = _local3;
            return (true);
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            var _local3:Number;
            _local3 = (_arg2 / 1000);
            this.0Cd = (this.0Cd - _local3);
            if (this.0Cd <= 0)
            {
                return (false);
            }
            x_ = (x_ + (this.moveVec_.x * _local3));
            y_ = (y_ + (this.moveVec_.y * _local3));
            return (true);
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            var _local7:BitmapData;
            var _local4:BitmapData = this.texture_;
            if (this.0dP != null)
            {
                _local7 = this.0dP.getTexture(_arg3);
                if (_local7 != null)
                {
                    _local4 = _local7;
                }
            }
            _local4 = TextureRedrawer.redraw(_local4, this.size_, true, 0);
            var _local5:int = _local4.width;
            var _local6:int = _local4.height;
            this.vS_.length = 0;
            this.vS_.push((4M[3] - (_local5 / 2)), (4M[4] - _local6), (4M[3] + (_local5 / 2)), (4M[4] - _local6), (4M[3] + (_local5 / 2)), 4M[4], (4M[3] - (_local5 / 2)), 4M[4]);
            this.path_.data = this.vS_;
            this.bitmapFill_.bitmapData = _local4;
            this.1rx.identity();
            this.1rx.translate(this.vS_[0], this.vS_[1]);
            this.bitmapFill_.matrix = this.1rx;
            _arg1.push(this.bitmapFill_);
            _arg1.push(this.path_);
            _arg1.push(_tu.END_FILL);
        }


    }
}//package 1Np

