// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Oi.ProTipText

package 0Oi{
    import flash.display.Sprite;
    import _CU._13j;
    import flash.text.TextFormatAlign;
    import flash.filters.DropShadowFilter;
    import 1n4.1cA;
    import AO.du;

    public class ProTipText extends Sprite {

        private var text:_13j;


        public function BR(_arg1:String):void{
            this.text = new _13j().setSize(18).setColor(0xFFFFFF).setWordWrap(true).setMultiLine(true).setTextWidth(580).setTextHeight(100).setHorizontalAlign(TextFormatAlign.CENTER);
            this.text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            this.text.setStringBuilder(new 1cA().setParams(du.tf, {tip:_arg1}));
            this.text.x = -290;
            mouseEnabled = false;
            mouseChildren = false;
            addChild(this.text);
        }


    }
}//package 0Oi

