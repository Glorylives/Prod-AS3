﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.assets.services.0Vx

package kabam.rotmg.assets.services{
    import com.company.assembleegameclient.util._V4;
    import kabam.rotmg.assets.model.0Ug;
    import com.company.assembleegameclient.util._BJ;
    import flash.display.BitmapData;
    import 1yZ.1go;
    import com.company.util.BitmapUtil;
    import kabam.rotmg.assets.model.Animation;
    import com.company.assembleegameclient.util.0s0;
    import com.company.assembleegameclient.util.TextureRedrawer;

    public class 0Vx {

        private var texture1:int;
        private var texture2:int;
        private var size:int;


        public function 1hi(_arg1:0Ug):_BJ{
            return (_V4.1Q2(_arg1.file, _arg1.index));
        }

        public function makeIcon(_arg1:0Ug, _arg2:int=100, _arg3:int=0, _arg4:int=0):BitmapData{
            this.texture1 = _arg3;
            this.texture2 = _arg4;
            this.size = _arg2;
            var _local5:_BJ = this.1hi(_arg1);
            var _local6:BitmapData = this.1Zt(_local5, _BJ.1OS, 0);
            _local6 = 1go.0Lr(_local6, 0);
            _local6 = BitmapUtil.0Bs(_local6, 6, 6, (_local6.width - 12), (_local6.height - 6));
            return (_local6);
        }

        public function 0QF(_arg1:0Ug, _arg2:int=100, _arg3:int=0, _arg4:int=0):Animation{
            this.texture1 = _arg3;
            this.texture2 = _arg4;
            this.size = _arg2;
            var _local5:_BJ = this.1hi(_arg1);
            var _local6:BitmapData = this.1Zt(_local5, _BJ.1xM, 0.5);
            _local6 = 1go.0Lr(_local6, 0);
            var _local7:BitmapData = this.1Zt(_local5, _BJ.1xM, 0);
            _local7 = 1go.0Lr(_local7, 0);
            var _local8:Animation = new Animation();
            _local8.Zx(_local6, _local7);
            return (_local8);
        }

        private function 1Zt(_arg1:_BJ, _arg2:int, _arg3:Number):BitmapData{
            var _local4:0s0 = _arg1.imageFromDir(_BJ.RIGHT, _arg2, _arg3);
            return (TextureRedrawer.resize(_local4.image_, _local4.mask_, this.size, false, this.texture1, this.texture2));
        }


    }
}//package kabam.rotmg.assets.services

