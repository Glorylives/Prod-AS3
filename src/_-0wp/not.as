// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0wp.not

package 0wp{
    import 1i-.1o;
    import 1Xd.equalTo;

    public function not(_arg1:Object):1o{
        if ((_arg1 is 1o))
        {
            return (new lj((_arg1 as 1o)));
        };
        return (not(equalTo(_arg1)));
    }

}//package 0wp

