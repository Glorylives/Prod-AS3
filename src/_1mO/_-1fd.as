// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1mO.1fd

package 1mO{
    import 12X.0Q6;
    import flash.geom.ColorTransform;
    import flash.filters.DropShadowFilter;
    import flash.filters.GlowFilter;
    import flash.text.TextField;

    import flash.display.Sprite;
    import flash.events.KeyboardEvent;
    import flash.events.Event;
    import _04_._1JZ;
    import 0xo.lZ;
    import 0sk.26Z;
    import com.company.assembleegameclient.parameters.Parameters;
    import _CU._13j;
    import 1n4.1WS;
    import 1n4.1cA;
    import flash.text.TextFieldAutoSize;
    import flash.text.TextFormatAlign;
    import AO._nz;
    import flash.events.MouseEvent;
    import _ZS.0ZC;
    import flash.display.DisplayObject;
    import 0uE.IJ;
    import com.company.util.02E;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import flash.display.Bitmap;
    import com.company.util.MoreColorUtil;


    public class 1fd extends 0Q6 {

        public static const jO:int = 440;
        public static const 1YC:int = 400;
        private static const fD:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));
        private static const t3:DropShadowFilter = new DropShadowFilter(0, 0, 0);
        private static const GLOW_FILTER:GlowFilter = new GlowFilter(0xFF0000, 1, 11, 5);
        private static const HG:Array = [t3, GLOW_FILTER];
        private static const 0PY:Array = [t3];

        public static var ga:Class = nX;
        public static var xp:Class = Nn;
        public static var 0l4:int = jO;//440
        public static var 0oc:int = 1YC;//400

        private var C0:x5;
        private var cl:int = -1;
        private var 1jU:TextField;
        private var 1pU:TextField;
        private var 13W:TextField;
        private var wH:TextField;
        private var wz:Vector.<TextField>;
        private var 1ex:Sprite;
        private var qY:Sprite;

        public function 1fd(_arg1:int=1){
            0l4 = jO;
            0oc = 1YC;
            super(0l4, 0oc);
            this.Jl(true);
            this.var();
            this.27J(_arg1);
            WebMain._0Kr.addEventListener(KeyboardEvent.KEY_DOWN, this.Nb);
            addEventListener(Event.REMOVED_FROM_STAGE, this.destroy);
        }

        public static function 0GG():void{
            var _local1:lZ = _1JZ.0JF().getInstance(lZ);
            if (((!((_local1 == null))) && (!((_local1.ja == null)))))
            {
                _local1.ja.1w();
                return;
            }
        }

        public static function zh():Boolean{
            var _local1:int = 1;
            while (_local1 <= 26Z.1Zd)
            {
                if (((!((Parameters.data_[("hasNewsUpdate" + _local1)] == null))) && ((Parameters.data_[("hasNewsUpdate" + _local1)] == true))))
                {
                    return (true);
                }
                _local1++;
            }
            return (false);
        }

        public static function 1UU(_arg1:String, _arg2:int, _arg3:int, _arg4:Boolean):_13j{
            var _local5:_13j;
            _local5 = new _13j().setSize(18).setColor(0xFFFFFF).setTextWidth((1fd.0l4 - (1yz * 2)));
            _local5.setBold(true);
            if (_arg4)
            {
                _local5.setStringBuilder(new 1WS(_arg1));
            } else
            {
                _local5.setStringBuilder(new 1cA().setParams(_arg1));
            }
            _local5.setWordWrap(true);
            _local5.setMultiLine(true);
            _local5.setAutoSize(TextFieldAutoSize.CENTER);
            _local5.setHorizontalAlign(TextFormatAlign.CENTER);
            _local5.filters = [new DropShadowFilter(0, 0, 0)];
            _local5.x = _arg2;
            _local5.y = _arg3;
            return (_local5);
        }


        private function var():void{
            var _local4:TextField;
            var _local1:int = 26Z.1Zd;
            this.wz = new Vector.<TextField>(_local1, true);
            this.1jU = new TextField();
            this.1pU = new TextField();
            this.13W = new TextField();
            this.wH = new TextField();
            this.wz[0] = this.1jU;
            this.wz[1] = this.1pU;
            this.wz[2] = this.13W;
            this.wz[3] = this.wH;
            var _local2:_nz = _1JZ.0JF().getInstance(_nz);
            var _local3:int = 1;
            for each (_local4 in this.wz)
            {
                _local2.apply(_local4, 20, 0xFFFFFF, true);
                _local4.filters = 0PY;
                if ((((_local3 > 0)) && ((_local3 <= 26Z.1Zd))))
                {
                    _local4.text = (("  " + _local3) + "  ");
                    _local4.width = _local4.textWidth;
                    _local4.x = (((0l4 * (_local3 + 3)) / 11) - (_local4.textWidth / 2));
                    _local4.addEventListener(MouseEvent.ROLL_OVER, this.8l);
                    _local4.addEventListener(MouseEvent.ROLL_OUT, this.21A);
                }
                _local4.height = _local4.textHeight;
                _local4.y = (0oc - 33);
                _local4.selectable = false;
                _local4.addEventListener(MouseEvent.CLICK, this.0eJ);
                addChild(_local4);
                _local3++;
            }
            this.1ex = this.0fU();
            this.qY = this.0og();
            this.1ex.x = (((0l4 * 3) / 11) - (this.qY.width / 2));
            this.1ex.y = (0oc - 4);
            addChild(this.1ex);
            this.qY.x = (((0l4 * 8) / 11) - (this.qY.width / 2));
            this.qY.y = (0oc - 4);
            addChild(this.qY);
        }

        public function 8l(_arg1:MouseEvent):void{
            var _local2:TextField = (_arg1.currentTarget as TextField);
            _local2.textColor = 16701832;
        }

        public function 21A(_arg1:MouseEvent):void{
            var _local2:TextField = (_arg1.currentTarget as TextField);
            _local2.textColor = 0xFFFFFF;
        }

        public function 0eJ(_arg1:MouseEvent):void{
            switch (_arg1.currentTarget)
            {
                case this.qY:
                    if ((this.cl + 1) <= 26Z.1Zd)
                    {
                        this.27J((this.cl + 1));
                    }
                    return;
                case this.1ex:
                    if ((this.cl - 1) >= 1)
                    {
                        this.27J((this.cl - 1));
                    }
                    return;
                case this.1jU:
                    this.27J(1);
                    return;
                case this.1pU:
                    this.27J(2);
                    return;
                case this.13W:
                    this.27J(3);
                    return;
                case this.wH:
                    this.27J(4);
                    return;
            }
        }

        private function nQ(_arg1:int):TextField{
            if ((_arg1 >= 0) < 26Z.1Zd)
            {
                return (this.wz[(_arg1 - 1)]);
            }
            return (null);
        }

        private function destroy(_arg1:Event):void{
            var _local2:TextField;
            WebMain._0Kr.removeEventListener(KeyboardEvent.KEY_DOWN, this.Nb);
            removeEventListener(Event.REMOVED_FROM_STAGE, this.destroy);
            if (this.wz != null)
            {
                for each (_local2 in this.wz)
                {
                    _local2.removeEventListener(MouseEvent.CLICK, this.0eJ);
                    _local2.removeEventListener(MouseEvent.ROLL_OVER, this.8l);
                    _local2.removeEventListener(MouseEvent.ROLL_OUT, this.21A);
                }
            }
            this.1ex.removeEventListener(MouseEvent.CLICK, this.0eJ);
            this.1ex.removeEventListener(MouseEvent.MOUSE_OVER, this.25A);
            this.1ex.removeEventListener(MouseEvent.MOUSE_OUT, this.0-3);
            this.qY.removeEventListener(MouseEvent.CLICK, this.0eJ);
            this.qY.removeEventListener(MouseEvent.MOUSE_OVER, this.25A);
            this.qY.removeEventListener(MouseEvent.MOUSE_OUT, this.0-3);
        }

        private function 27J(_arg1:int):void{
            var _local3:TextField;
            var _local2:Boolean = zh();
            if ((((_arg1 < 1)) || ((_arg1 > 26Z.1Zd))))
            {
                return;
            }
            if (this.cl != -1)
            {
                removeChild(this.C0);
                _local3 = this.nQ(this.cl);
                if (_local3 != null)
                {
                    _local3.filters = 0PY;
                }
                0ZC.play("button_click");
            }
            this.cl = _arg1;
            var _local4:26Z = _1JZ.0JF().getInstance(26Z);
            this.C0 = _local4.rh(_arg1);
            addChild(this.C0);
            _local3 = this.nQ(this.cl);
            if (_local3 != null)
            {
                _local3.filters = HG;
            }
            Parameters.data_[("hasNewsUpdate" + _arg1)] = false;
            var _local5:Boolean = zh();
            if (_local2 != _local5)
            {
                0GG();
            }
        }

        override protected function makeModalBackground():Sprite{
            var _local3:DisplayObject;
            var _local1:Sprite = new Sprite();
            var _local2:DisplayObject = new ga();
            _local2.width = (0l4 + 1);
            _local2.height = (0oc - 25);
            _local2.y = 27;
            _local2.alpha = 0.95;
            _local3 = new xp();
            _local3.width = (0l4 + 1);
            _local3.height = (0oc - 67);
            _local3.y = 27;
            _local3.alpha = 1;
            var _local4:IJ = new IJ();
            _local4.draw(0l4, 0oc, IJ.0W9);
            _local1.addChild(_local2);
            _local1.addChild(_local3);
            _local1.addChild(_local4);
            return (_local1);
        }

        private function Nb(_arg1:KeyboardEvent):void{
            if (_arg1.keyCode == 02E.RIGHT)
            {
                if ((this.cl + 1) <= 26Z.1Zd)
                {
                    this.27J((this.cl + 1));
                }
            } else
            {
                if (_arg1.keyCode == 02E.LEFT)
                {
                    if ((this.cl - 1) >= 1)
                    {
                        this.27J((this.cl - 1));
                    }
                }
            }
        }

        private function 0fU():Sprite{
            var _local1:BitmapData = AssetLibrary.1JR("lofiInterface", 54);
            var _local2:Bitmap = new Bitmap(_local1);
            _local2.scaleX = 4;
            _local2.scaleY = 4;
            _local2.rotation = -90;
            var _local3:Sprite = new Sprite();
            _local3.addChild(_local2);
            _local3.addEventListener(MouseEvent.MOUSE_OVER, this.25A);
            _local3.addEventListener(MouseEvent.MOUSE_OUT, this.0-3);
            _local3.addEventListener(MouseEvent.CLICK, this.0eJ);
            return (_local3);
        }

        private function 0og():Sprite{
            var _local1:BitmapData = AssetLibrary.1JR("lofiInterface", 55);
            var _local2:Bitmap = new Bitmap(_local1);
            _local2.scaleX = 4;
            _local2.scaleY = 4;
            _local2.rotation = -90;
            var _local3:Sprite = new Sprite();
            _local3.addChild(_local2);
            _local3.addEventListener(MouseEvent.MOUSE_OVER, this.25A);
            _local3.addEventListener(MouseEvent.MOUSE_OUT, this.0-3);
            _local3.addEventListener(MouseEvent.CLICK, this.0eJ);
            return (_local3);
        }

        private function 25A(_arg1:MouseEvent):void{
            _arg1.currentTarget.transform.colorTransform = fD;
        }

        private function 0-3(_arg1:MouseEvent):void{
            _arg1.currentTarget.transform.colorTransform = MoreColorUtil.identity;
        }

        override public function onCloseClick(_arg1:MouseEvent):void{
            0ZC.play("button_click");
        }


    }
}//package 1mO

