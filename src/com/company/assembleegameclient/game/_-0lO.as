// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.game.0lO

package com.company.assembleegameclient.game{
    import 0UV.0rh;
    import _04_._1JZ;
    import flash.events.MouseEvent;
    import flash.events.KeyboardEvent;
    import 1u-.1Ys;
    import com.company.assembleegameclient.parameters.Parameters;

    public class 0lO {

        private static const 0lK:int = (60 * 1000);//60000
        private static const 05U:int = 10;
        private static const 1lJ:int = 15;
        private static const 0YN:int = 20;

        public var gs_:GameSprite = null;
        public var IW:int = 0;
        private var 12K:0rh;

        public function 0lO(){
            this.12K = _1JZ.0JF().getInstance(0rh);
        }

        public function start(_arg1:GameSprite):void{
            this.gs_ = _arg1;
            this.IW = 0;
            this.gs_.stage.addEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
            this.gs_.stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        public function update(_arg1:int):Boolean{
            var _local2:int = this.IW;
            this.IW = (this.IW + _arg1);
            if (this.IW < (05U * 0lK))
            {
                return (false);
            };
            if ((((this.IW >= (05U * 0lK))) && ((_local2 < (05U * 0lK)))))
            {
                this.12K.dispatch(this.1Qp());
                return (false);
            };
            if ((((this.IW >= (1lJ * 0lK))) && ((_local2 < (1lJ * 0lK)))))
            {
                this.12K.dispatch(this.Sl());
                return (false);
            };
            if ((((this.IW >= (0YN * 0lK))) && ((_local2 < (0YN * 0lK)))))
            {
                this.12K.dispatch(this.1Ji());
                return (true);
            };
            return (false);
        }

        private function 1Qp():1Ys{
            var _local1:1Ys = new 1Ys();
            _local1.name = Parameters.1Wj;
            _local1.text = ((((("You have been idle for " + 05U) + " minutes, you will be disconnected if you are idle for ") + "more than ") + 0YN) + " minutes.");
            return (_local1);
        }

        private function Sl():1Ys{
            var _local1:1Ys = new 1Ys();
            _local1.name = Parameters.1Wj;
            _local1.text = ((((("You have been idle for " + 1lJ) + " minutes, you will be disconnected if you are idle for ") + "more than ") + 0YN) + " minutes.");
            return (_local1);
        }

        private function 1Ji():1Ys{
            var _local1:1Ys = new 1Ys();
            _local1.name = Parameters.1Wj;
            _local1.text = (("You have been idle for " + 0YN) + " minutes, disconnecting.");
            return (_local1);
        }

        public function stop():void{
            this.gs_.stage.removeEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
            this.gs_.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            this.gs_ = null;
        }

        private function onMouseMove(_arg1:MouseEvent):void{
            this.IW = 0;
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            this.IW = 0;
        }


    }
}//package com.company.assembleegameclient.game

