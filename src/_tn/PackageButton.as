// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//TN.PackageButton

package TN{
    import _Jy._1HZ;
    import flash.display.DisplayObject;
    import _CU._13j;
    import 1n4.1WS;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import bD.0A-;
    import flash.events.MouseEvent;
    import 0wP.kM;
    import com.company.assembleegameclient.util.1ze;
    import AO.du;
    import flash.events.Event;

    public class PackageButton extends xz {

        private const 2E:String = "showDuration";
        private const do:String = "showQuantity";

        public var clicked:_1HZ;
        private var _state:String = "showDuration";
        private var uq:DisplayObject;
        var 26W:_13j;
        var 75:_13j;
        var 0Kq:1WS;
        var 0WX:1cA;

        public function PackageButton(){
            this.clicked = new _1HZ();
            this.26W = makeText();
            this.75 = makeText();
            this.0Kq = new 1WS("");
            this.0WX = new 1cA();
            super();
        }

        private static function makeText():_13j{
            var _local1:_13j;
            _local1 = new _13j().setSize(16).setColor(0xFFFFFF);
            _local1.filters = [new DropShadowFilter(0, 0, 0)];
            return (_local1);
        }


        public function init():void{
            addChild(0A-.gU());
            addChild(this.26W);
            addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            this.setIcon(makeIcon());
        }

        private function setState(_arg1:String):void{
            if (this._state == _arg1)
            {
                return;
            }
            if (_arg1 == this.2E)
            {
                removeChild(this.75);
                addChild(this.26W);
            } else
            {
                if (_arg1 == this.do)
                {
                    removeChild(this.26W);
                    addChild(this.75);
                } else
                {
                    throw (new Error(("PackageButton.setState: Unexpected state " + _arg1)));
                }
            }
            this._state = _arg1;
        }

        public function 03o(_arg1:int):void{
            if (_arg1 == kM.1W5)
            {
                this.setState(this.2E);
            } else
            {
                this.setState(this.do);
            }
            this.75.textChanged.addOnce(this.layout);
            this.0Kq.setString(_arg1.toString());
            this.75.setStringBuilder(this.0Kq);
        }

        public function 0Fv(_arg1:int):void{
            var _local3:String;
            var _local2:int = Math.ceil((_arg1 / 1ze.1UW));
            if (_local2 > 1)
            {
                _local3 = du.052;
            } else
            {
                _local3 = du.fW;
            }
            this.26W.textChanged.addOnce(this.layout);
            this.0WX.setParams(_local3, {number:_local2});
            this.26W.setStringBuilder(this.0WX);
        }

        private function layout():void{
            positionText(this.uq, this.26W);
            positionText(this.uq, this.75);
        }

        public function setIcon(_arg1:DisplayObject):void{
            this.uq = _arg1;
            addChild(_arg1);
        }

        public function getIcon():DisplayObject{
            return (this.uq);
        }

        private function onMouseUp(_arg1:Event):void{
            this.clicked.dispatch();
        }


    }
}//package TN

