// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.0Nh

package _1aA{
    import flash.display.Sprite;
    import 0qj.6P;
    import 1r-.1L6;
    import _CU._13j;
    import flash.display.DisplayObject;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import 1n4.1WS;
    import flash.events.Event;
    import 1Bg.1hy;
    import 1Bg.of;
    import flash.utils.getTimer;
    import flash.events.MouseEvent;
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import 1n4.1Jo;
    import 1r-.*;

    public class 0Nh extends Sprite implements u- {

        public static var 0GU:6P = new 6P(0x363636, 0x9B9B9B, null, "", 150);

        public var 1-P:1L6;
        public var description:String;
        public var level:int;
        public var 0cM:int;
        public var Ru:String;
        public var 0NY:String;
        private var startTime_:int = 0;
        private var nameText_:_13j;
        private var K6:_13j;
        private var ud:DisplayObject;

        public function 0Nh(_arg1:int, _arg2:uint, _arg3:uint, _arg4:String, _arg5:String, _arg6:int, _arg7:int, _arg8:String, _arg9:String, _arg10:DisplayObject):void{
            this.1-P = new 1L6();
            super();
            this.name = _arg4;
            this.description = _arg5;
            this.level = _arg6;
            this.0cM = _arg7;
            this.Ru = _arg8;
            this.0NY = _arg9;
            this.nameText_ = new _13j().setSize(_arg1).setColor(_arg2);
            this.nameText_.setBold(true);
            this.nameText_.setAutoSize(TextFieldAutoSize.RIGHT);
            this.nameText_.setStringBuilder(new 1cA().setParams(_arg4));
            this.nameText_.x = 410;
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            addChild(this.nameText_);
            if (this.0cM != -1)
            {
                this.K6 = new _13j().setSize(_arg1).setColor(_arg3);
                this.K6.setBold(true);
                this.K6.setStringBuilder(new 1WS((((_arg8 + "0") + " ") + _arg9)));
                this.K6.x = 450;
                this.K6.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
                addChild(this.K6);
            }
            if (_arg10 != null)
            {
                this.ud = _arg10;
                this.nameText_.textChanged.addOnce(this.onTextChanged);
                addChild(this.ud);
            }
            this.1-P.1pS(this);
            if (_arg5)
            {
                this.1-P.tooltip = 0GU;
            }
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onTextChanged():void{
            if (this.K6 != null)
            {
                this.ud.x = ((this.K6.x + this.K6.width) - 4);
                this.ud.y = (((this.K6.height / 2) - (this.ud.height / 2)) + 2);
            } else
            {
                this.ud.x = 450;
                this.ud.y = (((this.nameText_.height / 2) - (this.ud.height / 2)) + 2);
            }
        }

        public function 4-(_arg1:1hy):void{
            this.1-P.4-(_arg1);
        }

        public function Bs():1hy{
            return (this.1-P.Bs());
        }

        public function na(_arg1:of):void{
            this.1-P.na(_arg1);
        }

        public function w1():of{
            return (this.1-P.w1());
        }

        public function 049():void{
            this.startTime_ = -1000000;
        }

        private function onAddedToStage(_arg1:Event):void{
            if (this.startTime_ == 0)
            {
                this.startTime_ = getTimer();
            }
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        }

        public function onEnterFrame(_arg1:Event):void{
            var _local3:int;
            var _local2:Number = Math.min(1, ((getTimer() - this.startTime_) / 500));
            if (this.K6 != null)
            {
                _local3 = (this.0cM * _local2);
                this.K6.setStringBuilder(new 1WS((((this.Ru + _local3.toString()) + " ") + this.0NY)));
                if (this.ud != null)
                {
                    this.ud.x = ((this.K6.x + this.K6.width) - 4);
                    this.ud.y = (((this.K6.height / 2) - (this.ud.height / 2)) + 2);
                }
            }
            if (_local2 == 1)
            {
                removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            }
        }

        public function onMouseOver(_arg1:Event):void{
            if (this.description != null)
            {
                0GU.1wG(this.l7());
                stage.addChild(0GU);
            }
        }

        private function l7():1Jo{
            var _local1:AppendingLineBuilder = new AppendingLineBuilder();
            _local1.setDelimiter("");
            _local1.pushParams(this.description);
            if (this.level > 1)
            {
                _local1.pushParams(du.1h6, {data:" ("});
                _local1.pushParams("FameBonus.LevelRequirement", {level:this.level});
                _local1.pushParams(du.1h6, {data:")"});
            }
            return (_local1);
        }


    }
}//package _1aA

