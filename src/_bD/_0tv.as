// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//bD.0tv

package _bD{
import _1uF._1Mf;

import com.company.assembleegameclient.parameters.Parameters;

    public class _0tv extends _1Mf {

        [Inject]
        public var view:_1Bn;
        [Inject]
        private var _12K:_0rh;


        override public function initialize():void{
            this.view._0l.add(this.la);
        }

        override public function destroy():void{
            this.view._0l.remove(this.la);
        }

        private function la():void{
            this._12K.dispatch(_1Ys.make(Parameters._1Wj, "No players are eligible for teleporting"));
        }


    }
}//package bD

