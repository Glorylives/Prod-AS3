// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.NameChangerPanel

package BG{
    import _ZE.Panel;
    import _Jy._1HZ;
    import _CU._13j;
    import flash.display.Sprite;
    import com.company.assembleegameclient.objects.Player;
    import flash.events.Event;
    import com.company.assembleegameclient.game.GameSprite;
    import flash.events.KeyboardEvent;
    import flash.text.TextFormatAlign;
    import flash.filters.DropShadowFilter;
    import OZ.08g;
    import AO.du;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.util.Currency;
    import 1n4.1cA;
    import com.company.assembleegameclient.ui.1nN;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.ui.RankText;
    import 1n4.1Jo;

    public class NameChangerPanel extends Panel {

        public var chooseName:_1HZ;
        public var Z0:Boolean;
        private var X:_13j;
        private var o3:Sprite;

        public function NameChangerPanel(_arg1:GameSprite, _arg2:int){
            var _local3:Player;
            var _local4:String;
            this.chooseName = new _1HZ();
            super(_arg1);
            if (this.01B())
            {
                _local3 = gs_.map.player_;
                this.Z0 = _local3.1TS;
                _local4 = this.iS();
                if (this.Z0)
                {
                    this.1wJ(_local4);
                } else
                {
                    if (_local3.numStars_ < _arg2)
                    {
                        this.lV(_arg2);
                    } else
                    {
                        this.05Y();
                    }
                }
            }
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        }

        private function onAddedToStage(_arg1:Event):void{
            if (this.o3)
            {
                stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            }
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function 01B():Boolean{
            return (((gs_.map) && (gs_.map.player_)));
        }

        private function iS():String{
            var _local1:String;
            _local1 = gs_.model.getName();
            this.X = new _13j().setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH);
            this.X.setBold(true).setWordWrap(true).setMultiLine(true).setHorizontalAlign(TextFormatAlign.CENTER);
            this.X.filters = [new DropShadowFilter(0, 0, 0)];
            return (_local1);
        }

        private function 1wJ(_arg1:String):void{
            this.X.setStringBuilder(this.l3(_arg1));
            this.X.y = 0;
            addChild(this.X);
            var _local2:08g = new 08g(du.1Yb, 16, Parameters.ZO, Currency.1Jg);
            _local2.fh.addOnce(this.0ji);
            this.o3 = _local2;
            addChild(this.o3);
            this.0qt();
        }

        private function 0ji():void{
            this.o3.x = ((WIDTH / 2) - (this.o3.width / 2));
            this.o3.y = ((HEIGHT - (this.o3.height / 2)) - 17);
        }

        private function 05Y():void{
            this.X.setStringBuilder(new 1cA().setParams(du.06n));
            this.X.y = 6;
            addChild(this.X);
            var _local1:1nN = new 1nN(16, du.0n1);
            _local1.textChanged.addOnce(this.include);
            this.o3 = _local1;
            addChild(this.o3);
            this.0qt();
        }

        private function include():void{
            this.o3.x = ((WIDTH / 2) - (this.o3.width / 2));
            this.o3.y = ((HEIGHT - this.o3.height) - 4);
        }

        private function 0qt():void{
            this.o3.addEventListener(MouseEvent.CLICK, this.onButtonClick);
        }

        private function lV(_arg1:int):void{
            var _local2:Sprite;
            var _local4:Sprite;
            this.X.setStringBuilder(new 1cA().setParams(du.06n));
            addChild(this.X);
            _local2 = new Sprite();
            var _local3:_13j = new _13j().setSize(16).setColor(0xFFFFFF);
            _local3.setBold(true);
            _local3.setStringBuilder(new 1cA().setParams(du.1dd));
            _local3.filters = [new DropShadowFilter(0, 0, 0)];
            _local2.addChild(_local3);
            _local4 = new RankText(_arg1, false, false);
            _local4.x = (_local3.width + 4);
            _local4.y = ((_local3.height / 2) - (_local4.height / 2));
            _local2.addChild(_local4);
            _local2.x = ((WIDTH / 2) - (_local2.width / 2));
            _local2.y = ((HEIGHT - (_local2.height / 2)) - 20);
            addChild(_local2);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function l3(_arg1:String):1Jo{
            return (new 1cA().setParams(du.1s0, {name:_arg1}));
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null))))
            {
                this.1UL();
            }
        }

        private function onButtonClick(_arg1:MouseEvent):void{
            this.1UL();
        }

        private function 1UL():void{
            this.chooseName.dispatch();
        }

        public function 088(_arg1:String):void{
            this.X.setStringBuilder(this.l3(_arg1));
            this.X.y = 0;
        }


    }
}//package BG

