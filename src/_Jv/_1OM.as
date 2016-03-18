// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//JV.1OM

package _Jv{
import JV.yf;

import _0xM._0YR;

import _111._0qL;

import flash.display.Sprite;
    import flash.display.DisplayObjectContainer;

    public class _1OM extends Sprite {

        private var menu:yf;
        public var _0sw:DisplayObjectContainer;
        private var tooltips:_0YR;
        public var top:DisplayObjectContainer;
        public var _1Nd:DisplayObjectContainer;
        private var dialogs:_0qL;
        public var  each:DisplayObjectContainer;
        public var console:DisplayObjectContainer;

        public function _1OM(){
            addChild((this.menu = new yf()));
            addChild((this._0sw = new Sprite()));
            addChild((this.top = new Sprite()));
            addChild((this._1Nd = new Sprite()));
            this._1Nd.mouseEnabled = false;
            addChild((this.dialogs = new _0qL()));
            addChild((this.tooltips = new _0YR()));
            addChild((this. each = new Sprite()));
            addChild((this.console = new Sprite()));
        }

    }
}//package JV

