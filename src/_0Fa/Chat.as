// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Fa.Chat

package _0Fa{
    import flash.display.Sprite;
    import _1u._tM;

    public class Chat extends Sprite {

        public var list:_1Q7;
        private var input:_GH;
        private var ag:_0Ka;
        private var model:_tM;

        public function Chat(){
            mouseEnabled = true;
            mouseChildren = true;
            this.list = new _1Q7();
            addChild(this.list);
        }

        public function setup(_arg1:_tM, _arg2:Boolean):void{
            this.model = _arg1;
            this.y = (600 - _arg1._1Xo.height);
            this.list.y = _arg1._1Xo.height;
            if (_arg2)
            {
                this._17p();
            } else
            {
                this.bh();
            }
        }

        private function _17p():void{
            this.input = new _GH();
            addChild(this.input);
        }

        private function bh():void{
            this.ag = new _0Ka();
            addChild(this.ag);
            this.list.y = (this.model._1Xo.height - this.model._1jC);
        }

        public function _0IP():void{
            if (((!((this.ag == null))) && (contains(this.ag))))
            {
                removeChild(this.ag);
            }
            if ((((this.input == null)) || (!(contains(this.input)))))
            {
                this._17p();
            }
        }


    }
}//package _0Fa

