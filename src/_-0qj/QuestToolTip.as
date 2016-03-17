// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.QuestToolTip

package 0qj{
    import _CU._13j;
    import com.company.assembleegameclient.ui.0S7;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.objects.GameObject;

    public class QuestToolTip extends 1ae {

        private var text_:_13j;
        public var 38:0S7;

        public function QuestToolTip(_arg1:GameObject){
            super(6036765, 1, 16549442, 1, false);
            this.text_ = new _13j().setSize(22).setColor(16549442).setBold(true);
            this.text_.setStringBuilder(new 1cA().setParams(du.0yY));
            this.text_.filters = [new DropShadowFilter(0, 0, 0)];
            this.text_.x = 0;
            this.text_.y = 0;
            1he.push(this.text_.textChanged);
            addChild(this.text_);
            this.38 = new 0S7(0xB3B3B3, true, _arg1);
            this.38.x = 0;
            this.38.y = 32;
            1he.push(this.38.0Ex);
            addChild(this.38);
            filters = [];
        }

    }
}//package 0qj

