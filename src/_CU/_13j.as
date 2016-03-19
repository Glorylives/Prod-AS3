// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_CU._13j

package _CU{
import _1n4._1Jo;

import _1qQ._0oB;

import flash.display.Sprite;
    import _Jy._1HZ;
    import flash.text.TextField;
    import AO.ml;
    import flash.text.TextLineMetrics;
    import flash.text.TextFormat;

    public class _13j extends Sprite {

        public static const MIDDLE:String = "middle";
        public static const BOTTOM:String = "bottom";
        private static const dG:int = 2;

        public const textChanged:_1HZ = new _1HZ();

        public var textField:TextField;
        private var _0C0:_0oB;
        private var MT:_1Jo;
        private var size:int = 12;
        private var color:uint;
        private var font:ml;
        private var bold:Boolean;
        private var autoSize:String = "left";
        private var _22R:String = "left";
        private var pD:String;
        private var multiline:Boolean;
        private var wordWrap:Boolean;
        private var textWidth:Number = 0;
        private var textHeight:Number = 0;
        private var html:Boolean;
        private var displayAsPassword:Boolean;
        private var _0g:String;
        private var leftMargin:int = 0;
        private var indent:int = 0;
        private var leading:int = 0;


        private static function _1rd(_arg1:TextLineMetrics):Number{
            return ((_arg1.height - _arg1.leading));
        }


        public function setIndent(_arg1:int):_13j{
            this.indent = _arg1;
            this._1ZO();
            return (this);
        }

        public function setLeading(_arg1:int):_13j{
            this.leading = _arg1;
            this._1ZO();
            return (this);
        }

        public function setLeftMargin(_arg1:int):_13j{
            this.leftMargin = _arg1;
            this._1ZO();
            return (this);
        }

        public function _2q(_arg1:Boolean):_13j{
            this.displayAsPassword = _arg1;
            this._1ZO();
            return (this);
        }

        public function _0x5(_arg1:String):_13j{
            this._0g = _arg1;
            ((this.textField) && ((this.textField.name = this._0g)));
            return (this);
        }

        public function setSize(_arg1:int):_13j{
            this.size = _arg1;
            this._1ZO();
            return (this);
        }

        public function setColor(_arg1:uint):_13j{
            this.color = _arg1;
            this._1ZO();
            return (this);
        }

        public function setBold(_arg1:Boolean):_13j{
            this.bold = _arg1;
            this._1ZO();
            return (this);
        }

        public function setHorizontalAlign(_arg1:String):_13j{
            this._22R = _arg1;
            this._1ZO();
            return (this);
        }

        public function setAutoSize(_arg1:String):_13j{
            this.autoSize = _arg1;
            this._1ZO();
            return (this);
        }

        public function setMultiLine(_arg1:Boolean):_13j{
            this.multiline = _arg1;
            this._1ZO();
            return (this);
        }

        public function setWordWrap(_arg1:Boolean):_13j{
            this.wordWrap = _arg1;
            this._1ZO();
            return (this);
        }

        public function setTextWidth(_arg1:Number):_13j{
            this.textWidth = _arg1;
            this._1ZO();
            return (this);
        }

        public function setTextHeight(_arg1:Number):_13j{
            this.textHeight = _arg1;
            this._1ZO();
            return (this);
        }

        public function setHTML(_arg1:Boolean):_13j{
            this.html = _arg1;
            return (this);
        }

        public function setStringBuilder(_arg1:_1Jo):_13j{
            this.MT = _arg1;
            this._1pF();
            return (this);
        }

        public function _1QQ():_1Jo{
            return (this.MT);
        }

        public function setPosition(_arg1:Number, _arg2:Number):_13j{
            this.x = _arg1;
            this.y = _arg2;
            return (this);
        }

        public function setVerticalAlign(_arg1:String):_13j{
            this.pD = _arg1;
            return (this);
        }

        public function update():void{
            this._1pF();
        }

        public function _9j(_arg1:ml):void{
            this.font = _arg1;
        }

        public function _1jM(_arg1:_0oB):void{
            this._0C0 = _arg1;
            this._1pF();
        }

import flash.text.TextField;
import flash.text.TextFormat;

public function ri(_arg1:TextField):void{
            _arg1.width = this.textWidth;
            _arg1.height = this.textHeight;
            ((this._0g) && ((_arg1.name = this._0g)));
            this.be(_arg1);
            this.textField = _arg1;
            this.iT();
            addChild(this.textField);
        }

        private function _1ZO():void{
            if (this.textField)
            {
                this.iT();
            }
        }

        private function iT():void{
            this.Pm();
            this._03T();
        }

        private function _03T():void{
            if (this.textWidth != 0)
            {
                this.textField.width = this.textWidth;
            }
            if (this.textHeight != 0)
            {
                this.textField.height = this.textHeight;
            }
            this.textField.selectable = false;
            this.textField.textColor = this.color;
            this.textField.autoSize = this.autoSize;
            this.textField.multiline = this.multiline;
            this.textField.wordWrap = this.wordWrap;
            this.textField.displayAsPassword = this.displayAsPassword;
            this.textField.embedFonts = true;
        }

        private function Pm():void{
            var _local1:TextFormat = new TextFormat();
            _local1.size = this.size;
            _local1.font = this.font.getName();
            _local1.bold = this.bold;
            _local1.align = this._22R;
            _local1.leftMargin = this.leftMargin;
            _local1.indent = this.indent;
            _local1.leading = this.leading;
            this.setTextFormat(_local1);
        }

        private function be(_arg1:TextField):void{
            if (this.textField)
            {
                _arg1.text = this.textField.text;
                removeChild(this.textField);
            }
        }

        private function _1pF():void{
            var _local1:String;
            if (this.HP())
            {
                this.MT._1jM(this._0C0);
                _local1 = this.MT.getString();
                this._1wG(_local1);
                this.fU();
                this.Ic();
                this.textChanged.dispatch();
            }
        }

        private function Ic():void{
            this.textField.height;
        }

        public function _1wG(_arg1:String):void{
            if (this.html)
            {
                this.textField.htmlText = _arg1;
            } else
            {
                this.textField.text = _arg1;
            }
        }

        private function fU():void{
            var _local1:TextLineMetrics;
            if (this.pD == MIDDLE)
            {
                this._1p4();
            } else
            {
                if (this.pD == BOTTOM)
                {
                    _local1 = this.textField.getLineMetrics(0);
                    this.textField.y = -(_1rd(_local1));
                }
            }
        }

        private function _1p4():void{
            this.textField.height;
            var _local1:TextFormat = this.textField.getTextFormat();
            var _local2:Number = this.vN(_local1);
            var _local3:Number = this.rV(_local1);
            this.textField.y = -((this.textField.height - (((_local2 / 2) + _local3) + dG)));
        }

        private function vN(_arg1:TextFormat):Number{
            return (this.font.qV(Number(_arg1.size)));
        }

        private function rV(_arg1:TextFormat):Number{
            return (this.font.Tq(Number(_arg1.size)));
        }

        public function setTextFormat(_arg1:TextFormat, _arg2:int=-1, _arg3:int=-1):void{
            this.textField.defaultTextFormat = _arg1;
            this.textField.setTextFormat(_arg1, _arg2, _arg3);
        }

        private function HP():Boolean{
            return (((((this._0C0) && (this.MT))) && (this.textField)));
        }

        public function Tq():Number{
            return (this.font.Tq(Number(this.textField.getTextFormat().size)));
        }

        public function _1UU():String{
            return (((this.textField) ? this.textField.text : "null"));
        }

        public function getColor():uint{
            return (this.color);
        }

        public function _02p():int{
            return (this.size);
        }

        public function _0WG():Boolean{
            return (!((this.textField == null)));
        }

        public function _1lv():Boolean{
            return (!((this._0C0 == null)));
        }

        public function d9():Boolean{
            return (!((this.font == null)));
        }

        public function getTextFormat(_arg1:int=-1, _arg2:int=-1):TextFormat{
            return (this.textField.getTextFormat(_arg1, _arg2));
        }


    }
}//package _CU

