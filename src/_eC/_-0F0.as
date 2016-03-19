// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.0F0

package eC{
    import flash.display.Sprite;
    import _CU._13j;
    import 0qj.6P;
    import XF.1eq;
    import 1n4.1cA;
    import 1n4.1WS;
    import flash.events.MouseEvent;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;

    public class 0F0 extends Sprite {

        public var 0Ye:String;
        public var description_:String;
        public var nameText_:_13j;
        public var wy:_13j;
        public var 0SM:Boolean;
        public var val_:int = -1;
        public var boost_:int = -1;
        public var 0tt:uint = 0xB3B3B3;
        public var toolTip_:6P;
        public var mJ:1eq;
        public var C7:1eq;

        public function 0F0(_arg1:String, _arg2:String, _arg3:String, _arg4:Boolean){
            this.toolTip_ = new 6P(0x363636, 0x9B9B9B, "", "", 200);
            super();
            this.0Ye = _arg2;
            this.description_ = _arg3;
            this.nameText_ = new _13j().setSize(13).setColor(0xB3B3B3);
            this.nameText_.setStringBuilder(new 1cA().setParams(_arg1));
            this.j5(this.nameText_);
            this.wy = new _13j().setSize(13).setColor(this.0tt).setBold(true);
            this.wy.setStringBuilder(new 1WS("-"));
            this.j5(this.wy);
            this.0SM = _arg4;
            this.mJ = new 1eq(this, MouseEvent.MOUSE_OVER, MouseEvent);
            this.C7 = new 1eq(this, MouseEvent.MOUSE_OUT, MouseEvent);
        }

        public function j5(_arg1:_13j):void{
            _arg1.setAutoSize(TextFieldAutoSize.LEFT);
            _arg1.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(_arg1);
        }

        public function 13Y():void{
            this.toolTip_.setTitle(new 1cA().setParams(this.0Ye));
            this.toolTip_.1wG(new 1cA().setParams(this.description_));
            if (!stage.contains(this.toolTip_))
            {
                stage.addChild(this.toolTip_);
            }
        }

        public function 1Di():void{
            if (this.toolTip_.parent != null)
            {
                this.toolTip_.parent.removeChild(this.toolTip_);
            }
        }

        public function draw(_arg1:int, _arg2:int, _arg3:int):void{
            var _local4:uint;
            if ((((_arg1 == this.val_)) && ((_arg2 == this.boost_))))
            {
                return;
            }
            this.val_ = _arg1;
            this.boost_ = _arg2;
            if ((_arg1 - _arg2) >= _arg3)
            {
                _local4 = 0xFCDF00;
            } else
            {
                if (((((this.0SM) && ((this.val_ <= 0)))) || ((this.boost_ < 0))))
                {
                    _local4 = 16726072;
                } else
                {
                    if (this.boost_ > 0)
                    {
                        _local4 = 6206769;
                    } else
                    {
                        _local4 = 0xB3B3B3;
                    }
                }
            }
            if (this.0tt != _local4)
            {
                this.0tt = _local4;
                this.wy.setColor(this.0tt);
            }
            var _local5:String = this.val_.toString();
            if (this.boost_ != 0)
            {
                _local5 = (_local5 + (((" (" + (((this.boost_ > 0)) ? "+" : "")) + this.boost_.toString()) + ")"));
            }
            this.wy.setStringBuilder(new 1WS(_local5));
            this.wy.x = this.nameText_.getBounds(this).right;
        }


    }
}//package eC

