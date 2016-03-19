﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1kr.AppEngineRequestStats

package 1kr{
    import go.0By;

    public class AppEngineRequestStats {

        private const 15Q:Object = {}

        [Inject]
        public var 1XE:0By;


        public function 2U(_arg1:String, _arg2:Boolean, _arg3:int):void{
            var _local4:StatsWatch = (this.15Q[_arg1] = ((this.15Q[_arg1]) || (new StatsWatch(_arg1))));
            _local4.addResponse(_arg2, _arg3);
            this.1XE.dispatch(_local4);
        }


    }
}//package 1kr

import 1nd.1Qv;

class StatsWatch extends 1Qv {

    private static const STATS_PATTERN:String = "[APPENGINE STATS] [0xFFEE00:{/x={MEAN}ms, ok={OK}/{COUNT}} {NAME}]";
    private static const MEAN:String = "{MEAN}";
    private static const COUNT:String = "{COUNT}";
    private static const OK:String = "{OK}";
    private static const NAME:String = "{NAME}";

    private var count:int;
    private var time:int;
    private var mean:int;
    private var ok:int;

    public function StatsWatch(_arg1:String){
        super(_arg1, "");
        this.count = 0;
        this.ok = 0;
        this.time = 0;
    }

    public function addResponse(_arg1:Boolean, _arg2:int):void{
        ((_arg1) && (++this.ok));
        this.time = (this.time + _arg2);
        this.mean = (this.time / ++this.count);
        data = this.report();
    }

    private function report():String{
        return (STATS_PATTERN.replace(MEAN, this.mean).replace(COUNT, this.count).replace(OK, this.ok).replace(NAME, name));
    }


}

