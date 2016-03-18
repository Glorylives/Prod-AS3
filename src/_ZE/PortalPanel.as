// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZE.PortalPanel

package _ZE{
    import _Jy._1HZ;
    import 1PB.cO;
    import com.company.assembleegameclient.objects.Portal;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1nN;
    import flash.text.TextFormatAlign;
    import flash.filters.DropShadowFilter;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import flash.events.Event;
    import com.company.assembleegameclient.game.GameSprite;
    import flash.events.MouseEvent;
    import flash.events.KeyboardEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.googleanalytics.GA;
    import com.company.assembleegameclient.tutorial.doneAction;
    import com.company.assembleegameclient.tutorial.Tutorial;
    import com.company.assembleegameclient.objects.0FU;
    import 1n4.1Jo;

    public class PortalPanel extends Panel {

        private const LOCKED:String = "Locked ";
        private const 0tq:RegExp = /\{"text":"(.+)"}/;
        public const 0n:_1HZ = new _1HZ();
        private const 1he:cO = new cO();

        public var 0b2:Portal;
        private var nameText_:_13j;
        private var do:1nN;
        private var 1Kg:_13j;

        public function PortalPanel(_arg1:GameSprite, _arg2:Portal){
            super(_arg1);
            this.0b2 = _arg2;
            this.nameText_ = new _13j().setSize(18).setColor(0xFFFFFF).setBold(true).setTextWidth(WIDTH).setHorizontalAlign(TextFormatAlign.CENTER);
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.nameText_);
            this.1he.push(this.nameText_.textChanged);
            this.do = new 1nN(16, du.1C4);
            addChild(this.do);
            this.1he.push(this.do.textChanged);
            this.1Kg = new _13j().setSize(18).setColor(0xFF0000).setHTML(true).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
            var _local3:String = ((this.0b2.1QF) ? du.0u0 : du.0o1);
            this.1Kg.setStringBuilder(new 1cA().setParams(_local3).setPrefix('<p align="center">').setPostfix("</p>"));
            this.1Kg.filters = [new DropShadowFilter(0, 0, 0)];
            this.1Kg.textChanged.addOnce(this.alignUI);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.1he.complete.addOnce(this.alignUI);
        }

        private function alignUI():void{
            this.nameText_.y = 6;
            this.do.x = ((WIDTH / 2) - (this.do.width / 2));
            this.do.y = ((HEIGHT - this.do.height) - 4);
            this.1Kg.y = (HEIGHT - 30);
            this.1Kg.x = (WIDTH / 2);
        }

        private function onAddedToStage(_arg1:Event):void{
            this.do.addEventListener(MouseEvent.CLICK, this.1p9);
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function 1p9(_arg1:MouseEvent):void{
            this.enterPortal();
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null))))
            {
                this.enterPortal();
            };
        }

        private function enterPortal():void{
            var _local1:String = ObjectLibrary.118[this.0b2.objectType_];
            if (_local1 == "Nexus Portal")
            {
                GA.global().trackEvent("enterPortal", _local1);
            } else
            {
                GA.global().trackEvent("enterPortal", this.0b2.getName());
            };
            doneAction(gs_, Tutorial.0-K);
            gs_.gsc_.usePortal(this.0b2.objectId_);
            this.0n.dispatch();
        }

        override public function draw():void{
            this.1cU();
            if (((((!(this.0b2.1QF)) && (this.0b2.TW))) && (contains(this.1Kg))))
            {
                removeChild(this.1Kg);
                addChild(this.do);
            } else
            {
                if (((((this.0b2.1QF) || (!(this.0b2.TW)))) && (contains(this.do))))
                {
                    removeChild(this.do);
                    addChild(this.1Kg);
                };
            };
        }

        private function 1cU():void{
            var _local1:String = this.getName();
            var _local2:1Jo = new 0FU().makeBuilder(_local1);
            this.nameText_.setStringBuilder(_local2);
            this.nameText_.x = ((WIDTH - this.nameText_.width) * 0.5);
            this.nameText_.y = (((this.nameText_.height > 30)) ? 0 : 6);
        }

        private function getName():String{
            var _local1:String = this.0b2.getName();
            if (((this.0b2.1QF) && ((_local1.indexOf(this.LOCKED) == 0))))
            {
                return (_local1.substr(this.LOCKED.length));
            };
            return (this.w4(_local1));
        }

        private function w4(_arg1:String):String{
            var _local2:Array = _arg1.match(this.0tq);
            return (((_local2) ? _local2[1] : _arg1));
        }


    }
}//package _ZE

