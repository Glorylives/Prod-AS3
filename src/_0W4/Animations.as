// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0W4.Animations

package _0W4{
    import flash.display.BitmapData;

    public class Animations {

        public var en:_Zv;
        public var _11Q:Vector.<int> = null;
        public var _1tG:RunningAnimation = null;

        public function Animations(_arg1:_Zv){
            this.en = _arg1;
        }

        public function getTexture(_arg1:int):BitmapData{
            var _local2:_C;
            var _local4:BitmapData;
            var _local5:int;
            if (this._11Q == null)
            {
                this._11Q = new Vector.<int>();
                for each (_local2 in this.en._1fL)
                {
                    this._11Q.push(_local2.IR(_arg1));
                };
            };
            if (this._1tG != null)
            {
                _local4 = this._1tG.getTexture(_arg1);
                if (_local4 != null)
                {
                    return (_local4);
                };
                this._1tG = null;
            };
            var _local3:int;
            while (_local3 < this._11Q.length)
            {
                if (_arg1 > this._11Q[_local3])
                {
                    _local5 = this._11Q[_local3];
                    _local2 = this.en._1fL[_local3];
                    this._11Q[_local3] = _local2._1Jx(_arg1);
                    if (((!((_local2._0NH == 1))) && ((Math.random() > _local2._0NH))))
                    {
                    } else
                    {
                        this._1tG = new RunningAnimation(_local2, _local5);
                        return (this._1tG.getTexture(_arg1));
                    };
                };
                _local3++;
            };
            return (null);
        }


    }
}//package 0W4

import _0W4._0QV;
import _0W4._C;

import flash.display.BitmapData;

class RunningAnimation {

    public var animationData_:_C;
    public var start_:int;
    public var frameId_:int;
    public var frameStart_:int;
    public var texture_:BitmapData;

    public function RunningAnimation(_arg1:_C, _arg2:int){
        this.animationData_ = _arg1;
        this.start_ = _arg2;
        this.frameId_ = 0;
        this.frameStart_ = _arg2;
        this.texture_ = null;
    }

    public function getTexture(_arg1:int):BitmapData{
        var _local2:_0QV = this.animationData_.Bk[this.frameId_];
        while ((_arg1 - this.frameStart_) > _local2.time_)
        {
            if (this.frameId_ >= (this.animationData_.Bk.length - 1))
            {
                return (null);
            };
            this.frameStart_ = (this.frameStart_ + _local2.time_);
            this.frameId_++;
            _local2 = this.animationData_.Bk[this.frameId_];
            this.texture_ = null;
        };
        if (this.texture_ == null)
        {
            this.texture_ = _local2._1lr.getTexture((Math.random() * 100));
        };
        return (this.texture_);
    }


}

