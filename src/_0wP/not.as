// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0wp.not

package _0wP{
    import _1i._1o;
    import _1Xd.equalTo;

    public function not(_arg1:Object):_1o{
        if ((_arg1 is _1o))
        {
            return (new _lj((_arg1 as _1o)));
        }
        return (not(equalTo(_arg1)));
    }

}//package 0wp

