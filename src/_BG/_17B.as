// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.17B

package _BG{
import _1n4._1WS;

import _1qg._0io;

import _ZS._0ZC;

import flash.display.Sprite;
    import flash.display.Bitmap;
    import flash.display.BitmapData;
    import _CU._13j;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.util.AssetLibrary;
    import bD.0A-;
    import 1n4.1WS;
    import flash.filters.DropShadowFilter;
    import flash.geom.Rectangle;
    import flash.events.MouseEvent;
    import _04_._1JZ;
    import 1qg.0io;
    import 1mO.1fd;
    import _ZS.0ZC;

    public class _17B extends Sprite {

        public static const _0A7:String = "lofiObj2";
        public static const _1hq:int = 345;

        public static var _2:Boolean = false;

        private var kN:Bitmap;
        private var background:Sprite;
        private var background2:Sprite;
        private var icon:BitmapData;
        private var text:_13j;

        public function _17B(){
            mouseChildren = false;
            this.icon = TextureRedrawer.redraw(AssetLibrary._1JR(_0A7, _1hq), 40, true, 0);
            this.kN = new Bitmap(this.icon);
            this.kN.x = -5;
            this.kN.y = -8;
            this.background = _0A.gU();
            this.background2 = _0A._23(31, _0A.TE);
            this.text = new _13j().setSize(16).setColor(0xFFFFFF);
            this.text.setStringBuilder(new _1WS("Update!"));
            this.text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            this.text.setVerticalAlign(_13j.BOTTOM);
            this._25w();
            var _local1:Rectangle = this.kN.getBounds(this);
            var _local2:int = 10;
            this.text.x = (_local1.right - _local2);
            this.text.y = (_local1.bottom - _local2);
            addEventListener(MouseEvent.CLICK, this._0eJ);
        }

        public function _0eJ(_arg1:MouseEvent):void{
            var _local2:_0io = _1JZ._0JF().getInstance(_0io);
            _local2.dispatch(new _1fd());
            _0ZC.play("button_click");
        }

        public function _25w():void{
            if (_1fd.zh())
            {
                _2 = true;
                addChild(this.background);
                addChild(this.text);
            } else
            {
                _2 = false;
                addChild(this.background2);
            };
            addChild(this.kN);
        }


    }
}//package BG

