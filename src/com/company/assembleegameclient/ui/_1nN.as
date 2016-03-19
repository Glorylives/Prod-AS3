// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.1nN

package com.company.assembleegameclient.ui{
import _1n4._1WS;
import _1n4._1cA;

import _Jy._1HZ;

import com.company.assembleegameclient.ui._1Ri;

public class _1nN extends _1BB {

        public const textChanged:_1HZ = new _1HZ();

        public function _1nN(_arg1:int, _arg2:String, _arg3:int=0, _arg4:Boolean=false){
            super(_arg3);
            OW(_arg1);
            if (_arg4)
            {
                text_.setStringBuilder(new _1WS(_arg2));
            } else
            {
                text_.setStringBuilder(new _1cA().setParams(_arg2));
            }
            text_.textChanged.addOnce(this.onTextChanged);
        }

        protected function onTextChanged():void{
            initText();
            this.textChanged.dispatch();
        }


    }
}//package com.company.assembleegameclient.ui

