// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.1Ge

package com.company.assembleegameclient.ui{
    import _Jy._1HZ;
    import 1n4.1WS;

    public class 1Ge extends 1BB {

        public const textChanged:_1HZ = new _1HZ();

        public function 1Ge(_arg1:int, _arg2:String, _arg3:int=0){
            super(_arg3);
            OW(_arg1);
            text_.setStringBuilder(new 1WS(_arg2));
            text_.textChanged.addOnce(this.onTextChanged);
        }

        protected function onTextChanged():void{
            initText();
            this.textChanged.dispatch();
        }


    }
}//package com.company.assembleegameclient.ui

