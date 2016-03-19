// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//gx.0Xo

package gx{
    import com.company.assembleegameclient.parameters.Parameters;

    public class 0Xo {


        public function 09N(_arg1:String):Boolean{
            var _local2:Boolean;
            if (_arg1 == null)
            {
                return (true);
            }
            if ((((((((_arg1 == Parameters.si)) || ((_arg1 == Parameters.Iu)))) || ((_arg1 == Parameters.1Wj)))) || ((_arg1 == Parameters.uL))))
            {
                _local2 = true;
            }
            if (_arg1.charAt(0) == "#")
            {
                _local2 = true;
            }
            if (_arg1.charAt(0) == "@")
            {
                _local2 = true;
            }
            return (_local2);
        }


    }
}//package gx

