// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AO._nz

package _AO{
import AO.ml;

import flash.text.Font;
    import flash.text.TextFormat;
    import flash.text.TextField;

    public class _nz {

        public static const MyriadPro:Class = _0TZ;
        public static const MyriadPro_Bold:Class = _1wj;

        private var xH:ml;

        public function _nz(){
            Font.registerFont(MyriadPro);
            Font.registerFont(MyriadPro_Bold);
            var _local1:Font = new MyriadPro();
            this.xH = new ml();
            this.xH.setName(_local1.fontName);
        }

        public function _0sD():ml{
            return (this.xH);
        }

        public function apply(_arg1:TextField, _arg2:int, _arg3:uint, _arg4:Boolean, _arg5:Boolean=false):TextFormat{
            var _local6:TextFormat = _arg1.defaultTextFormat;
            _local6.size = _arg2;
            _local6.color = _arg3;
            _local6.font = this._0sD().getName();
            _local6.bold = _arg4;
            if (_arg5)
            {
                _local6.align = "center";
            };
            _arg1.defaultTextFormat = _local6;
            _arg1.setTextFormat(_local6);
            return (_local6);
        }

        public function Cx(_arg1:TextField, _arg2:int, _arg3:uint, _arg4:Boolean):TextFormat{
            var _local5:TextFormat = _arg1.defaultTextFormat;
            _local5.size = _arg2;
            _local5.color = _arg3;
            _local5.font = this._0sD().getName();
            _local5.bold = _arg4;
            return (_local5);
        }


    }
}//package AO

