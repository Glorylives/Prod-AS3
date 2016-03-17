// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.0j1

package yo{
    import 1E8.1kN;
    import flash.utils.IDataInput;

    public class 0j1 extends 1kN {

        public function 0j1(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        final override public function parseFromInput(_arg1:IDataInput):void{
            throw (new Error((("Client should not receive " + id) + " messages")));
        }


    }
}//package yo

