// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.11g

package _1zG{
import _1E8._1kN;

    import flash.utils.IDataOutput;

    public class _11g extends _1kN {

        public function _11g(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        final override public function writeToOutput(_arg1:IDataOutput):void{
            throw (new Error((("Client should not send " + id) + " messages")));
        }


    }
}//package 1zG

