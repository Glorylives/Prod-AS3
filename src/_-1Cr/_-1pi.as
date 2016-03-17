// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Cr.1pi

package 1Cr{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import __AS3__.vec.Vector;
    import eC.1u2;
    import flash.events.MouseEvent;
    import com.company.ui.eG;
    import eC.0Pl;
    import eC.55;
    import flash.display.GraphicsSolidFill;
    import eC.16w;
    import flash.display.GraphicsPath;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import __AS3__.vec.*;

    public class 1pi extends Sprite {

        public const 0IV:_1HZ = new _1HZ(String);
        private const lr:int = 120;
        private const 0vi:int = 30;
        private const f7:Sprite = new Sprite();
        private const background:Sprite = new Sprite();
        private const Un:Sprite = new Sprite();

        public var ug:Vector.<1u2>;
        public var ce:int;
        private var k4:Number;
        private var _height:Number;
        private var Gy:Vector.<Sprite>;

        public function 1pi(_arg1:Number, _arg2:Number){
            this.ug = new Vector.<1u2>();
            this.Gy = new Vector.<Sprite>();
            super();
            this.k4 = _arg1;
            this._height = _arg2;
            this.f7.addEventListener(MouseEvent.CLICK, this.1Et);
            addChild(this.f7);
            this.0aJ();
            addChild(this.Un);
        }

        public function destroy():void{
            while (numChildren > 0)
            {
                this.removeChildAt((numChildren - 1));
            };
            this.f7.removeEventListener(MouseEvent.CLICK, this.1Et);
            this.ug = null;
            this.Gy = null;
        }

        public function Mg(_arg1:eG, _arg2:Sprite):void{
            var _local3:int = this.ug.length;
            var _local4:1u2 = this.1DC(_local3, (_arg1 as eG));
            this.ug.push(_local4);
            this.f7.addChild(_local4);
            _arg2.y = (this.0vi + 5);
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
            };
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
            };
            this.ug = new Vector.<1u2>();
            this.Gy = new Vector.<Sprite>();
        }

        public function iz():void{
        }

        public function 0ik(_arg1:uint):void{
            this.1o3(this.ug[_arg1]);
        }

        public function 1jp(_arg1:uint, _arg2:int):void{
            var _local3:1u2 = this.ug[_arg1];
            (_local3 as 0Pl).OS(_arg2);
        }

        private function 1Et(_arg1:MouseEvent):void{
            this.1o3((_arg1.target.parent as 1u2));
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
                };
            };
        }

        private function 1DC(_arg1:int, _arg2:eG):0Pl{
            var _local4:0Pl;
            var _local3:Sprite = new 55(this.lr, this.0vi);
            _local4 = new 0Pl(_arg1, _local3, _arg2);
            _local4.x = (_arg1 * (_arg2.width + 12));
            _local4.y = 4;
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
            };
        }

        private function 0aJ():void{
            var _local1:GraphicsSolidFill = new GraphicsSolidFill(16w.1Vo, 1);
            var _local2:GraphicsPath = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            var _local3:Vector.<IGraphicsData> = new <IGraphicsData>[_local1, _local2, _tu.END_FILL];
            _tu.0S-(0, 0, this.k4, (this._height - 16w.0zc), 6, [1, 1, 1, 1], _local2);
            this.background.graphics.drawGraphicsData(_local3);
            this.background.y = 16w.0zc;
            addChild(this.background);
        }


    }
}//package 1Cr

