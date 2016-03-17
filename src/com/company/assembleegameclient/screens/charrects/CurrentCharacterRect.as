// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.screens.charrects.CurrentCharacterRect

package com.company.assembleegameclient.screens.charrects{
    import 0qj.MyPlayerToolTip;
    import _Jy._1HZ;
    import flash.display.Sprite;
    import com.company.assembleegameclient.appengine.1WG;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import tn.0dE;
    import flash.display.DisplayObject;
    import 1n4.1cA;
    import AO.du;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.util.09g;
    import com.company.rotmg.graphics.DeleteXGraphic;
    import ld.1CO;

    public class CurrentCharacterRect extends CharacterRect {

        private static var toolTip_:MyPlayerToolTip = null;

        public const selected:_1HZ = new _1HZ();
        public const deleteCharacter:_1HZ = new _1HZ();
        public const showToolTip:_1HZ = new _1HZ(Sprite);
        public const hideTooltip:_1HZ = new _1HZ();

        public var charName:String;
        public var charStats:1WG;
        public var char:SavedCharacter;
        public var myPlayerToolTipFactory:MyPlayerToolTipFactory;
        private var charType:0dE;
        private var deleteButton:Sprite;
        private var icon:DisplayObject;

        public function CurrentCharacterRect(_arg1:String, _arg2:0dE, _arg3:SavedCharacter, _arg4:1WG){
            this.myPlayerToolTipFactory = new MyPlayerToolTipFactory();
            super();
            this.charName = _arg1;
            this.charType = _arg2;
            this.char = _arg3;
            this.charStats = _arg4;
            var _local5:String = _arg2.name;
            var _local6:int = _arg3.gI.Level;
            super.className = new 1cA().setParams(du.12-, {
                className:_local5,
                level:_local6
            });
            super.color = 0x5C5C5C;
            super.overColor = 0x7F7F7F;
            super.init();
            this.makeTagline();
            this.makeDeleteButton();
            this.addEventListeners();
        }

        private function addEventListeners():void{
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            selectContainer.addEventListener(MouseEvent.CLICK, this.onSelect);
            this.deleteButton.addEventListener(MouseEvent.CLICK, this.onDelete);
        }

        private function onSelect(_arg1:MouseEvent):void{
            this.selected.dispatch(this.char);
        }

        private function onDelete(_arg1:MouseEvent):void{
            this.deleteCharacter.dispatch(this.char);
        }

        public function setIcon(_arg1:DisplayObject):void{
            ((this.icon) && (selectContainer.removeChild(this.icon)));
            this.icon = _arg1;
            this.icon.x = CharacterRectConstants.ICON_POS_X;
            this.icon.y = CharacterRectConstants.ICON_POS_Y;
            ((this.icon) && (selectContainer.addChild(this.icon)));
        }

        private function makeTagline():void{
            if (this.getNextStarFame() > 0)
            {
                super.makeTaglineIcon();
                super.makeTaglineText(new 1cA().setParams(du.0Vm, {
                    fame:this.char.fame(),
                    nextStarFame:this.getNextStarFame()
                }));
                taglineText.x = (taglineText.x + taglineIcon.width);
            };
        }

        private function getNextStarFame():int{
            return (09g.nextStarFame((((this.charStats == null)) ? 0 : this.charStats.ho()), this.char.fame()));
        }

        private function makeDeleteButton():void{
            this.deleteButton = new DeleteXGraphic();
            this.deleteButton.addEventListener(MouseEvent.MOUSE_DOWN, this.onDeleteDown);
            this.deleteButton.x = (WIDTH - 40);
            this.deleteButton.y = ((HEIGHT - this.deleteButton.height) * 0.5);
            addChild(this.deleteButton);
        }

        override protected function onMouseOver(_arg1:MouseEvent):void{
            super.onMouseOver(_arg1);
            this.removeToolTip();
            toolTip_ = this.myPlayerToolTipFactory.create(this.charName, this.char.gI, this.charStats);
            toolTip_.0nh();
            this.showToolTip.dispatch(toolTip_);
        }

        override protected function onRollOut(_arg1:MouseEvent):void{
            super.onRollOut(_arg1);
            this.removeToolTip();
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this.removeToolTip();
        }

        private function removeToolTip():void{
            this.hideTooltip.dispatch();
        }

        private function onDeleteDown(_arg1:MouseEvent):void{
            _arg1.stopImmediatePropagation();
            dispatchEvent(new 1CO(this.char));
        }


    }
}//package com.company.assembleegameclient.screens.charrects

