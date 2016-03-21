// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.1uO

package 1Np{
    import com.company.assembleegameclient.objects.BasicObject;

    import flash.geom.Matrix;
    import flash.display.GraphicsPath;
    import flash.display.GraphicsBitmapFill;
    import com.company.util._tu;
    import flash.display.BitmapData;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map.1C8;


    public class 1uO extends BasicObject {

        public var ru:Number = 0;
        public var 0Ti:Number;
        public var 22y:Number;
        public var 1gp:Number;
        protected var vS_:Vector.<Number>;
        protected var 1rx:Matrix;
        protected var path_:GraphicsPath;
        protected var bitmapFill_:GraphicsBitmapFill;

        public function 1uO(_arg1:BitmapData){
            this.vS_ = new Vector.<Number>(8);
            this.1rx = new Matrix();
            this.path_ = new GraphicsPath(_tu.0xS, null);
            this.bitmapFill_ = new GraphicsBitmapFill(null, null, false, false);
            super();
            this.bitmapFill_.bitmapData = _arg1;
            objectId_ = 0Zh();
        }

        public function initialize(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number, _arg5:int):void{
            this.ru = _arg1;
            this.0Ti = _arg2;
            this.22y = _arg3;
            this.1gp = _arg4;
            z_ = _arg5;
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
            var _local4:Number = (this.bitmapFill_.bitmapData.width / 2);
            var _local5:Number = (this.bitmapFill_.bitmapData.height / 2);
            this.vS_[6] = (this.vS_[0] = (4M[3] - _local4));
            this.vS_[3] = (this.vS_[1] = (4M[4] - _local5));
            this.vS_[4] = (this.vS_[2] = (4M[3] + _local4));
            this.vS_[7] = (this.vS_[5] = (4M[4] + _local5));
            this.path_.data = this.vS_;
            this.1rx.identity();
            this.1rx.translate(this.vS_[0], this.vS_[1]);
            this.bitmapFill_.matrix = this.1rx;
            _arg1.push(this.bitmapFill_);
            _arg1.push(this.path_);
            _arg1.push(_tu.END_FILL);
        }

        override public function removeFromMap():void{
            map_ = null;
            xy = null;
        }


    }
}//package 1Np

