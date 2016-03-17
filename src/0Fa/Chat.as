// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Fa.Chat

package 0Fa{
    import flash.display.Sprite;
    import 1u-.tM;

    public class Chat extends Sprite {

        public var list:1Q7;
        private var input:GH;
        private var ag:0Ka;
        private var model:tM;

        public function Chat(){
            mouseEnabled = true;
            mouseChildren = true;
            this.list = new 1Q7();
            addChild(this.list);
        }

        public function setup(_arg1:tM, _arg2:Boolean):void{
            this.model = _arg1;
            this.y = (600 - _arg1.1Xo.height);
            this.list.y = _arg1.1Xo.height;
            if (_arg2)
            {
                this.17p();
            } else
            {
                this.bh();
            };
        }

        private function 17p():void{
            this.input = new GH();
            addChild(this.input);
        }

        private function bh():void{
            this.ag = new 0Ka();
            addChild(this.ag);
            this.list.y = (this.model.1Xo.height - this.model.1jC);
        }

        public function 0IP():void{
            if (((!((this.ag == null))) && (contains(this.ag))))
            {
                removeChild(this.ag);
            };
            if ((((this.input == null)) || (!(contains(this.input)))))
            {
                this.17p();
            };
        }


    }
}//package 0Fa

