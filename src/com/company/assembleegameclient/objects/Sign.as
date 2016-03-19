// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Sign

package com.company.assembleegameclient.objects{
    import _1qQ._0oB;
    import _04_._1JZ;

import _AO._nz;

import flash.text.TextField;
    import flash.text.TextFieldAutoSize;
    import flash.text.TextFormat;
    import flash.text.TextFormatAlign;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.assembleegameclient.map._1C8;

    public class Sign extends GameObject {

        private var _0C0:_0oB;
        private var _0sQ:_nz;

        public function Sign(_arg1:XML){
            super(_arg1);
            texture_ = null;
            this._0C0 = _1JZ._0JF().getInstance(_0oB);
            this._0sQ = _1JZ._0JF().getInstance(_nz);
        }

        protected function getTexture(_arg1:_1C8, _arg2:int):BitmapData{
            if (texture_ != null)
            {
                return (texture_);
            }
            var _local3:TextField = new TextField();
            _local3.multiline = true;
            _local3.wordWrap = false;
            _local3.autoSize = TextFieldAutoSize.LEFT;
            _local3.textColor = 0xFFFFFF;
            _local3.embedFonts = true;
            var _local4:TextFormat = new TextFormat();
            _local4.align = TextFormatAlign.CENTER;
            _local4.font = this._0sQ._0sD().getName();
            _local4.size = 24;
            _local4.color = 0xFFFFFF;
            _local4.bold = true;
            _local3.defaultTextFormat = _local4;
            var _local5:String = this._0C0.getValue(this._1I(name_));
            _local3.text = _local5.split("|").join("\n");
            var _local6:BitmapData = new HL(_local3.width, _local3.height, true, 0);
            _local6.draw(_local3);
            texture_ = TextureRedrawer.redraw(_local6, size_, false, 0);
            return (texture_);
        }

        private function _1I(_arg1:String):String{
            var _local2:Boolean = ((((!((_arg1 == null))) && ((_arg1.charAt(0) == "{")))) && ((_arg1.charAt((_arg1.length - 1)) == "}")));
            return (((_local2) ? _arg1.substr(1, (_arg1.length - 2)) : _arg1));
        }


    }
}//package com.company.assembleegameclient.objects

