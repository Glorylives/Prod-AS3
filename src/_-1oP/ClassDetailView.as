// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1oP.ClassDetailView

package 1oP{
    import flash.display.Sprite;
    import 1PB.cO;
    import _CU._13j;
    import flash.display.Bitmap;
    import OZ.11T;
    import kabam.rotmg.assets.model.Animation;
    import flash.filters.DropShadowFilter;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import AO.du;
    import kabam.rotmg.assets.services.02W;
    import 1n4.1WS;

    public class ClassDetailView extends Sprite {

        private static const Op:int = 205;
        private static const WIDTH:int = 344;
        private static const r-:int = 188;

        private const 1he:cO = new cO();

        private var classNameText:_13j;
        private var 11l:_13j;
        private var 0jU:_13j;
        private var vh:_13j;
        private var 6s:_13j;
        private var 0MF:_13j;
        private var 1P5:_13j;
        private var Yc:Bitmap;
        private var W8:_13j;
        private var 1kS:_13j;
        private var HQ:11T;
        private var 1ed:Boolean;
        private var 3I:Sprite;
        private var 1PO:Animation;

        public function ClassDetailView(){
            var _local1:DropShadowFilter;
            super();
            this.1he.complete.add(this.layout);
            _local1 = new DropShadowFilter(0, 0, 0, 1, 8, 8);
            this.3I = new Sprite();
            this.3I.x = ((WIDTH - 104) * 0.5);
            addChild(this.3I);
            this.classNameText = new _13j().setSize(20).setColor(0xFFFFFF).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setTextWidth(r-);
            this.classNameText.filters = [_local1];
            this.1he.push(this.classNameText.textChanged);
            addChild(this.classNameText);
            this.11l = new _13j().setSize(14).setColor(0xFFFFFF).setTextWidth(r-).setWordWrap(true);
            this.11l.filters = [_local1];
            this.1he.push(this.11l.textChanged);
            addChild(this.11l);
            this.0jU = new _13j().setSize(14).setColor(0xFFFFFF).setBold(true);
            this.0jU.filters = [_local1];
            this.0jU.setStringBuilder(new 1cA().setParams(du.0QN));
            this.1he.push(this.0jU.textChanged);
            addChild(this.0jU);
            this.vh = new _13j().setSize(14).setColor(0xFFFFFF).setBold(true);
            this.vh.filters = [_local1];
            this.vh.setStringBuilder(new 1cA().setParams(du.0ev));
            this.1he.push(this.vh.textChanged);
            addChild(this.vh);
            this.6s = new _13j().setSize(16).setColor(0xFFFFFF).setBold(true);
            this.6s.filters = [_local1];
            this.1he.push(this.6s.textChanged);
            addChild(this.6s);
            this.0MF = new _13j().setSize(14).setColor(0xFFFFFF).setBold(true);
            this.0MF.filters = [_local1];
            this.0MF.setStringBuilder(new 1cA().setParams(du.1GT));
            this.1he.push(this.0MF.textChanged);
            addChild(this.0MF);
            this.1P5 = new _13j().setSize(16).setColor(15387756).setBold(true);
            this.1P5.filters = [_local1];
            this.1he.push(this.1P5.textChanged);
            addChild(this.1P5);
            this.Yc = new Bitmap(02W.19i());
            this.Yc.filters = [_local1];
            addChild(this.Yc);
            this.W8 = new _13j().setSize(14).setColor(0xFFFFFF).setBold(true);
            this.W8.filters = [_local1];
            this.W8.setStringBuilder(new 1cA().setParams(du.0dm));
            this.W8.visible = false;
            addChild(this.W8);
            this.1kS = new _13j().setSize(14).setColor(0xFFFFFF);
            this.1kS.filters = [_local1];
            this.1kS.visible = false;
            addChild(this.1kS);
            this.HQ = new 11T();
            addChild(this.HQ);
        }

        public function Va(_arg1:String, _arg2:String, _arg3:int, _arg4:int, _arg5:int):void{
            this.classNameText.setStringBuilder(new 1cA().setParams(_arg1));
            this.11l.setStringBuilder(new 1cA().setParams(_arg2));
            this.6s.setStringBuilder(new 1WS(String(_arg4)));
            this.1P5.setStringBuilder(new 1WS(String(_arg5)));
        }

        public function iW(_arg1:String, _arg2:int):void{
            this.1ed = !((_arg2 == -1));
            if (this.1ed)
            {
                this.1kS.setStringBuilder(new 1cA().setParams(du.e1, {
                    goal:String(_arg2),
                    quest:_arg1
                }));
                this.1kS.y = (this.W8.y + this.W8.height);
                this.1kS.x = ((WIDTH / 2) - (this.1kS.width / 2));
                this.1he.push(this.1kS.textChanged);
                this.1he.push(this.W8.textChanged);
            }
        }

        public function 06k(_arg1:Animation):void{
            ((this.1PO) && (this.gX(this.1PO)));
            this.1PO = _arg1;
            ((this.1PO) && (this.1aO(this.1PO)));
            this.layout();
        }

        private function gX(_arg1:Animation):void{
            _arg1.stop();
            this.3I.removeChild(_arg1);
        }

        private function 1aO(_arg1:Animation):void{
            this.3I.addChild(_arg1);
            _arg1.start();
        }

        private function layout():void{
            this.classNameText.x = ((WIDTH / 2) - (this.classNameText.width / 2));
            this.classNameText.y = 110;
            this.11l.y = ((this.classNameText.y + this.classNameText.height) + 5);
            this.11l.x = ((WIDTH / 2) - (this.11l.width / 2));
            this.0jU.y = ((this.11l.y + this.11l.height) + 20);
            this.0jU.x = (Op - this.0jU.width);
            this.HQ.y = (this.0jU.y - 2);
            this.HQ.x = (Op + 18);
            this.vh.y = ((this.0jU.y + this.0jU.height) + 5);
            this.vh.x = (Op - this.vh.width);
            this.6s.y = this.vh.y;
            this.6s.x = (Op + 18);
            this.0MF.y = ((this.vh.y + this.vh.height) + 5);
            this.0MF.x = (Op - this.0MF.width);
            this.1P5.y = this.0MF.y;
            this.1P5.x = (Op + 18);
            this.Yc.y = (this.0MF.y - 2);
            this.Yc.x = ((this.1P5.x + this.1P5.width) + 3);
            this.W8.y = ((this.0MF.y + this.0MF.height) + 17);
            this.W8.x = ((WIDTH / 2) - (this.W8.width / 2));
            this.W8.visible = this.1ed;
            this.1kS.y = (this.W8.y + this.W8.height);
            this.1kS.x = ((WIDTH / 2) - (this.1kS.width / 2));
            this.1kS.visible = this.1ed;
        }


    }
}//package 1oP

