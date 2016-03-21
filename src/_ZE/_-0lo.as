// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZE.0lo

package _ZE{
    import flash.display.DisplayObjectContainer;

    import com.company.assembleegameclient.ui.0DH;
    import 099.PlayerMenu;
    import com.company.assembleegameclient.objects.08T;
    import flash.events.Event;
    import com.company.assembleegameclient.game.GameSprite;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.ui.0S7;
    import flash.geom.ColorTransform;
    import flash.utils.getTimer;
    import com.company.util.MoreColorUtil;


    public class 0lo extends Panel {

        public var 1Lx:DisplayObjectContainer;
        public var 0Mi:Vector.<0DH>;
        public var 01-:Boolean;
        public var menu:PlayerMenu;

        public function 0lo(_arg1:GameSprite){
            this.0Mi = new Vector.<0DH>(08T.0-W, true);
            super(_arg1);
            this.0Mi[0] = this.i5(0, 0);
            this.0Mi[1] = this.i5(100, 0);
            this.0Mi[2] = this.i5(0, 32);
            this.0Mi[3] = this.i5(100, 32);
            this.0Mi[4] = this.i5(0, 64);
            this.0Mi[5] = this.i5(100, 64);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function i5(_arg1:int, _arg2:int):0DH{
            var _local3:0DH = new 0DH(0xFFFFFF, false, null);
            addChild(_local3);
            _local3.x = _arg1;
            _local3.y = _arg2;
            return (_local3);
        }

        private function onAddedToStage(_arg1:Event):void{
            var _local2:0DH;
            for each (_local2 in this.0Mi)
            {
                _local2.addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
                _local2.addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
                _local2.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            }
        }

        private function onRemovedFromStage(_arg1:Event):void{
            var _local2:0DH;
            this.K2();
            for each (_local2 in this.0Mi)
            {
                _local2.removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
                _local2.removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
                _local2.removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            }
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            if (((!((this.menu == null))) && (!((this.menu.parent == null)))))
            {
                return;
            }
            var _local2:0DH = (_arg1.currentTarget as 0DH);
            var _local3:Player = (_local2.go as Player);
            if ((((_local3 == null)) || ((_local3.texture_ == null))))
            {
                return;
            }
            this.01- = true;
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.01- = false;
        }

        private function onMouseDown(_arg1:MouseEvent):void{
            this.K2();
            var _local2:0DH = (_arg1.currentTarget as 0DH);
            _local2.setEnabled(false);
            this.menu = new PlayerMenu();
            this.menu.init(gs_, (_local2.go as Player));
            this.1Lx.addChild(this.menu);
            this.menu.addEventListener(Event.REMOVED_FROM_STAGE, this.1nG);
        }

        private function 1nG(_arg1:Event):void{
            var _local2:0S7;
            var _local3:0DH;
            for each (_local2 in this.0Mi)
            {
                _local3 = (_local2 as 0DH);
                if (_local3)
                {
                    _local3.setEnabled(true);
                }
            }
            _arg1.currentTarget.removeEventListener(Event.REMOVED_FROM_STAGE, this.1nG);
        }

        private function K2():void{
            if (this.menu != null)
            {
                this.menu.remove();
                this.menu = null;
            }
        }

        override public function draw():void{
            var _local4:0S7;
            var _local5:Player;
            var _local6:ColorTransform;
            var _local7:Number;
            var _local8:int;
            var _local1:08T = gs_.map.party_;
            if (_local1 == null)
            {
                for each (_local4 in this.0Mi)
                {
                    _local4.clear();
                }
                return;
            }
            var _local2:int;
            var _local3:int;
            while (_local3 < 08T.0-W)
            {
                if (((this.01-) || (((!((this.menu == null))) && (!((this.menu.parent == null)))))))
                {
                    _local5 = (this.0Mi[_local3].go as Player);
                } else
                {
                    _local5 = _local1.Mf[_local3];
                }
                if (((!((_local5 == null))) && ((_local5.map_ == null))))
                {
                    _local5 = null;
                }
                _local6 = null;
                if (_local5 != null)
                {
                    if (_local5.1VZ < (_local5.ba * 0.2))
                    {
                        if (_local2 == 0)
                        {
                            _local2 = getTimer();
                        }
                        _local7 = (int((Math.abs(Math.sin((_local2 / 200))) * 10)) / 10);
                        _local8 = 128;
                        _local6 = new ColorTransform(1, 1, 1, 1, (_local7 * _local8), (-(_local7) * _local8), (-(_local7) * _local8));
                    }
                    if (!_local5.starred_)
                    {
                        if (_local6 != null)
                        {
                            _local6.concat(MoreColorUtil.1lu);
                        } else
                        {
                            _local6 = MoreColorUtil.1lu;
                        }
                    }
                }
                this.0Mi[_local3].draw(_local5, _local6);
                _local3++;
            }
        }


    }
}//package _ZE

