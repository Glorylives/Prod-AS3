// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.0DH

package com.company.assembleegameclient.ui{
    import 1r-.1L6;
    import com.company.assembleegameclient.objects.Player;
    import flash.events.Event;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.events.MouseEvent;
    import 0qj.PlayerToolTip;
    import com.company.util.MoreColorUtil;
    import flash.geom.ColorTransform;
    import 1Bg.1hy;
    import 1Bg.of;
    import 1r-.*;

    public class 0DH extends 0S7 implements u- {

        public const 1-P:1L6 = new 1L6();

        private var enabled:Boolean = true;
        private var 0G9:Boolean = false;

        public function 0DH(_arg1:uint, _arg2:Boolean, _arg3:GameObject){
            super(_arg1, _arg2, _arg3);
            var _local4:Player = (_arg3 as Player);
            if (_local4)
            {
                this.0G9 = _local4.starred_;
            };
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onAddedToStage(_arg1:Event):void{
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            this.1-P.1pS(this);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.1-P.tooltip = ((this.enabled) ? new PlayerToolTip(Player(go)) : null);
        }

        public function setEnabled(_arg1:Boolean):void{
            if (((!((this.enabled == _arg1))) && (!((Player(go) == null)))))
            {
                this.enabled = _arg1;
                this.1-P.tooltip = ((this.enabled) ? new PlayerToolTip(Player(go)) : null);
                if (!this.enabled)
                {
                    this.1-P.Bs().dispatch(this.1-P.tooltip);
                };
            };
        }

        override public function draw(_arg1:GameObject, _arg2:ColorTransform=null):void{
            var _local3:Player = (_arg1 as Player);
            if (((_local3) && (!((this.0G9 == _local3.starred_)))))
            {
                transform.colorTransform = ((_arg2) || (MoreColorUtil.identity));
                this.0G9 = _local3.starred_;
            };
            super.draw(_arg1, _arg2);
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


    }
}//package com.company.assembleegameclient.ui

