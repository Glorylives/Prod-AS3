// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//WebMain

package {
import OZ.Fk;

import Rg.VY;

import _04_.Pu;

import _0Fr._1W0;

import _0Fr._dW;

import _0zL._Ng;

import _1uF._3e;

import cW.Lb;

import com.company.assembleegameclient.util._0sg;

import com.company.assembleegameclient.util._BJ;

import flash.display.Sprite;
    import flash.display.Stage;
    import go.Rr;
    import flash.events.Event;
    import com.company.assembleegameclient.util._119;
    import flash.display.StageScaleMode;
    import com.company.assembleegameclient.parameters.Parameters;
    import _04_._1JZ;
    import flash.display.LoaderInfo;

    import flash.system.Capabilities;

import uG.Ue;

public class WebMain extends Sprite {

        public static var _0Kr:Stage;

        protected var context:_dW;

        public function WebMain(){
            if (stage)
            {
                this.setup();
            } else
            {
                addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            };
        }

        private function onAddedToStage(_arg1:Event):void{
            removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            this.setup();
        }

        private function setup():void{
            this._1QO();
            this._1Ea();
            new _119().load();
            stage.scaleMode = StageScaleMode.EXACT_FIT;
            this.context.kf.getInstance(_Ng).dispatch();
            this.VK();
            _0Kr = stage;
        }

        private function _1QO():void{
            Parameters.root = stage.root;
        }

        function _1Ea():void
        {
            this.context = new _1JZ();
            this.context.kf.map(LoaderInfo)._1eo(root.stage.root.loaderInfo);
            var _local1:_0sg = new _0sg(this);
            this.context.kf.map(_0sg)._1eo(_local1);
            this.context.extend(_3e).extend(_0Ba).configure(_1h5).configure(_042).configure(_12B).configure(_15X).configure(_1TF).configure(_1nK).configure(_1MA).configure(_1oe).configure(Lb).configure(_0Ay).configure(_0o).configure(WA).configure(Pu).configure(IE).configure(_0Y).configure(_1AR).configure(_0KM).configure(_1tS).configure(_1v4).configure(_0nJ).configure(el).configure(_26H).configure(VY).configure(JT).configure(Ue).configure(_1zv).configure(_1Oh).configure(_0Mc).configure(CL).configure(_1ZE).configure(_0lH).configure(_0M7).configure(_0BO).configure(_1mz).configure(_1Er).configure(_0Rr).configure(_1uu).configure(this);
            this.context._0ZO = _1W0.DEBUG;
        }

import flash.system.Capabilities;

private function VK():void{
            if (Capabilities.playerType == "Desktop")
            {
                Parameters.data_.fullscreenMode = false;
                Parameters.save();
            };
        }


    }
}//package 

