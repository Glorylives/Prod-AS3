// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//12X.0Q6

package 12X{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 0uE.KC;
    import _CU._13j;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import 0IN.1qO;
    import 1n4.1WS;
    import 1n4.1cA;
    import flash.text.TextFieldAutoSize;
    import flash.text.TextFormatAlign;
    import flash.filters.DropShadowFilter;
    import 0uE.IJ;

    public class 0Q6 extends Sprite {

        public static const 1yz:int = 20;

        public var register:_1HZ;
        public var cancel:_1HZ;
        protected var 0l4:Number;
        protected var 0oc:Number;
        protected var 1tf:KC;
        protected var background:Sprite;
        protected var 1uc:Sprite;
        protected var title:_13j;
        protected var desc:_13j;

        public function 0Q6(_arg1:int=288, _arg2:int=150, _arg3:String=""){
            this.0l4 = _arg1;
            this.0oc = _arg2;
            x = ((WebMain._0Kr.stageWidth / 2) - (this.0l4 / 2));
            y = ((WebMain._0Kr.stageHeight / 2) - (this.0oc / 2));
            if (_arg3 != "")
            {
                this.setTitle(_arg3, true);
            };
            if (this.background == null)
            {
                this.1uc = new Sprite();
                this.background = this.makeModalBackground();
                this.1uc.addChild(this.background);
                addChild(this.1uc);
            };
            if (_arg3 != "")
            {
                this.setTitle(_arg3, true);
            };
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            if (this.1tf != null)
            {
                this.1tf.removeEventListener(MouseEvent.CLICK, this.onCloseClick);
            };
        }

        public function setWidth(_arg1:Number):void{
            this.0l4 = _arg1;
            x = ((WebMain._0Kr.stageWidth / 2) - (this.0l4 / 2));
            this.1sZ();
        }

        public function 09O(_arg1:Number):void{
            this.0oc = _arg1;
            y = ((WebMain._0Kr.stageHeight / 2) - (this.0oc / 2));
            this.1sZ();
        }

        public function setTitle(_arg1:String, _arg2:Boolean):void{
            if (((!((this.title == null))) && (!((this.title.parent == null)))))
            {
                removeChild(this.title);
            };
            if (_arg1 != null)
            {
                this.title = this.1UU(_arg1, 1yz, 5, _arg2);
                addChild(this.title);
            } else
            {
                this.title = null;
            };
        }

        public function J-(_arg1:String, _arg2:Boolean):void{
            if (_arg1 != null)
            {
                if (((!((this.desc == null))) && (!((this.desc.parent == null)))))
                {
                    removeChild(this.desc);
                };
                this.desc = this.1UU(_arg1, 1yz, 50, _arg2);
                addChild(this.desc);
            };
        }

        public function Jl(_arg1:Boolean):void{
            if ((((this.1tf == null)) && (_arg1)))
            {
                this.1tf = 1qO.19W(this.0l4);
                this.1tf.addEventListener(MouseEvent.CLICK, this.onCloseClick);
                addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
                addChild(this.1tf);
            } else
            {
                if (((!((this.1tf == null))) && (!(_arg1))))
                {
                    removeChild(this.1tf);
                    this.1tf = null;
                };
            };
        }

        protected function 1UU(_arg1:String, _arg2:int, _arg3:int, _arg4:Boolean):_13j{
            var _local5:_13j;
            _local5 = new _13j().setSize(16).setColor(0xFFFFFF).setTextWidth((this.0l4 - (1yz * 2)));
            _local5.setBold(true);
            if (_arg4)
            {
                _local5.setStringBuilder(new 1WS(_arg1));
            } else
            {
                _local5.setStringBuilder(new 1cA().setParams(_arg1));
            };
            _local5.setWordWrap(true);
            _local5.setMultiLine(true);
            _local5.setAutoSize(TextFieldAutoSize.CENTER);
            _local5.setHorizontalAlign(TextFormatAlign.CENTER);
            _local5.filters = [new DropShadowFilter(0, 0, 0)];
            _local5.x = _arg2;
            _local5.y = _arg3;
            return (_local5);
        }

        protected function makeModalBackground():Sprite{
            x = ((WebMain._0Kr.stageWidth / 2) - (this.0l4 / 2));
            y = ((WebMain._0Kr.stageHeight / 2) - (this.0oc / 2));
            var _local1:IJ = new IJ();
            _local1.draw(this.0l4, this.0oc, IJ.nN);
            if (this.title != null)
            {
                _local1.UK(IJ.HORIZONTAL_DIVISION, 30);
            };
            return (_local1);
        }

        public function 15j():void{
            this.desc.setTextWidth((this.0l4 - (1yz * 2)));
            this.title.setTextWidth((this.0l4 - (1yz * 2)));
        }

        protected function 1sZ():void{
            this.1uc.removeChild(this.background);
            this.background = this.makeModalBackground();
            this.1uc.addChild(this.background);
        }

        public function onCloseClick(_arg1:MouseEvent):void{
        }


    }
}//package 12X

