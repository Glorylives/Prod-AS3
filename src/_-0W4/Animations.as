// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0W4.Animations

package 0W4{
    import __AS3__.vec.Vector;
    import flash.display.BitmapData;
    import __AS3__.vec.*;

    public class Animations {

        public var en:Zv;
        public var 11Q:Vector.<int> = null;
        public var 1tG:RunningAnimation = null;

        public function Animations(_arg1:Zv){
            this.en = _arg1;
        }

        public function getTexture(_arg1:int):BitmapData{
            var _local2:C-;
            var _local4:BitmapData;
            var _local5:int;
            if (this.11Q == null)
            {
                this.11Q = new Vector.<int>();
                for each (_local2 in this.en.1fL)
                {
                    this.11Q.push(_local2.IR(_arg1));
                };
            };
            if (this.1tG != null)
            {
                _local4 = this.1tG.getTexture(_arg1);
                if (_local4 != null)
                {
                    return (_local4);
                };
                this.1tG = null;
            };
            var _local3:int;
            while (_local3 < this.11Q.length)
            {
                if (_arg1 > this.11Q[_local3])
                {
                    _local5 = this.11Q[_local3];
                    _local2 = this.en.1fL[_local3];
                    this.11Q[_local3] = _local2.1Jx(_arg1);
                    if (((!((_local2.0NH == 1))) && ((Math.random() > _local2.0NH))))
                    {
                    } else
                    {
                        this.1tG = new RunningAnimation(_local2, _local5);
                        return (this.1tG.getTexture(_arg1));
                    };
                };
                _local3++;
            };
            return (null);
        }


    }
}//package 0W4

import 0W4.C-;
import flash.display.BitmapData;
import 0W4.0QV;

class RunningAnimation {

    public var animationData_:C-;
    public var start_:int;
    public var frameId_:int;
    public var frameStart_:int;
    public var texture_:BitmapData;

    public function RunningAnimation(_arg1:C-, _arg2:int){
        this.animationData_ = _arg1;
        this.start_ = _arg2;
        this.frameId_ = 0;
        this.frameStart_ = _arg2;
        this.texture_ = null;
    }

    public function getTexture(_arg1:int):BitmapData{
        var _local2:0QV = this.animationData_.Bk[this.frameId_];
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
            this.texture_ = _local2.1lr.getTexture((Math.random() * 100));
        };
        return (this.texture_);
    }


}

