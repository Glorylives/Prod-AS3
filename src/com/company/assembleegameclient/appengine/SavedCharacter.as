// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.appengine.SavedCharacter

package com.company.assembleegameclient.appengine{
    import _5z._0tK;
    import _04_._1JZ;
    import _5z._zL;
    import com.company.assembleegameclient.util._V4;
    import com.company.assembleegameclient.util._BJ;
    import com.company.assembleegameclient.util._0s0;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.display.BitmapData;
    import _1yZ._1go;
    import com.company.util._hd;
    import flash.geom.ColorTransform;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.objects.ObjectLibrary;

    public class SavedCharacter {

        public var gI:XML;
        public var name_:String = null;
        private var pet:_0tK;

        public function SavedCharacter(_arg1:XML, _arg2:String){
            var _local3:XML;
            var _local4:int;
            var _local5:_0tK;
            super();
            this.gI = _arg1;
            this.name_ = _arg2;
            if (this.gI.hasOwnProperty("Pet"))
            {
                _local3 = new XML(this.gI.Pet);
                _local4 = _local3.@instanceId;
                _local5 = _1JZ._0JF().getInstance(_zL).getPetVO(_local4);
                _local5.apply(_local3);
                this.BP(_local5);
            };
        }

        public static function getImage(_arg1:SavedCharacter, _arg2:XML, _arg3:int, _arg4:int, _arg5:Number, _arg6:Boolean, _arg7:Boolean):BitmapData{
            var _local8:_BJ = _V4._1Q2(String(_arg2.AnimatedTexture.File), int(_arg2.AnimatedTexture.Index));
            var _local9:_0s0 = _local8.imageFromDir(_arg3, _arg4, _arg5);
            var _local10:int = (((_arg1)!=null) ? _arg1.tex1() : null);
            var _local11:int = (((_arg1)!=null) ? _arg1.tex2() : null);
            var _local12:BitmapData = TextureRedrawer.resize(_local9.image_, _local9.mask_, 100, false, _local10, _local11);
            _local12 = _1go._0Lr(_local12, 0);
            if (!_arg6)
            {
                _local12 = _hd._07J(_local12, new ColorTransform(0, 0, 0, 0.5, 0, 0, 0, 0));
            } else
            {
                if (!_arg7)
                {
                    _local12 = _hd._07J(_local12, new ColorTransform(0.75, 0.75, 0.75, 1, 0, 0, 0, 0));
                };
            };
            return (_local12);
        }

        public static function _0Ys(_arg1:SavedCharacter, _arg2:SavedCharacter):Number{
            var _local3:Number = ((Parameters.data_.charIdUseMap.hasOwnProperty(_arg1.charId())) ? Parameters.data_.charIdUseMap[_arg1.charId()] : 0);
            var _local4:Number = ((Parameters.data_.charIdUseMap.hasOwnProperty(_arg2.charId())) ? Parameters.data_.charIdUseMap[_arg2.charId()] : 0);
            if (_local3 != _local4)
            {
                return ((_local4 - _local3));
            };
            return ((_arg2.Io() - _arg1.Io()));
        }


        public function charId():int{
            return (int(this.gI.@id));
        }

        public function name():String{
            return (this.name_);
        }

        public function objectType():int{
            return (int(this.gI.ObjectType));
        }

        public function skinType():int{
            return (int(this.gI.Texture));
        }

        public function level():int{
            return (int(this.gI.Level));
        }

        public function tex1():int{
            return (int(this.gI.Tex1));
        }

        public function tex2():int{
            return (int(this.gI.Tex2));
        }

        public function Io():int{
            return (int(this.gI.Exp));
        }

        public function fame():int{
            return (int(this.gI.CurrentFame));
        }

        public function _0ki():String{
            return (ObjectLibrary._118[this.objectType()]);
        }

        public function getPetVO():_0tK{
            return (this.pet);
        }

        public function BP(_arg1:_0tK):void{
            this.pet = _arg1;
        }


    }
}//package com.company.assembleegameclient.appengine

