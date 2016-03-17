// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.1qi

package com.company.assembleegameclient.map{
import _04w.Background;

import _1so._QF;

import _9T._Zf;

import _Jy._1HZ;

import com.company.assembleegameclient.game.nx;
import com.company.assembleegameclient.objects.BasicObject;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects._08T;

import flash.display.Sprite;
import flash.geom.Point;

import flash.utils.Dictionary;

public class _1qi extends Sprite {

        public var goDict_:Dictionary;
        public var gs_:nx;
        public var name_:String;
        public var player_:Player = null;
        public var showDisplays_:Boolean;
        public var width_:int;
        public var height_:int;
        public var _1Uc:int;
        protected var allowPlayerTeleport_:Boolean;
        public var background_:Background = null;
        public var map_:Sprite;
        public var _0Jb:Js = null;
        public var _0I4:_1Bu = null;
        public var mapOverlay_:_Zf = null;
        public var partyOverlay_:_QF = null;
        public var _64:Vector.<Square>;
        public var squares_:Vector.<Square>;
        public var _1n5:Dictionary;
        public var merchLookup_:Object;
        public var party_:_08T = null;
        public var quest_:Quest = null;
        public var signalRenderSwitch:_1HZ;
        protected var _0O4:Boolean = false;
        public var isPetYard:Boolean = false;

        public function _1qi(){
            this.goDict_ = new Dictionary();
            this.map_ = new Sprite();
            this._64 = new Vector.<Square>();
            this.squares_ = new Vector.<Square>();
            this._1n5 = new Dictionary();
            this.merchLookup_ = new Object();
            this.signalRenderSwitch = new _1HZ(Boolean);
            super();
        }

        public function setProps(_arg1:int, _arg2:int, _arg3:String, _arg4:int, _arg5:Boolean, _arg6:Boolean):void{
        }

        public function addObj(_arg1:BasicObject, _arg2:Number, _arg3:Number):void{
        }

        public function setGroundTile(_arg1:int, _arg2:int, _arg3:uint):void{
        }

        public function initialize():void{
        }

        public function dispose():void{
        }

        public function update(_arg1:int, _arg2:int):void{
        }

        public function pSTopW(_arg1:Number, _arg2:Number):Point{
            return (null);
        }

        public function removeObj(_arg1:int):void{
        }

        public function draw(_arg1:_1C8, _arg2:int):void{
        }

        public function _20B():Boolean{
            return (((!((this.name_ == Map._1U3))) && (this.allowPlayerTeleport_)));
        }


    }
}//package com.company.assembleegameclient.map

