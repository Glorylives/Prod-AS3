// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.as

package 0sC{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import _1aA.Lz;
    import XF.lY;
    import flash.events.MouseEvent;
    import 1n4.1cA;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import 1n4.1WS;
    import flash.display.DisplayObject;
    import 12X.*;

    public class as extends Sprite implements 0u5 {

        private static const VJ:int = 18;

        private var 0mY:_1HZ;
        private var pz:_1HZ;
        private var userName:String = "";
        private var 0D3:Boolean;
        private var 08W:_13j;
        private var 0W6:Lz;
        private var 1TI:Lz;

        public function as(){
            this.0HD();
            this.fp();
        }

        public function get login():_1HZ{
            return (this.0mY);
        }

        public function get register():_1HZ{
            return (this.pz);
        }

        private function 0HD():void{
            this.1GO();
            this.1Ew();
            this.1P4();
        }

        private function fp():void{
            this.0mY = new lY(this.1TI, MouseEvent.CLICK);
            this.pz = new lY(this.0W6, MouseEvent.CLICK);
        }

        private function 1GO():void{
            this.08W = this.00p();
            this.08W.setStringBuilder(new 1cA().setParams(du.0xq));
        }

        private function 00p():_13j{
            var _local1:_13j = new _13j();
            _local1.setAutoSize(TextFieldAutoSize.RIGHT);
            _local1.setSize(VJ).setColor(0xB3B3B3);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
            return (_local1);
        }

        private function 1Ew():void{
            this.1TI = new Lz(du.1h8, VJ, false);
            this.1TI.setAutoSize(TextFieldAutoSize.RIGHT);
        }

        private function 1P4():void{
            this.0W6 = new Lz(du.cK, VJ, false);
            this.0W6.setAutoSize(TextFieldAutoSize.RIGHT);
        }

        private function fs():DisplayObject{
            var _local1:_13j = new _13j();
            _local1.setColor(0xB3B3B3).setAutoSize(TextFieldAutoSize.RIGHT).setSize(VJ);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
            _local1.setStringBuilder(new 1WS(" - "));
            return (_local1);
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
                this.1kX();
            } else
            {
                this.1gP();
            }
        }

        private function 1F8():void{
            while (numChildren)
            {
                removeChildAt(0);
            }
        }

        private function 1kX():void{
            this.08W.setStringBuilder(new 1cA().setParams(du.25t, {userName:this.userName}));
            this.1TI.2-Y(du.hh);
            this.P2(this.08W, this.1TI);
        }

        private function 1gP():void{
            this.08W.setStringBuilder(new 1cA().setParams(du.0xq, {userName:this.userName}));
            this.1TI.2-Y(du.1h8);
            this.P2(this.08W, this.fs(), this.0W6, this.fs(), this.1TI);
        }

        private function P2(... _args):void{
            var _local2:DisplayObject;
            var _local3:int;
            var _local4:int;
            var _local5:DisplayObject;
            for each (_local2 in _args)
            {
                addChild(_local2);
            }
            _local3 = 0;
            _local4 = _args.length;
            while (_local4--)
            {
                _local5 = _args[_local4];
                _local5.x = _local3;
                _local3 = (_local3 - _local5.width);
            }
        }


    }
}//package 0sC

