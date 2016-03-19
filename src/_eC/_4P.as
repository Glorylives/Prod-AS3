// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.4P

package _eC{
    import flash.display.DisplayObjectContainer;

    public class _4P {

        public var target:DisplayObjectContainer;
        private var _0kc:_0A3;
        private var _0wv:_0A3;


        public function shift():void{
            this.target.removeChild(this._0kc);
            this._0kc = this._0kc.next;
            if (this._0kc)
            {
                this.target.addChild(this._0kc);
            } else
            {
                this._0wv = null;
            }
        }

        public function append(_arg1:_0A3):void{
            _arg1.list = this;
            if (this._0wv)
            {
                this._0wv.next = _arg1;
                this._0wv = _arg1;
            } else
            {
                this._0kc = (this._0wv = _arg1);
                this.target.addChild(_arg1);
            }
        }


    }
}//package eC

