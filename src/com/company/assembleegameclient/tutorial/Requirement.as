// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.tutorial.Requirement

package com.company.assembleegameclient.tutorial{
    import com.company.assembleegameclient.objects.ObjectLibrary;

    public class Requirement {

        public var type_:String;
        public var _1fn:int = -1;
        public var objectType_:int = -1;
        public var s:String = "";
        public var radius_:Number = 1;

        public function Requirement(_arg1:XML){
            this.type_ = String(_arg1);
            var _local2:String = String(_arg1.@objectId);
            if (((!((_local2 == null))) && (!((_local2 == "")))))
            {
                this.objectType_ = ObjectLibrary.get[_local2];
            };
            this.s = String(_arg1.@objectName).replace("tutorial_script", "tutorial");
            if (this.s == null)
            {
                this.s = "";
            };
            this._1fn = int(_arg1.@slot);
            this.radius_ = Number(_arg1.@radius);
        }

    }
}//package com.company.assembleegameclient.tutorial

