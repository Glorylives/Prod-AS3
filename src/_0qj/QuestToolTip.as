// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.QuestToolTip

package _0qj{
import _AO._du;

import _CU._13j;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.objects.GameObject;

    public class QuestToolTip extends _1ae {

        private var text_:_13j;
        public var _38:_0S7;

        public function QuestToolTip(_arg1:GameObject){
            super(6036765, 1, 16549442, 1, false);
            this.text_ = new _13j().setSize(22).setColor(16549442).setBold(true);
            this.text_.setStringBuilder(new 1cA().setParams(_du._0yY));
            this.text_.filters = [new DropShadowFilter(0, 0, 0)];
            this.text_.x = 0;
            this.text_.y = 0;
            _1he.push(this.text_.textChanged);
            addChild(this.text_);
            this._38 = new _0S7(0xB3B3B3, true, _arg1);
            this._38.x = 0;
            this._38.y = 32;
            _1he.push(this._38._0Ex);
            addChild(this._38);
            filters = [];
        }

    }
}//package 0qj

