// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.game.nx

package com.company.assembleegameclient.game{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import com.company.assembleegameclient.tutorial.Tutorial;
    import com.company.assembleegameclient.map.1qi;
    import WZ.0Te;
    import 1PB.yi;
    import com.company.assembleegameclient.map.1C8;
    import 1r4.1T2;
    import com.company.assembleegameclient.objects.GameObject;
    import 1zG.0BS;

    public class nx extends Sprite {

        public const closed:_1HZ = new _1HZ();

        public var isEditor:Boolean;
        public var tutorial_:Tutorial;
        public var mui_:0Df;
        public var lastUpdate_:int;
        public var moveRecords_:1YH;
        public var map:1qi;
        public var model:0Te;
        public var hudView:yi;
        public var camera_:1C8;
        public var gsc_:1T2;

        public function nx(){
            this.moveRecords_ = new 1YH();
            this.camera_ = new 1C8();
            super();
        }

        public function initialize():void{
        }

        public function setFocus(_arg1:GameObject):void{
        }

        public function applyMapInfo(_arg1:0BS):void{
        }

        public function evalIsNotInCombatMapArea():Boolean{
            return (false);
        }


    }
}//package com.company.assembleegameclient.game

