// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.WK

package eC{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import D5.1c8;
    import com.company.assembleegameclient.objects.1F9;

    import D5.IconButton;
    import flash.events.MouseEvent;
    import AO.du;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import flash.display.Bitmap;
    import com.company.ui._eG;


    public class WK extends Sprite {

        public const 0IV:_1HZ = new _1HZ(String);
        public const WIDTH:Number = 186;
        public const HEIGHT:Number = 153;
        private const f7:Sprite = new Sprite();
        private const background:Sprite = new Sprite();
        private const Un:Sprite = new Sprite();

        public var 22k:1c8;
        public var xt:1F9;
        private var k4:Number;
        private var _height:Number;
        public var ug:Vector.<1u2>;
        private var Gy:Vector.<Sprite>;
        public var ce:int;
        public var 1pp:IconButton;

        public function WK(_arg1:Number=186, _arg2:Number=153){
            this.ug = new Vector.<1u2>();
            this.Gy = new Vector.<Sprite>();
            super();
            this.k4 = _arg1;
            this._height = _arg2;
            this.f7.addEventListener(MouseEvent.CLICK, this.1Et);
            addChild(this.f7);
            this.0aJ();
            addChild(this.Un);
            this.Un.y = 16w.0zc;
        }

        public function DB(_arg1:1F9, _arg2:1c8, _arg3:Function):void{
            this.1pp = _arg2.create(_arg1.1JR("lofiInterfaceBig", 13), "", du.1V7, "");
            this.1pp.x = 160;
            this.1pp.y = 6;
            this.1pp.addEventListener(MouseEvent.CLICK, _arg3);
            addChild(this.1pp);
        }

        private function 1Et(_arg1:MouseEvent):void{
            this.1o3((_arg1.target.parent as 1u2));
        }

        public function 0ik(_arg1:uint):void{
            this.1o3(this.ug[_arg1]);
        }

        private function 1o3(_arg1:1u2):void{
            var _local2:1u2;
            if (_arg1)
            {
                _local2 = this.ug[this.ce];
                if (_local2.index != _arg1.index)
                {
                    _local2.setSelected(false);
                    _arg1.setSelected(true);
                    this.19Q(_arg1.index);
                    this.0IV.dispatch(this.Gy[_arg1.index].name);
                }
            }
        }

        public function 0aJ():void{
            var _local1:GraphicsSolidFill = new GraphicsSolidFill(16w.1Vo, 1);
            var _local2:GraphicsPath = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            var _local3:Vector.<IGraphicsData> = new <IGraphicsData>[_local1, _local2, tu.END_FILL];
            tu.0S-(0, 0, this.k4, (this._height - 16w.0zc), 6, [1, 1, 1, 1], _local2);
            this.background.graphics.drawGraphicsData(_local3);
            this.background.y = 16w.0zc;
            addChild(this.background);
        }

        public function df():void{
            var _local1:uint;
            this.ce = 0;
            var _local2:uint = this.ug.length;
            _local1 = 0;
            while (_local1 < _local2)
            {
                this.f7.removeChild(this.ug[_local1]);
                this.Un.removeChild(this.Gy[_local1]);
                _local1++;
            }
            this.ug = new Vector.<1u2>();
            this.Gy = new Vector.<Sprite>();
        }

        public function Mg(_arg1, _arg2:Sprite):void{
            var _local4:1u2;
            var _local3:int = this.ug.length;
            if ((_arg1 is Bitmap))
            {
                _local4 = this.01a(_local3, (_arg1 as Bitmap));
            } else
            {
                if ((_arg1 is eG))
                {
                    _local4 = this.1DC(_local3, (_arg1 as eG));
                }
            }
            this.ug.push(_local4);
            this.f7.addChild(_local4);
            this.Gy.push(_arg2);
            this.Un.addChild(_arg2);
            if (_local3 > 0)
            {
                _arg2.visible = false;
            } else
            {
                _local4.setSelected(true);
                this.19Q(0);
                this.0IV.dispatch(_arg2.name);
            }
        }

        public function iz():void{
        }

        private function 01a(_arg1:int, _arg2:Bitmap):n1{
            var _local4:n1;
            var _local3:Sprite = new 55();
            _local4 = new n1(_arg1, _local3, _arg2);
            _local4.x = (_arg1 * (_local3.width + 16w.1ss));
            _local4.y = 16w.VF;
            return (_local4);
        }

        private function 1DC(_arg1:int, _arg2:eG):0Pl{
            var _local3:Sprite = new 55();
            var _local4:0Pl = new 0Pl(_arg1, _local3, _arg2);
            _local4.x = (_arg1 * (_local3.width + 16w.1ss));
            _local4.y = 16w.VF;
            return (_local4);
        }

        private function 19Q(_arg1:int):void{
            var _local2:Sprite;
            var _local3:Sprite;
            if (_arg1 != this.ce)
            {
                _local2 = this.Gy[this.ce];
                _local3 = this.Gy[_arg1];
                _local2.visible = false;
                _local3.visible = true;
                this.ce = _arg1;
            }
        }


    }
}//package eC

