// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.qZ

package 0uE{
    import flash.display.Sprite;
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import _Jy._1HZ;
    import _Jy.g4;
    import OZ.08g;
    import _CU._13j;
    import com.company.assembleegameclient.util.Currency;
    import 1n4.1cA;
    import AO.du;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import flash.filters.DropShadowFilter;

    public class qZ extends Sprite {

        private static const 1c9:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.1Z6);

        public const 1yi:_1HZ = new _1HZ();
        public const 0su:_1HZ = new _1HZ(int);
        public const q1:_1HZ = new _1HZ(int);
        public const clicked:g4 = new _1HZ();
        private const 1nH:int = 7;

        public var 0Hi:08g;
        public var bx:08g;
        private var 24n:_13j;
        private var or:_13j;
        private var disabled:Boolean = false;

        public function qZ(){
            this.0Hi = new 08g("", 14, 0, Currency.1Jg);
            this.bx = new 08g("", 14, 0, Currency.FAME);
            this.24n = this.1zR();
            this.or = this.1zR().setStringBuilder(new 1cA().setParams(du.1RF));
            super();
            this.0Hi.addEventListener(MouseEvent.CLICK, this.sY);
            this.bx.addEventListener(MouseEvent.CLICK, this.1XX);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.bx.fh.add(this.sk);
            this.0Hi.fh.add(this.sk);
            this.24n.textChanged.add(this.sk);
        }

        public function r3(_arg1:Boolean):void{
            if (this.disabled != _arg1)
            {
                this.disabled = _arg1;
                this.0Hi.setEnabled(!(this.disabled));
                this.bx.setEnabled(!(this.disabled));
            };
        }

        public function 0Rh():Boolean{
            return (this.disabled);
        }

        public function 0RN(_arg1:int):void{
            this.0Hi.setPrice(_arg1, Currency.1Jg);
            ((!(contains(this.0Hi))) && (addChild(this.0Hi)));
        }

        public function 1Xw():int{
            return (this.0Hi.1V1());
        }

        public function setPrefix(_arg1:String):void{
            this.24n.setStringBuilder(new 1cA().setParams(_arg1));
            ((!(contains(this.24n))) && (addChild(this.24n)));
        }

        public function Yo():void{
            ((contains(this.0Hi)) && (removeChild(this.0Hi)));
            ((contains(this.bx)) && (removeChild(this.bx)));
            ((contains(this.or)) && (removeChild(this.or)));
        }

        private function sk():void{
            if (contains(this.0Hi))
            {
                this.0Hi.x = (this.24n.width + this.1nH);
            };
            if (contains(this.bx))
            {
                if (contains(this.0Hi))
                {
                    ((!(contains(this.or))) && (addChild(this.or)));
                    this.or.textChanged.addOnce(this.sk);
                    this.or.x = ((this.0Hi.x + this.0Hi.width) + this.1nH);
                    this.bx.x = ((this.or.x + this.or.width) + this.1nH);
                } else
                {
                    this.bx.x = (this.24n.width + this.1nH);
                };
            };
            this.1yi.dispatch();
        }

        public function 1vA(_arg1:int):void{
            this.bx.setPrice(_arg1, Currency.FAME);
            ((!(contains(this.bx))) && (addChild(this.bx)));
        }

        public function 1ip():int{
            return (this.bx.1V1());
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.0Hi.removeEventListener(MouseEvent.CLICK, this.sY);
            this.bx.removeEventListener(MouseEvent.CLICK, this.1XX);
            this.bx.fh.remove(this.sk);
            this.0Hi.fh.remove(this.sk);
            this.24n.textChanged.remove(this.sk);
        }

        private function 1XX(_arg1:MouseEvent):void{
            if (!this.disabled)
            {
                this.q1.dispatch(this.bx.price);
                this.clicked.dispatch();
            };
            this.r3(true);
        }

        private function sY(_arg1:MouseEvent):void{
            if (!this.disabled)
            {
                this.0su.dispatch(this.0Hi.price);
                this.clicked.dispatch();
            };
            this.r3(true);
        }

        private function 1zR():_13j{
            var _local1:_13j = new _13j().setSize(16).setColor(0xB3B3B3).setBold(true);
            _local1.filters = [new DropShadowFilter(0, 0, 0)];
            _local1.y = 3;
            return (_local1);
        }


    }
}//package 0uE

