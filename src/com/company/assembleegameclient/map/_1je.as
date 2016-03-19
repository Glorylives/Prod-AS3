// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.1je

package com.company.assembleegameclient.map{
import com.company.assembleegameclient.objects._1J1;
import com.company.assembleegameclient.objects._27S;

import flash.display.BitmapData;
    import com.company.util.BitmapUtil;

    public class _1je {

        public var type_:int;
        public var id_:String;
        public var _1NX:Boolean = true;
        public var minDamage_:int = 0;
        public var maxDamage_:int = 0;
        public var animate_:_1Ad;
        public var ie:int = -1;
        public var _0Qw:int = 0;
        public var speed_:Number = 1;
        public var _1mN:Number = 0;
        public var _1FK:Number = 0;
        public var slideAmount_:Number = 0;
        public var push_:Boolean = false;
        public var sink_:Boolean = false;
        public var _1rv:Boolean = false;
        public var _0wB:Boolean = false;
        public var _0Ly:Boolean = false;
        private var _0sJ:_27S = null;
        private var _21I:_27S = null;
        private var _0SB:_27S = null;
        private var _247:Vector.<BitmapData> = null;
        private var _27:Vector.<BitmapData> = null;
        public var _1j7:Boolean = false;
        public var _0zb:_27S = null;
        public var _1yw:_1Ad = null;

        public function _1je(_arg1:XML){
            this.animate_ = new _1Ad();
            super();
            this.type_ = int(_arg1.@type);
            this.id_ = String(_arg1.@id);
            this._1NX = _arg1.hasOwnProperty("NoWalk");
            if (_arg1.hasOwnProperty("MinDamage"))
            {
                this.minDamage_ = int(_arg1.MinDamage);
            }
            if (_arg1.hasOwnProperty("MaxDamage"))
            {
                this.maxDamage_ = int(_arg1.MaxDamage);
            }
            this.push_ = _arg1.hasOwnProperty("Push");
            if (_arg1.hasOwnProperty("Animate"))
            {
                this.animate_._1tW(XML(_arg1.Animate));
            }
            if (_arg1.hasOwnProperty("BlendPriority"))
            {
                this.ie = int(_arg1.BlendPriority);
            }
            if (_arg1.hasOwnProperty("CompositePriority"))
            {
                this._0Qw = int(_arg1.CompositePriority);
            }
            if (_arg1.hasOwnProperty("Speed"))
            {
                this.speed_ = Number(_arg1.Speed);
            }
            if (_arg1.hasOwnProperty("SlideAmount"))
            {
                this.slideAmount_ = Number(_arg1.SlideAmount);
            }
            this._1mN = ((_arg1.hasOwnProperty("XOffset")) ? Number(_arg1.XOffset) : 0);
            this._1FK = ((_arg1.hasOwnProperty("YOffset")) ? Number(_arg1.YOffset) : 0);
            this.push_ = _arg1.hasOwnProperty("Push");
            this.sink_ = _arg1.hasOwnProperty("Sink");
            this._1rv = _arg1.hasOwnProperty("Sinking");
            this._0wB = _arg1.hasOwnProperty("RandomOffset");
            if (_arg1.hasOwnProperty("Edge"))
            {
                this._0Ly = true;
                this._0sJ = new _1J1(XML(_arg1.Edge));
                if (_arg1.hasOwnProperty("Corner"))
                {
                    this._21I = new _1J1(XML(_arg1.Corner));
                }
                if (_arg1.hasOwnProperty("InnerCorner"))
                {
                    this._0SB = new _1J1(XML(_arg1.InnerCorner));
                }
            }
            this._1j7 = _arg1.hasOwnProperty("SameTypeEdgeMode");
            if (_arg1.hasOwnProperty("Top"))
            {
                this._0zb = new _1J1(XML(_arg1.Top));
                this._1yw = new _1Ad();
                if (_arg1.hasOwnProperty("TopAnimate"))
                {
                    this._1yw._1tW(XML(_arg1.TopAnimate));
                }
            }
        }

        public function _1SF():Vector.<BitmapData>{
            if (((!(this._0Ly)) || (!((this._247 == null)))))
            {
                return (this._247);
            }
            this._247 = new Vector.<BitmapData>(9);
            this._247[3] = this._0sJ.getTexture(0);
            this._247[1] = BitmapUtil._0E6(this._247[3], 1);
            this._247[5] = BitmapUtil._0E6(this._247[3], 2);
            this._247[7] = BitmapUtil._0E6(this._247[3], 3);
            if (this._21I != null)
            {
                this._247[0] = this._21I.getTexture(0);
                this._247[2] = BitmapUtil._0E6(this._247[0], 1);
                this._247[8] = BitmapUtil._0E6(this._247[0], 2);
                this._247[6] = BitmapUtil._0E6(this._247[0], 3);
            }
            return (this._247);
        }

        public function TB():Vector.<BitmapData>{
            if ((((this._0SB == null)) || (!((this._27 == null)))))
            {
                return (this._27);
            }
            this._27 = this._247.concat();
            this._27[0] = this._0SB.getTexture(0);
            this._27[2] = BitmapUtil._0E6(this._27[0], 1);
            this._27[8] = BitmapUtil._0E6(this._27[0], 2);
            this._27[6] = BitmapUtil._0E6(this._27[0], 3);
            return (this._27);
        }


    }
}//package com.company.assembleegameclient.map

