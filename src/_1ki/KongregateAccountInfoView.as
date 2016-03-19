// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1ki.KongregateAccountInfoView

package 1ki{
    import flash.display.Sprite;
    import AO.du;
    import XF.lY;
    import _CU._13j;
    import _1aA.Lz;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import _Jy._1HZ;
    import 1n4.1cA;
    import flash.display.DisplayObject;
    import 12X.*;

    public class KongregateAccountInfoView extends Sprite implements 0u5 {

        private static const cK:String = du.3M;//"KongregateAccountInfoView.register"
        private static const VJ:int = 18;

        private var pz:lY;
        private var 08W:_13j;
        private var 0W6:Lz;
        private var userName:String = "";
        private var 0D3:Boolean;

        public function KongregateAccountInfoView(){
            this.1GO();
            this.1jO();
        }

        private function 1GO():void{
            this.08W = new _13j().setSize(VJ).setColor(0xB3B3B3);
            this.08W.setAutoSize(TextFieldAutoSize.RIGHT);
            this.08W.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
            addChild(this.08W);
        }

        private function 1jO():void{
            this.0W6 = new Lz(cK, VJ, false);
            this.0W6.setAutoSize(TextFieldAutoSize.RIGHT);
            this.pz = new lY(this.0W6, MouseEvent.CLICK);
        }

        public function 00K(_arg1:String, _arg2:Boolean):void{
            this.userName = _arg1;
            this.0D3 = _arg2;
            this.vi();
        }

        private function vi():void{
            this.1F8();
            if (this.0D3)
            {
                this.1wK();
            } else
            {
                this.jN();
            }
        }

        private function 1F8():void{
            while (numChildren)
            {
                removeChildAt(0);
            }
        }

        public function get register():_1HZ{
            return (this.pz);
        }

        private function 1wK():void{
            this.08W.setStringBuilder(new 1cA().setParams(du.0LX, {userName:this.userName}));
            this.0S0(this.08W);
        }

        private function jN():void{
            this.08W.setStringBuilder(new 1cA().setParams(du.ab));
            this.0S0(this.08W, this.0W6);
            this.08W.x = this.0W6.getBounds(this).left;
        }

        private function 0S0(... _args):void{
            var _local3:DisplayObject;
            var _local2:int = _args.length;
            while (_local2--)
            {
                _local3 = _args[_local2];
                addChild(_local3);
            }
        }


    }
}//package 1ki

