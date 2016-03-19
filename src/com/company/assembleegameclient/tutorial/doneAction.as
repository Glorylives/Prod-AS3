// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.tutorial.doneAction

package com.company.assembleegameclient.tutorial{
    import com.company.assembleegameclient.game.nx;

    public function doneAction(_arg1:nx, _arg2:String):void{
        if (_arg1.tutorial_ == null)
        {
            return;
        }
        _arg1.tutorial_.doneAction(_arg2);
    }

}//package com.company.assembleegameclient.tutorial

