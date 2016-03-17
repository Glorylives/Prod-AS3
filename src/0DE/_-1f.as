// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0DE.1f

package 0DE{
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.display.Bitmap;
    import h0.1mR;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.display.BitmapData;
    import 0Px.0J9;
    import com.company.util.AssetLibrary;
    import com.company.assembleegameclient.objects.Player;

    public class 1f extends 14l {

        private static const 0LS:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.DW(0x363636));

        public var 1BD:Bitmap;
        public var itemType:int;
        private var 00v:int;

        public function 1f(_arg1:int, _arg2:1mR, _arg3:Boolean){
            super(_arg1, _arg2, _arg3);
        }

        override public function canHoldItem(_arg1:int):Boolean{
            return ((((_arg1 <= 0)) || ((this.itemType == ObjectLibrary.1Qc(_arg1)))));
        }

        public function setType(_arg1:int):void{
            var _local2:BitmapData;
            var _local3:int;
            var _local4:int;
            switch (_arg1)
            {
                case 0J9.1FT:
                    break;
                case 0J9.0Us:
                    _local2 = AssetLibrary.1JR("lofiObj5", 48);
                    break;
                case 0J9.yn:
                    _local2 = AssetLibrary.1JR("lofiObj5", 96);
                    break;
                case 0J9.1yX:
                    _local2 = AssetLibrary.1JR("lofiObj5", 80);
                    break;
                case 0J9.U3:
                    _local2 = AssetLibrary.1JR("lofiObj6", 80);
                    break;
                case 0J9.U5:
                    _local2 = AssetLibrary.1JR("lofiObj6", 112);
                    break;
                case 0J9.1vW:
                    _local2 = AssetLibrary.1JR("lofiObj5", 0);
                    break;
                case 0J9.1qq:
                    _local2 = AssetLibrary.1JR("lofiObj5", 32);
                    break;
                case 0J9.0hG:
                    _local2 = AssetLibrary.1JR("lofiObj5", 64);
                    break;
                case 0J9.1S5:
                    _local2 = AssetLibrary.1JR("lofiObj", 44);
                    break;
                case 0J9.0or:
                    _local2 = AssetLibrary.1JR("lofiObj6", 64);
                    break;
                case 0J9.If:
                    _local2 = AssetLibrary.1JR("lofiObj6", 160);
                    break;
                case 0J9.hU:
                    _local2 = AssetLibrary.1JR("lofiObj6", 32);
                    break;
                case 0J9.ne:
                    _local2 = AssetLibrary.1JR("lofiObj5", 16);
                    break;
                case 0J9.qx:
                    _local2 = AssetLibrary.1JR("lofiObj6", 48);
                    break;
                case 0J9.s-:
                    _local2 = AssetLibrary.1JR("lofiObj6", 96);
                    break;
                case 0J9.Xg:
                    _local2 = AssetLibrary.1JR("lofiObj5", 112);
                    break;
                case 0J9.g9:
                    _local2 = AssetLibrary.1JR("lofiObj6", 128);
                    break;
                case 0J9.xM:
                    _local2 = AssetLibrary.1JR("lofiObj6", 0);
                    break;
                case 0J9.0-q:
                    _local2 = AssetLibrary.1JR("lofiObj6", 16);
                    break;
                case 0J9.0LV:
                    _local2 = AssetLibrary.1JR("lofiObj6", 144);
                    break;
                case 0J9.14L:
                    _local2 = AssetLibrary.1JR("lofiObj6", 176);
                    break;
                case 0J9.av:
                    _local2 = AssetLibrary.1JR("lofiObj6", 192);
                    break;
                case 0J9.Rd:
                    _local2 = AssetLibrary.1JR("lofiObj3", 540);
                    break;
                case 0J9.08C:
                    _local2 = AssetLibrary.1JR("lofiObj3", 555);
                    break;
            };
            if (_local2 != null)
            {
                this.1BD = new Bitmap(_local2);
                this.1BD.x = BORDER;
                this.1BD.y = BORDER;
                this.1BD.scaleX = 4;
                this.1BD.scaleY = 4;
                this.1BD.filters = [0LS];
                addChildAt(this.1BD, 0);
            };
            this.itemType = _arg1;
        }

        override public function setItem(_arg1:int):Boolean{
            var _local2:Boolean = super.setItem(_arg1);
            if (_local2)
            {
                this.1BD.visible = (0ep.itemId <= 0);
                this.04L();
            };
            return (_local2);
        }

        private function 04L():void{
            var _local1:XML;
            this.00v = 0;
            if (0ep.itemId > 0)
            {
                _local1 = ObjectLibrary.GD[0ep.itemId];
                if (((_local1) && (_local1.hasOwnProperty("Usable"))))
                {
                    if (_local1.hasOwnProperty("MultiPhase"))
                    {
                        this.00v = _local1.MpEndCost;
                    } else
                    {
                        this.00v = _local1.MpCost;
                    };
                };
            };
        }

        public function updateDim(_arg1:Player):void{
            0ep.setDim(((_arg1) && ((_arg1.12a < this.00v))));
        }

        override protected function beginDragCallback():void{
            this.1BD.visible = true;
        }

        override protected function endDragCallback():void{
            this.1BD.visible = (0ep.itemId <= 0);
        }

        override protected function getBackgroundColor():int{
            return (0x454545);
        }


    }
}//package 0DE

