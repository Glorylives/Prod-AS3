// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0DE.1f

package _0DE{
import _h0._1mR;

import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.display.BitmapData;
    import _0Px._0J9;
    import com.company.util.AssetLibrary;
    import com.company.assembleegameclient.objects.Player;

    public class _1f extends _14l {

        private static const _0LS:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.DW(0x363636));

        public var _1BD:Bitmap;
        public var itemType:int;
        private var _00v:int;

        public function _1f(_arg1:int, _arg2:_1mR, _arg3:Boolean){
            super(_arg1, _arg2, _arg3);
        }

        override public function canHoldItem(_arg1:int):Boolean{
            return ((((_arg1 <= 0)) || ((this.itemType == ObjectLibrary._1Qc(_arg1)))));
        }

        public function setType(_arg1:int):void{
            var _local2:BitmapData;
            var _local3:int;
            var _local4:int;
            switch (_arg1)
            {
                case _0J9._1FT:
                    break;
                case _0J9._0Us:
                    _local2 = AssetLibrary._1JR("lofiObj5", 48);
                    break;
                case _0J9.yn:
                    _local2 = AssetLibrary._1JR("lofiObj5", 96);
                    break;
                case _0J9._1yX:
                    _local2 = AssetLibrary._1JR("lofiObj5", 80);
                    break;
                case _0J9.U3:
                    _local2 = AssetLibrary._1JR("lofiObj6", 80);
                    break;
                case _0J9.U5:
                    _local2 = AssetLibrary._1JR("lofiObj6", 112);
                    break;
                case _0J9._1vW:
                    _local2 = AssetLibrary._1JR("lofiObj5", 0);
                    break;
                case _0J9._1qq:
                    _local2 = AssetLibrary._1JR("lofiObj5", 32);
                    break;
                case _0J9._0hG:
                    _local2 = AssetLibrary._1JR("lofiObj5", 64);
                    break;
                case _0J9._1S5:
                    _local2 = AssetLibrary._1JR("lofiObj", 44);
                    break;
                case _0J9._0or:
                    _local2 = AssetLibrary._1JR("lofiObj6", 64);
                    break;
                case _0J9.If:
                    _local2 = AssetLibrary._1JR("lofiObj6", 160);
                    break;
                case _0J9.hU:
                    _local2 = AssetLibrary._1JR("lofiObj6", 32);
                    break;
                case _0J9.ne:
                    _local2 = AssetLibrary._1JR("lofiObj5", 16);
                    break;
                case _0J9.qx:
                    _local2 = AssetLibrary._1JR("lofiObj6", 48);
                    break;
                case _0J9._s:
                    _local2 = AssetLibrary._1JR("lofiObj6", 96);
                    break;
                case _0J9.Xg:
                    _local2 = AssetLibrary._1JR("lofiObj5", 112);
                    break;
                case _0J9.g9:
                    _local2 = AssetLibrary._1JR("lofiObj6", 128);
                    break;
                case _0J9.xM:
                    _local2 = AssetLibrary._1JR("lofiObj6", 0);
                    break;
                case _0J9._0q:
                    _local2 = AssetLibrary._1JR("lofiObj6", 16);
                    break;
                case _0J9._0LV:
                    _local2 = AssetLibrary._1JR("lofiObj6", 144);
                    break;
                case _0J9._14L:
                    _local2 = AssetLibrary._1JR("lofiObj6", 176);
                    break;
                case _0J9.av:
                    _local2 = AssetLibrary._1JR("lofiObj6", 192);
                    break;
                case _0J9.Rd:
                    _local2 = AssetLibrary._1JR("lofiObj3", 540);
                    break;
                case _0J9._08C:
                    _local2 = AssetLibrary._1JR("lofiObj3", 555);
                    break;
            }
            if (_local2 != null)
            {
                this._1BD = new Bitmap(_local2);
                this._1BD.x = BORDER;
                this._1BD.y = BORDER;
                this._1BD.scaleX = 4;
                this._1BD.scaleY = 4;
                this._1BD.filters = [_0LS];
                addChildAt(this._1BD, 0);
            }
            this.itemType = _arg1;
        }

        override public function setItem(_arg1:int):Boolean{
            var _local2:Boolean = super.setItem(_arg1);
            if (_local2)
            {
                this._1BD.visible = (_0ep.itemId <= 0);
                this._04L();
            }
            return (_local2);
        }

        private function _04L():void{
            var _local1:XML;
            this._00v = 0;
            if (_0ep.itemId > 0)
            {
                _local1 = ObjectLibrary.GD[_0ep.itemId];
                if (((_local1) && (_local1.hasOwnProperty("Usable"))))
                {
                    if (_local1.hasOwnProperty("MultiPhase"))
                    {
                        this._00v = _local1.MpEndCost;
                    } else
                    {
                        this._00v = _local1.MpCost;
                    }
                }
            }
        }

        public function updateDim(_arg1:Player):void{
            _0ep.setDim(((_arg1) && ((_arg1._12a < this._00v))));
        }

        override protected function beginDragCallback():void{
            this._1BD.visible = true;
        }

        override protected function endDragCallback():void{
            this._1BD.visible = (_0ep.itemId <= 0);
        }

        override protected function getBackgroundColor():int{
            return (0x454545);
        }


    }
}//package _0DE

