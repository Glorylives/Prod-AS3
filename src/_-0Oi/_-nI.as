// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Oi.nI

package 0Oi{
    import flash.display.Sprite;
    import flash.filters.GlowFilter;
    import 0gd.GTween;

    public class nI extends Sprite {

        private var text:ProTipText;

        public function nI(){
            this.text = new ProTipText();
            this.text.x = 300;
            this.text.y = 125;
            addChild(this.text);
            filters = [new GlowFilter(0, 1, 3, 3, 2, 1)];
            mouseEnabled = false;
            mouseChildren = false;
        }

        public function BR(_arg1:String):void{
            this.text.BR(_arg1);
            var _local2:GTween = new GTween(this, 5, {alpha:0});
            _local2.delay = 5;
            _local2.onComplete = this.Du;
        }

        private function Du(_arg1:GTween):void{
            ((parent) && (parent.removeChild(this)));
        }


    }
}//package 0Oi

