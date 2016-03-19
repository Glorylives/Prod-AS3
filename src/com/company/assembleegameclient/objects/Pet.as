// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Pet

package com.company.assembleegameclient.objects{
import _0UV._0Hm;

import _0nG.PetPanel;

import _0qj._1ae;
import _0qj._6P;

import _5z._0tK;

import _AO._du;

import com.company.assembleegameclient.util._BJ;
    import _04_._1JZ;
    import com.company.assembleegameclient.game.GameSprite;
    import _ZE.Panel;
    import com.company.assembleegameclient.util._0s0;
    import com.company.assembleegameclient.util._V4;

    public class Pet extends GameObject implements _18p {

        private var YG:_0Hm;
        public var vo:_0tK;
        public var skin:_BJ;
        public var VI:_BJ;
        public var s0:int;
        public var _13O:Boolean = false;
        private var _1G5:zL;

        public function Pet(_arg1:XML){
            super(_arg1);
            _10J = true;
            this.YG = _1JZ._0JF().getInstance(_0Hm);
            this._1G5 = _1JZ._0JF().getInstance(zL);
            this._1G5._1tI();
        }

        public function getTooltip():_1ae{
            var _local1:_1ae = new _6P(0x363636, 0x9B9B9B, _du._1Mc, _du._Oy, 200);
            return (_local1);
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new PetPanel(_arg1, this.vo));
        }

        public function _1es(_arg1:int):void{
            var _local5:_0s0;
            this.s0 = _arg1;
            var _local2:XML = ObjectLibrary._0vY(ObjectLibrary.Uq(_arg1));
            var _local3:String = _local2.AnimatedTexture.File;
            var _local4:int = _local2.AnimatedTexture.Index;
            if (this.skin == null)
            {
                this._13O = true;
                this.skin = _V4._1Q2(_local3, _local4);
                this.VI = this.skin;
            } else
            {
                this.skin = _V4._1Q2(_local3, _local4);
            }
            this._13O = (this.skin == this.VI);
            _local5 = this.skin.imageFromAngle(0, _BJ._1OS, 0);
            _3q = this.skin;
            texture_ = _local5.image_;
            mask_ = _local5.mask_;
        }

        public function _1uR():void{
            var _local1:_0s0;
            this.s0 = -1;
            if (this.VI == null)
            {
                return;
            }
            _local1 = this.VI.imageFromAngle(0, _BJ._1OS, 0);
            this._13O = true;
            _3q = this.VI;
            texture_ = _local1.image_;
            mask_ = _local1.mask_;
        }


    }
}//package com.company.assembleegameclient.objects

