// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.0fP

package 0QW{
    import 0qj.1ae;
    import com.company.ui.eG;
    import flash.filters.DropShadowFilter;

    public class 0fP extends 1ae {

        private static const 1bH:int = 180;

        private var 064:eG;

        public function 0fP(_arg1:XML){
            super(0x363636, 1, 0x9B9B9B, 1, true);
            this.064 = new eG(16, 0xFFFFFF, false, (1bH - 4), 0);
            this.064.setBold(true);
            this.064.wordWrap = true;
            this.064.text = String(_arg1.@id);
            this.064.1zx();
            this.064.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            this.064.x = 0;
            this.064.y = 0;
            addChild(this.064);
        }

    }
}//package 0QW

