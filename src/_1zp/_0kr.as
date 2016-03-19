// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.0kr

package _1zp{
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;
    import _1n4._1Jo;

    public class _0kr extends _0vQ {

        private var callback_:Function;
        private var _98:_0GF;

        public function _0kr(_arg1:String, _arg2:Vector.<_1Jo>, _arg3:Array, _arg4:String, _arg5:String, _arg6:Function, _arg7:Number=0xFFFFFF){
            super(_arg1, _arg4, _arg5);
            _1WU.setColor(_arg7);
            _0Xr.tipText_.setColor(_arg7);
            this.callback_ = _arg6;
            this._98 = new _0GF(_arg2, _arg3, Parameters.data_[_1aN], _arg7);
            this._98.addEventListener(Event.CHANGE, this._1c0);
            addChild(this._98);
        }

        override public function refresh():void{
            this._98.setValue(Parameters.data_[_1aN]);
        }

        public function _1JE():void{
            this._98.setValue(Parameters.data_[_1aN], false);
        }

        private function _1c0(_arg1:Event):void{
            Parameters.data_[_1aN] = this._98.value();
            if (this.callback_ != null)
            {
                this.callback_();
            };
            Parameters.save();
        }


    }
}//package _1zp

