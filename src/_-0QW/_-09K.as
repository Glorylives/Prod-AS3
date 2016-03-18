// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.09K

package 0QW{
    import 0qj.1ae;
    import com.company.ui._eG;
    import flash.filters.DropShadowFilter;

    public class 09K extends 1ae {

        private static const 1bH:int = 180;

        private var 064:_eG;
        private var 0ms:_eG;

        public function 09K(_arg1:XML){
            super(0x363636, 1, 0x9B9B9B, 1, true);
            this.064 = new _eG(16, 0xFFFFFF, false, (1bH - 4), 0);
            this.064.setBold(true);
            this.064.wordWrap = true;
            this.064.text = String(_arg1.@id);
            this.064.1zx();
            this.064.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            this.064.x = 0;
            this.064.y = 0;
            addChild(this.064);
            var _local2 = "";
            if (_arg1.hasOwnProperty("Speed"))
            {
                _local2 = (_local2 + (("Speed: " + Number(_arg1.Speed).toFixed(2)) + "\n"));
            } else
            {
                _local2 = (_local2 + "Speed: 1.00\n");
            };
            if (_arg1.hasOwnProperty("NoWalk"))
            {
                _local2 = (_local2 + "Unwalkable\n");
            };
            if (_arg1.hasOwnProperty("Push"))
            {
                _local2 = (_local2 + "Push\n");
            };
            if (_arg1.hasOwnProperty("Sink"))
            {
                _local2 = (_local2 + "Sink\n");
            };
            if (_arg1.hasOwnProperty("Sinking"))
            {
                _local2 = (_local2 + "Sinking\n");
            };
            if (_arg1.hasOwnProperty("Animate"))
            {
                _local2 = (_local2 + "Animated\n");
            };
            if (_arg1.hasOwnProperty("RandomOffset"))
            {
                _local2 = (_local2 + "Randomized\n");
            };
            this.0ms = new _eG(14, 0xB3B3B3, false, 1bH, 0);
            this.0ms.wordWrap = true;
            this.0ms.text = String(_local2);
            this.0ms.1zx();
            this.0ms.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            this.0ms.x = 0;
            this.0ms.y = (this.064.height + 2);
            addChild(this.0ms);
        }

    }
}//package 0QW

