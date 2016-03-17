// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.NewAbility

package 2--{
    import 1t6.1r2;
    import flash.display.DisplayObjectContainer;
    import 0uE.KR;
    import _CU._13j;
    import 1t6.Dialog;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import _Jy._1HZ;
    import 1t6.*;

    public class NewAbility extends 1Xr implements 0DY {

        private const 0cE:1r2 = new 1r2();
        private const 25n:DisplayObjectContainer = KR.K();
        private const D1:Number = NewAbility.25n.width;
        private const 1vw:Number = NewAbility.25n.height;

        public var 00k:String;
        private var 1Bb:_13j;

        public function NewAbility(_arg1:String){
            this.1Bb = new _13j();
            this.00k = _arg1;
            super("NewAbility.gratz", "NewAbility.text", "NewAbility.righteous", null, null);
            this.0cE.add(this, Dialog.LEFT_BUTTON);
        }

        public function 026():String{
            return (this.00k);
        }

        override protected function makeUIAndAdd():void{
            this.1Bb.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE).setColor(9632505).setSize(16).setBold(true).setStringBuilder(new 1cA().setParams(this.00k));
            this.25n.addChild(this.1Bb);
            addChild(this.25n);
            box_.addChild(this.25n);
            0uD.pushArgs(this.1Bb.textChanged);
        }

        override protected function drawAdditionalUI():void{
            super.drawAdditionalUI();
            this.1Bb.x = (this.D1 / 2);
            this.1Bb.y = (this.1vw / 2);
            this.25n.x = ((WIDTH - this.25n.width) / 2);
            this.25n.y = (a.getBounds(box_).bottom + Tw);
            leftButton.y = (this.25n.getBounds(box_).bottom + 0Jn);
        }

        public function PC():_1HZ{
            return (this.0cE.PC());
        }


    }
}//package 2--

