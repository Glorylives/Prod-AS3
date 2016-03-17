// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.0xW

package 0qj{
    import flash.display.Bitmap;
    import flash.display.BitmapData;
    import com.company.util.BitmapUtil;
    import com.company.assembleegameclient.objects.GameObject;

    public class 0xW extends 1ae {

        private var 0Sz:Bitmap;

        public function 0xW(_arg1:GameObject){
            super(6036765, 1, 16549442, 1, false);
            this.0Sz = new Bitmap();
            this.0Sz.x = 0;
            this.0Sz.y = 0;
            var _local2:BitmapData = _arg1.getPortrait();
            _local2 = BitmapUtil.0Bs(_local2, 10, 10, (_local2.width - 20), (_local2.height - 20));
            this.0Sz.bitmapData = _local2;
            addChild(this.0Sz);
            filters = [];
        }

    }
}//package 0qj

