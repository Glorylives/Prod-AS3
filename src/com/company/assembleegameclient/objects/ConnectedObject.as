// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ConnectedObject

package com.company.assembleegameclient.objects{
    import flash.geom.Vector3D;
    import flash.utils.Dictionary;
    import com.company.assembleegameclient.engine3d.ObjectFace3D;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.map.Square;
    import flash.geom.Utils3D;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map._1C8;
    import com.company.assembleegameclient.engine3d._0oE;

    public class ConnectedObject extends GameObject {

        protected static const l9:int = 0;
        protected static const _0xe:int = 1;
        protected static const Yd:int = 2;
        protected static const km:int = 3;
        protected static const tN:int = 4;
        protected static const y1:int = 5;
        protected static const N0:Vector3D = new Vector3D(-1, -1, 0);
        protected static const N1:Vector3D = new Vector3D(0, -1, 0);
        protected static const N2:Vector3D = new Vector3D(1, -1, 0);
        protected static const N3:Vector3D = new Vector3D(1, 0, 0);
        protected static const N4:Vector3D = new Vector3D(1, 1, 0);
        protected static const N5:Vector3D = new Vector3D(0, 1, 0);
        protected static const N6:Vector3D = new Vector3D(-1, 1, 0);
        protected static const N7:Vector3D = new Vector3D(-1, 0, 0);
        protected static const N8:Vector3D = new Vector3D(0, 0, 1);

        private static var oY:Dictionary = null;

        protected var rotation_:int = 0;

        public function ConnectedObject(_arg1:XML){
            super(_arg1);
            _1QM = false;
        }

        private static function init():void{
            oY = new Dictionary();
            _0Wn(33686018, l9);
            _0Wn(16908802, 0xe);
            _0Wn(16843266, Yd);
            _0Wn(16908546, km);
            _0Wn(16843265, tN);
            _0Wn(16843009, y1);
        }

        private static function GW(_arg1:int):ConnectedResults{
            if (oY == null)
            {
                init();
            };
            var _local2 = (_arg1 & 252645135);
            return (oY[_local2]);
        }

        private static function _0Wn(_arg1:int, _arg2:int):void{
            var _local4:int;
            var _local3:int;
            while (_local3 < 4)
            {
                if (oY.hasOwnProperty(String(_arg1)))
                {
                } else
                {
                    oY[_arg1] = new ConnectedResults(_arg2, _local3);
                    _local4 = (_arg1 & 0xFF);
                    _arg1 = ((_arg1 >> 8) | (_local4 << 24));
                };
                _local3++;
            };
        }


        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
            var _local4:ObjectFace3D;
            var _local5:int;
            var _local6:int;
            var _local7:BitmapData;
            var _local8:Square;
            if (_0rb == null)
            {
                this.Me();
            };
            Utils3D.projectVectors(_arg2.wToS_, _0rb.vW_, _0rb.vS_, _0rb.uvts_);
            for each (_local4 in _0rb.faces_)
            {
                _local5 = (((_local4._1OL.x > 0.4)) ? 1 : (((_local4._1OL.x < -0.4)) ? -1 : 0));
                _local6 = (((_local4._1OL.y > 0.4)) ? 1 : (((_local4._1OL.y < -0.4)) ? -1 : 0));
                _local7 = _local4.texture_;
                if (((!((_local5 == 0))) || (!((_local6 == 0)))))
                {
                    _local8 = map_.lookupSquare((x_ + _local5), (y_ + _local6));
                    if ((((_local8 == null)) || ((_local8.texture_ == null))))
                    {
                        _local7 = null;
                    };
                };
                _local4.draw(_arg1, 0, _local7);
            };
        }

        public function Me():void{
            _0rb = new _0oE();
            var _local1:ConnectedResults = GW(_0mm);
            if (_local1 == null)
            {
                _0rb = null;
                return;
            };
            this.rotation_ = _local1.rotation_;
            switch (_local1.type_)
            {
                case l9:
                    this.buildDot();
                    break;
                case 0xe:
                    this.buildShortLine();
                    break;
                case Yd:
                    this.buildL();
                    break;
                case km:
                    this.buildLine();
                    break;
                case tN:
                    this.buildT();
                    break;
                case y1:
                    this.buildCross();
                    break;
                default:
                    _0rb = null;
                    return;
            };
            _0rb.setPosition(x_, y_, 0, (this.rotation_ * 90));
        }

        protected function buildDot():void{
        }

        protected function buildShortLine():void{
        }

        protected function buildL():void{
        }

        protected function buildLine():void{
        }

        protected function buildT():void{
        }

        protected function buildCross():void{
        }


    }
}//package com.company.assembleegameclient.objects

class ConnectedResults {

    public var type_:int;
    public var rotation_:int;

    public function ConnectedResults(_arg1:int, _arg2:int){
        this.type_ = _arg1;
        this.rotation_ = _arg2;
    }

}

