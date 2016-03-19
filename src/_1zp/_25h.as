// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.25h

package _1zp{
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;

    public class _25h extends _0vQ {

        private var _2x:_0Uj;
        private var _1wr:Boolean;
        private var _1F0:Function;

        public function _25h(_arg1:String, _arg2:Function=null, _arg3:Boolean=false){
            super(_arg1, "", "");
            this._2x = new _0Uj(Parameters.data_[_1aN]);
            this._2x.addEventListener(Event.CHANGE, this._1c0);
            this._1F0 = _arg2;
            addChild(this._2x);
            this.r3(_arg3);
        }

        public function r3(_arg1:Boolean):void{
            this._1wr = _arg1;
            mouseEnabled = !(this._1wr);
            mouseChildren = !(this._1wr);
        }

        override public function refresh():void{
            this._2x._1nh = Parameters.data_[_1aN];
        }

        private function _1c0(_arg1:Event):void{
            Parameters.data_[_1aN] = this._2x._1nh;
            if (this._1F0 != null)
            {
                this._1F0(this._2x._1nh);
            };
            Parameters.save();
        }


    }
}//package _1zp

