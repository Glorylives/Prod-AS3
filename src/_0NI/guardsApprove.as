// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.guardsApprove

package _0NI{
    import _0OG._22M;

    public function guardsApprove(_arg1:Array, _arg2:_22M=null):Boolean{
        var _local3:Object;
        for each (_local3 in _arg1)
        {
            if ((_local3 is Function))
            {
                if ((_local3 as Function)()) continue;
                return (false);
            }
            if ((_local3 is Class))
            {
                _local3 = ((_arg2) ? _arg2.getInstance((_local3 as Class)) : new ((_local3 as Class))());
            }
            if (_local3.approve() == false)
            {
                return (false);
            }
        }
        return (true);
    }

}//package 0NI

