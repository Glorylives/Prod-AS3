// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.tutorial.Step

package com.company.assembleegameclient.tutorial{
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class Step {

        public var text_:String;
        public var action_:String;
        public var 1rf:Vector.<UIDrawBox>;
        public var 1hu:Vector.<UIDrawArrow>;
        public var ic:Vector.<Requirement>;
        public var 1hp:int = 0;

        public function Step(_arg1:XML){
            var _local2:XML;
            var _local3:XML;
            var _local4:XML;
            this.1rf = new Vector.<UIDrawBox>();
            this.1hu = new Vector.<UIDrawArrow>();
            this.ic = new Vector.<Requirement>();
            super();
            for each (_local2 in _arg1.UIDrawBox)
            {
                this.1rf.push(new UIDrawBox(_local2));
            };
            for each (_local3 in _arg1.UIDrawArrow)
            {
                this.1hu.push(new UIDrawArrow(_local3));
            };
            for each (_local4 in _arg1.Requirement)
            {
                this.ic.push(new Requirement(_local4));
            };
        }

        public function toString():String{
            return ((("[" + this.text_) + "]"));
        }


    }
}//package com.company.assembleegameclient.tutorial

