// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Pet

package com.company.assembleegameclient.objects{
    import 0UV.0Hm;
    import 5z.0tK;
    import com.company.assembleegameclient.util._BJ;
    import 5z.zL;
    import _04_._1JZ;
    import 0qj.6P;
    import AO.du;
    import 0qj.1ae;
    import 0nG.PetPanel;
    import com.company.assembleegameclient.game.GameSprite;
    import ZE.Panel;
    import com.company.assembleegameclient.util.0s0;
    import com.company.assembleegameclient.util._V4;

    public class Pet extends GameObject implements 18p {

        private var YG:0Hm;
        public var vo:0tK;
        public var skin:_BJ;
        public var VI:_BJ;
        public var s0:int;
        public var 13O:Boolean = false;
        private var 1G5:zL;

        public function Pet(_arg1:XML){
            super(_arg1);
            10J = true;
            this.YG = _1JZ.0JF().getInstance(0Hm);
            this.1G5 = _1JZ.0JF().getInstance(zL);
            this.1G5.1tI();
        }

        public function getTooltip():1ae{
            var _local1:1ae = new 6P(0x363636, 0x9B9B9B, du.1Mc, du.Oy, 200);
            return (_local1);
        }

        public function getPanel(_arg1:GameSprite):Panel{
            return (new PetPanel(_arg1, this.vo));
        }

        public function 1es(_arg1:int):void{
            var _local5:0s0;
            this.s0 = _arg1;
            var _local2:XML = ObjectLibrary.0vY(ObjectLibrary.Uq(_arg1));
            var _local3:String = _local2.AnimatedTexture.File;
            var _local4:int = _local2.AnimatedTexture.Index;
            if (this.skin == null)
            {
                this.13O = true;
                this.skin = _V4.1Q2(_local3, _local4);
                this.VI = this.skin;
            } else
            {
                this.skin = _V4.1Q2(_local3, _local4);
            };
            this.13O = (this.skin == this.VI);
            _local5 = this.skin.imageFromAngle(0, _BJ.1OS, 0);
            3q = this.skin;
            texture_ = _local5.image_;
            mask_ = _local5.mask_;
        }

        public function 1uR():void{
            var _local1:0s0;
            this.s0 = -1;
            if (this.VI == null)
            {
                return;
            };
            _local1 = this.VI.imageFromAngle(0, _BJ.1OS, 0);
            this.13O = true;
            3q = this.VI;
            texture_ = _local1.image_;
            mask_ = _local1.mask_;
        }


    }
}//package com.company.assembleegameclient.objects

