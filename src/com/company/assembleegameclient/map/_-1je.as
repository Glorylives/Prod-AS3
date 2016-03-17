// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.1je

package com.company.assembleegameclient.map{
    import com.company.assembleegameclient.objects.27S;
    import __AS3__.vec.Vector;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.objects.1J1;
    import com.company.util.BitmapUtil;
    import __AS3__.vec.*;

    public class 1je {

        public var type_:int;
        public var id_:String;
        public var 1NX:Boolean = true;
        public var minDamage_:int = 0;
        public var maxDamage_:int = 0;
        public var animate_:1Ad;
        public var ie:int = -1;
        public var 0Qw:int = 0;
        public var speed_:Number = 1;
        public var 1mN:Number = 0;
        public var 1FK:Number = 0;
        public var slideAmount_:Number = 0;
        public var push_:Boolean = false;
        public var sink_:Boolean = false;
        public var 1rv:Boolean = false;
        public var 0wB:Boolean = false;
        public var 0Ly:Boolean = false;
        private var 0sJ:27S = null;
        private var 21I:27S = null;
        private var 0SB:27S = null;
        private var 247:Vector.<BitmapData> = null;
        private var 27:Vector.<BitmapData> = null;
        public var 1j7:Boolean = false;
        public var 0zb:27S = null;
        public var 1yw:1Ad = null;

        public function 1je(_arg1:XML){
            this.animate_ = new 1Ad();
            super();
            this.type_ = int(_arg1.@type);
            this.id_ = String(_arg1.@id);
            this.1NX = _arg1.hasOwnProperty("NoWalk");
            if (_arg1.hasOwnProperty("MinDamage"))
            {
                this.minDamage_ = int(_arg1.MinDamage);
            };
            if (_arg1.hasOwnProperty("MaxDamage"))
            {
                this.maxDamage_ = int(_arg1.MaxDamage);
            };
            this.push_ = _arg1.hasOwnProperty("Push");
            if (_arg1.hasOwnProperty("Animate"))
            {
                this.animate_.1tW(XML(_arg1.Animate));
            };
            if (_arg1.hasOwnProperty("BlendPriority"))
            {
                this.ie = int(_arg1.BlendPriority);
            };
            if (_arg1.hasOwnProperty("CompositePriority"))
            {
                this.0Qw = int(_arg1.CompositePriority);
            };
            if (_arg1.hasOwnProperty("Speed"))
            {
                this.speed_ = Number(_arg1.Speed);
            };
            if (_arg1.hasOwnProperty("SlideAmount"))
            {
                this.slideAmount_ = Number(_arg1.SlideAmount);
            };
            this.1mN = ((_arg1.hasOwnProperty("XOffset")) ? Number(_arg1.XOffset) : 0);
            this.1FK = ((_arg1.hasOwnProperty("YOffset")) ? Number(_arg1.YOffset) : 0);
            this.push_ = _arg1.hasOwnProperty("Push");
            this.sink_ = _arg1.hasOwnProperty("Sink");
            this.1rv = _arg1.hasOwnProperty("Sinking");
            this.0wB = _arg1.hasOwnProperty("RandomOffset");
            if (_arg1.hasOwnProperty("Edge"))
            {
                this.0Ly = true;
                this.0sJ = new 1J1(XML(_arg1.Edge));
                if (_arg1.hasOwnProperty("Corner"))
                {
                    this.21I = new 1J1(XML(_arg1.Corner));
                };
                if (_arg1.hasOwnProperty("InnerCorner"))
                {
                    this.0SB = new 1J1(XML(_arg1.InnerCorner));
                };
            };
            this.1j7 = _arg1.hasOwnProperty("SameTypeEdgeMode");
            if (_arg1.hasOwnProperty("Top"))
            {
                this.0zb = new 1J1(XML(_arg1.Top));
                this.1yw = new 1Ad();
                if (_arg1.hasOwnProperty("TopAnimate"))
                {
                    this.1yw.1tW(XML(_arg1.TopAnimate));
                };
            };
        }

        public function 1SF():Vector.<BitmapData>{
            if (((!(this.0Ly)) || (!((this.247 == null)))))
            {
                return (this.247);
            };
            this.247 = new Vector.<BitmapData>(9);
            this.247[3] = this.0sJ.getTexture(0);
            this.247[1] = BitmapUtil.0E6(this.247[3], 1);
            this.247[5] = BitmapUtil.0E6(this.247[3], 2);
            this.247[7] = BitmapUtil.0E6(this.247[3], 3);
            if (this.21I != null)
            {
                this.247[0] = this.21I.getTexture(0);
                this.247[2] = BitmapUtil.0E6(this.247[0], 1);
                this.247[8] = BitmapUtil.0E6(this.247[0], 2);
                this.247[6] = BitmapUtil.0E6(this.247[0], 3);
            };
            return (this.247);
        }

        public function TB():Vector.<BitmapData>{
            if ((((this.0SB == null)) || (!((this.27 == null)))))
            {
                return (this.27);
            };
            this.27 = this.247.concat();
            this.27[0] = this.0SB.getTexture(0);
            this.27[2] = BitmapUtil.0E6(this.27[0], 1);
            this.27[8] = BitmapUtil.0E6(this.27[0], 2);
            this.27[6] = BitmapUtil.0E6(this.27[0], 3);
            return (this.27);
        }


    }
}//package com.company.assembleegameclient.map

