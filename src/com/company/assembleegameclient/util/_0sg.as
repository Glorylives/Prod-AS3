// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.0sg

package com.company.assembleegameclient.util{
    import flash.display.DisplayObject;
    import flash.display.DisplayObjectContainer;
    import flash.display.InteractiveObject;
    import flash.events.Event;
    import flash.events.*;

    public class _0sg implements IEventDispatcher {

        private static var stage3D:_23J = null;

        protected var _0yJ:DisplayObject;

        public function _0sg(_arg1:DisplayObject){
            this._0yJ = _arg1;
        }

        public function _0ft():DisplayObjectContainer{
            return (this._0yJ.stage);
        }

        public function _5m():Number{
            if (this._0yJ.stage != null)
            {
                return (this._0yJ.stage.stageWidth);
            }
            return (800);
        }

        public function Hc():Number{
            if (this._0yJ.stage != null)
            {
                return (this._0yJ.stage.stageHeight);
            }
            return (600);
        }

        public function _0OC():InteractiveObject{
            return (this._0yJ.stage.focus);
        }

        public function setFocus(_arg1:InteractiveObject):void{
            this._0yJ.stage.focus = _arg1;
        }

        public function addEventListener(_arg1:String, _arg2:Function, _arg3:Boolean=false, _arg4:int=0, _arg5:Boolean=false):void{
            this._0yJ.stage.addEventListener(_arg1, _arg2, _arg3, _arg4, _arg5);
        }

        public function removeEventListener(_arg1:String, _arg2:Function, _arg3:Boolean=false):void{
            this._0yJ.stage.removeEventListener(_arg1, _arg2, _arg3);
        }

        public function dispatchEvent(_arg1:Event):Boolean{
            return (this._0yJ.stage.dispatchEvent(_arg1));
        }

        public function hasEventListener(_arg1:String):Boolean{
            return (this._0yJ.stage.hasEventListener(_arg1));
        }

        public function willTrigger(_arg1:String):Boolean{
            return (this._0yJ.stage.willTrigger(_arg1));
        }

        public function TM():String{
            return (this._0yJ.stage.quality);
        }

        public function _0PF(_arg1:String):void{
            this._0yJ.stage.quality = _arg1;
        }

        public function getStage3Ds(_arg1:int):_23J{
            if (stage3D == null)
            {
                stage3D = new _23J(this._0yJ.stage.stage3Ds[_arg1]);
            }
            return (stage3D);
        }


    }
}//package com.company.assembleegameclient.util

