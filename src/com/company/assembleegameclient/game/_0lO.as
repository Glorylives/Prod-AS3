// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.game.0lO

package com.company.assembleegameclient.game{
    import _0UV._0rh;
    import _04_._1JZ;
    import flash.events.MouseEvent;
    import flash.events.KeyboardEvent;
    import _1u._1Ys;
    import com.company.assembleegameclient.parameters.Parameters;

    public class _0lO {

        private static const _0lK:int = (60 * 1000);//60000
        private static const _05U:int = 10;
        private static const _1lJ:int = 15;
        private static const _0YN:int = 20;

        public var gs_:GameSprite = null;
        public var IW:int = 0;
        private var _12K:_0rh;

        public function _0lO(){
            this._12K = _1JZ._0JF().getInstance(_0rh);
        }

        public function start(_arg1:GameSprite):void{
            this.gs_ = _arg1;
            this.IW = 0;
            this.gs_.stage.addEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
            this.gs_.stage.addEventListener(KeyboardEvent.KEY_DOWN, this._1lw);
        }

        public function update(_arg1:int):Boolean{
            var _local2:int = this.IW;
            this.IW = (this.IW + _arg1);
            if (this.IW < (_05U * _0lK))
            {
                return (false);
            }
            if ((((this.IW >= (_05U * _0lK))) && ((_local2 < (_05U * _0lK)))))
            {
                this._12K.dispatch(this._1Qp());
                return (false);
            }
            if ((((this.IW >= (_1lJ * _0lK))) && ((_local2 < (_1lJ * _0lK)))))
            {
                this._12K.dispatch(this.Sl());
                return (false);
            }
            if ((((this.IW >= (_0YN * _0lK))) && ((_local2 < (_0YN * _0lK)))))
            {
                this._12K.dispatch(this._1Ji());
                return (true);
            }
            return (false);
        }

        private function _1Qp():_1Ys{
            var _local1:_1Ys = new _1Ys();
            _local1.name = Parameters._1Wj;
            _local1.text = ((((("You have been idle for " + _05U) + " minutes, you will be disconnected if you are idle for ") + "more than ") + _0YN) + " minutes.");
            return (_local1);
        }

        private function Sl():_1Ys{
            var _local1:_1Ys = new _1Ys();
            _local1.name = Parameters._1Wj;
            _local1.text = ((((("You have been idle for " + _1lJ) + " minutes, you will be disconnected if you are idle for ") + "more than ") + _0YN) + " minutes.");
            return (_local1);
        }

        private function _1Ji():_1Ys{
            var _local1:_1Ys = new _1Ys();
            _local1.name = Parameters._1Wj;
            _local1.text = (("You have been idle for " + _0YN) + " minutes, disconnecting.");
            return (_local1);
        }

        public function stop():void{
            this.gs_.stage.removeEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
            this.gs_.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._1lw);
            this.gs_ = null;
        }

        private function onMouseMove(_arg1:MouseEvent):void{
            this.IW = 0;
        }

        private function _1lw(_arg1:KeyboardEvent):void{
            this.IW = 0;
        }


    }
}//package com.company.assembleegameclient.game

