// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0W4.C-

package 0W4{
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class C- {

        public var 0NH:Number = 1;
        public var period_:int;
        public var 0jx:int;
        public var th:Boolean = false;
        public var Bk:Vector.<0QV>;

        public function C-(_arg1:XML){
            var _local2:XML;
            this.Bk = new Vector.<0QV>();
            super();
            if (("@prob" in _arg1))
            {
                this.0NH = Number(_arg1.@prob);
            };
            this.period_ = int((Number(_arg1.@period) * 1000));
            this.0jx = int((Number(_arg1.@periodJitter) * 1000));
            this.th = (String(_arg1.@sync) == "true");
            for each (_local2 in _arg1.Frame)
            {
                this.Bk.push(new 0QV(_local2));
            };
        }

        private function 1G1():int{
            if (this.0jx == 0)
            {
                return (this.period_);
            };
            return (((this.period_ - this.0jx) + ((2 * Math.random()) * this.0jx)));
        }

        public function IR(_arg1:int):int{
            if (this.th)
            {
                return ((int((_arg1 / this.period_)) * this.period_));
            };
            return (((_arg1 + this.1G1()) + (200 * Math.random())));
        }

        public function 1Jx(_arg1:int):int{
            if (this.th)
            {
                return (((int((_arg1 / this.period_)) * this.period_) + this.period_));
            };
            return ((_arg1 + this.1G1()));
        }


    }
}//package 0W4

