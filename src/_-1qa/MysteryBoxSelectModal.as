// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1qa.MysteryBoxSelectModal

package 1qa{
    import flash.display.Sprite;
    import 0uE.KC;
    import _04_._1JZ;
    import _0OG._22M;
    import M0.1g;
    import flash.events.Event;
    import 0uE.IJ;
    import _CU._13j;
    import 1n4.1cA;
    import flash.text.TextFieldAutoSize;
    import flash.text.TextFormatAlign;
    import flash.filters.DropShadowFilter;
    import vF.MysteryBoxInfo;
    import flash.display.DisplayObject;
    import 0IN.1qO;

    public class MysteryBoxSelectModal extends Sprite {

        public static const 1yz:int = 20;

        public static var 0l4:int;
        public static var 0oc:int;
        public static var 0Gv:int;
        public static var open:Boolean;
        public static var ga:Class = gw;

        private var 1tf:KC;
        private var box_:Sprite;
        private var 1Q-:Object;
        private var titleString:String = "MysteryBoxSelectModal.titleString";

        public function MysteryBoxSelectModal():void{
            this.box_ = new Sprite();
            super();
            0l4 = 385;
            0oc = 60;
            0Gv = 77;
            var _local1:_22M = _1JZ.0JF();
            var _local2:1g = _local1.getInstance(1g);
            this.1Q- = _local2.1bd();
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            addChild(this.box_);
            this.0h9();
            this.1Jq();
            open = true;
        }

        public static function 0p3():int{
            return ((300 + (0l4 / 2)));
        }

        private static function makeModalBackground(_arg1:int, _arg2:int):IJ{
            var _local3:IJ = new IJ();
            _local3.draw(_arg1, _arg2, IJ.0W9);
            return (_local3);
        }


        public function 1UU(_arg1:String, _arg2:int, _arg3:int):_13j{
            var _local4:_13j = new _13j().setSize(16).setColor(0xFFFFFF).setTextWidth((0l4 - (1yz * 2)));
            _local4.setBold(true);
            _local4.setStringBuilder(new 1cA().setParams(_arg1));
            _local4.setWordWrap(true);
            _local4.setMultiLine(true);
            _local4.setAutoSize(TextFieldAutoSize.CENTER);
            _local4.setHorizontalAlign(TextFormatAlign.CENTER);
            _local4.filters = [new DropShadowFilter(0, 0, 0)];
            _local4.x = _arg2;
            _local4.y = _arg3;
            return (_local4);
        }

        private function 1Jq():void{
            this.box_.x = ((600 / 2) - (0l4 / 2));
            this.box_.y = ((WebMain._0Kr.stageHeight / 2) - (0oc / 2));
        }

        private function 0h9():void{
            var _local1:MysteryBoxInfo;
            var _local2:DisplayObject;
            var _local5:int;
            var _local6:MysteryBoxSelectEntry;
            for each (_local1 in this.1Q-)
            {
                0oc = (0oc + 0Gv);
            }
            _local2 = new ga();
            _local2.width = (0l4 + 1);
            _local2.height = (0oc - 25);
            _local2.y = 27;
            _local2.alpha = 0.95;
            this.box_.addChild(_local2);
            this.box_.addChild(makeModalBackground(0l4, 0oc));
            this.1tf = 1qO.19W(0l4);
            this.box_.addChild(this.1tf);
            this.box_.addChild(this.1UU(this.titleString, 1yz, 6).setSize(18));
            var _local3:Number = 20;
            var _local4:Number = 50;
            _local5 = 0;
            for each (_local1 in this.1Q-)
            {
                if (_local5 == 6) break;
                _local6 = new MysteryBoxSelectEntry(_local1);
                _local6.x = (x + _local3);
                _local6.y = (y + _local4);
                _local4 = (_local4 + 0Gv);
                this.box_.addChild(_local6);
                _local5++;
            }
        }

        private function onRemovedFromStage(_arg1:Event):void{
            open = false;
        }


    }
}//package 1qa

