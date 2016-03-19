// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.appengine.1WG

package com.company.assembleegameclient.appengine{
import com.company.assembleegameclient.util._09g;

public class _1WG {

        public var SJ:XML;

        public function _1WG(_arg1:XML){
            this.SJ = _arg1;
        }

        public function bestLevel():int{
            return (this.SJ.BestLevel);
        }

        public function ho():int{
            return (this.SJ.BestFame);
        }

        public function numStars():int{
            return (_09g.numStars(int(this.SJ.BestFame)));
        }


    }
}//package com.company.assembleegameclient.appengine

