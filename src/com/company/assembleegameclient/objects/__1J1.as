// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.1J1

package com.company.assembleegameclient.objects{
import _04_._1JZ;

import _1Np._lW;

import com.company.assembleegameclient.util._V4;
    import com.company.assembleegameclient.util._BJ;
import com.company.util.AssetLibrary;

import flash.display.BitmapData;
import flash.utils.Dictionary;
    import com.company.assembleegameclient.appengine.*;

    public class _1J1 extends _27S {

        public static var ng:Boolean = false;

        private var _1mA:Boolean;

        public function _1J1(_arg1:XML){
            var _local2:XML;
            super();
            this._1mA = this.ij();
            if (_arg1.hasOwnProperty("Texture"))
            {
                this.parse(XML(_arg1.Texture));
            } else
            {
                if (_arg1.hasOwnProperty("AnimatedTexture"))
                {
                    this.parse(XML(_arg1.AnimatedTexture));
                } else
                {
                    if (_arg1.hasOwnProperty("RemoteTexture"))
                    {
                        this.parse(XML(_arg1.RemoteTexture));
                    } else
                    {
                        if (_arg1.hasOwnProperty("RandomTexture"))
                        {
                            this.parse(XML(_arg1.RandomTexture));
                        } else
                        {
                            this.parse(_arg1);
                        }
                    }
                }
            }
            for each (_local2 in _arg1.AltTexture)
            {
                this.parse(_local2);
            }
            if (_arg1.hasOwnProperty("Mask"))
            {
                this.parse(XML(_arg1.Mask));
            }
            if (_arg1.hasOwnProperty("Effect"))
            {
                this.parse(XML(_arg1.Effect));
            }
        }

        public override function getTexture(_arg1:int=0):BitmapData{
            if (t9 == null)
            {
                return (texture_);
            }
            var _local2:_27S = t9[(_arg1 % t9.length)];
            return (_local2.getTexture(_arg1));
        }

        override public function getAltTextureData(_arg1:int):_27S{
            if (_1te == null)
            {
                return (null);
            }
            return (_1te[_arg1]);
        }

        private function ij():Boolean{
            var _local1:_0bJ = _1JZ._0JF().getInstance(_0bJ);
            return (_local1._1x1());
        }

        private function parse(_arg1:XML):void{
            var _local2:_0s0;
            var _local3:RemoteTexture;
            var _local4:XML;
            switch (_arg1.name().toString())
            {
                case "Texture":
                    texture_ = AssetLibrary._1JR(String(_arg1.File), int(_arg1.Index));
                    return;
                case "Mask":
                    mask_ = AssetLibrary._1JR(String(_arg1.File), int(_arg1.Index));
                    return;
                case "Effect":
                    _0Wd = new _lW(_arg1);
                    return;
                case "AnimatedTexture":
                    _3q = _V4._1Q2(String(_arg1.File), int(_arg1.Index));
                    _local2 = _3q.imageFromAngle(0, _BJ._1OS, 0);
                    texture_ = _local2.image_;
                    mask_ = _local2.mask_;
                    return;
                case "RemoteTexture":
                    texture_ = AssetLibrary._1JR("lofiObj3", 0xFF);
                    if (this._1mA)
                    {
                        _local3 = new RemoteTexture(_arg1.Id, _arg1.Instance, this._1RG);
                        _local3.run();
                        if (!_1l9.cQ)
                        {
                            ng = true;
                        }
                    }
                    LN = ((_arg1.hasOwnProperty("Right")) ? _BJ.RIGHT : _BJ.DOWN);
                    return;
                case "RandomTexture":
                    t9 = new Vector.<_27S>();
                    for each (_local4 in _arg1.children())
                    {
                        t9.push(new _1J1(_local4));
                    }
                    return;
                case "AltTexture":
                    if (_1te == null)
                    {
                        _1te = new Dictionary();
                    }
                    _1te[int(_arg1.@id)] = new _1J1(_arg1);
                    return;
            }
        }

        private function _1RG(_arg1:BitmapData):void{
            if (_arg1.width > 16)
            {
                _V4.add("remoteTexture", _arg1, null, (_arg1.width / 7), _arg1.height, _arg1.width, _arg1.height, LN);
                _3q = _V4._1Q2("remoteTexture", 0);
                texture_ = _3q.imageFromAngle(0, _BJ._1OS, 0).image_;
            } else
            {
                texture_ = _arg1;
            }
        }


    }
}//package com.company.assembleegameclient.objects

