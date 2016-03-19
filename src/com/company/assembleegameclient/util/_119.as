// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.1l9

package com.company.assembleegameclient.util{
import __ZS._VA;
import __ZS._4e;

import avmplus.getQualifiedClassName;

import com.company.assembleegameclient.map.T8;

import com.company.assembleegameclient.objects.ObjectLibrary;

import com.company.util.AssetLibrary;

import flash.utils.ByteArray;

import kabam.rotmg.assets._0EP;

public class _119 {

        public static var cQ:Boolean = false;

        public var _214:_4e;

        public function _119(){
            this._214 = new 0xc();
            super();
        }

        public function load():void{
            this._1bh();
            this.BT();
            this._1S2();
            this._0TQ();
            this._0ht();
            this.aK();
            this._1En();
            this._1oy();
            Parameters.load();
            Options.rX();
            this._214.load();
            _VA.load();
        }

        public function _1bh():void
        {
            AssetLibrary._1R5("lofiChar8x8", new _0EP.lofiCharEmbed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiChar16x8", new _0EP.lofiCharEmbed_().bitmapData, 16, 8);
            AssetLibrary._1R5("lofiChar16x16", new _0EP.lofiCharEmbed_().bitmapData, 16, 16);
            AssetLibrary._1R5("lofiChar28x8", new _0EP.lofiChar2Embed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiChar216x8", new _0EP.lofiChar2Embed_().bitmapData, 16, 8);
            AssetLibrary._1R5("lofiChar216x16", new _0EP.lofiChar2Embed_().bitmapData, 16, 16);
            AssetLibrary._1R5("lofiCharBig", new _0EP.lofiCharBigEmbed_().bitmapData, 16, 16);
            AssetLibrary._1R5("lofiEnvironment", new _0EP.lofiEnvironmentEmbed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiEnvironment2", new _0EP.lofiEnvironment2Embed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiEnvironment3", new _0EP.lofiEnvironment3Embed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiInterface", new _0EP.lofiInterfaceEmbed_().bitmapData, 8, 8);
            AssetLibrary._1R5("redLootBag", new _0EP.redLootBagEmbed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiInterfaceBig", new _0EP.lofiInterfaceBigEmbed_().bitmapData, 16, 16);
            AssetLibrary._1R5("lofiInterface2", new _0EP.lofiInterface2Embed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiObj", new _0EP.lofiObjEmbed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiObj2", new _0EP.lofiObj2Embed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiObj3", new _0EP.lofiObj3Embed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiObj4", new _0EP.lofiObj4Embed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiObj5", new _0EP.lofiObj5Embed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiObj6", new _0EP.lofiObj6Embed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiObjBig", new _0EP.lofiObjBigEmbed_().bitmapData, 16, 16);
            AssetLibrary._1R5("lofiObj40x40", new _0EP.lofiObj40x40Embed_().bitmapData, 40, 40);
            AssetLibrary._1R5("lofiProjs", new _0EP.lofiProjsEmbed_().bitmapData, 8, 8);
            AssetLibrary._1R5("lofiParticlesShocker", new _0EP.lofiParticlesShockerEmbed_().bitmapData, 16, 16);
            AssetLibrary._1R5("lofiProjsBig", new _0EP.lofiProjsBigEmbed_().bitmapData, 16, 16);
            AssetLibrary._1R5("lofiParts", new _0EP.lofiPartsEmbed_().bitmapData, 8, 8);
            AssetLibrary._1R5("stars", new _0EP.starsEmbed_().bitmapData, 5, 5);
            AssetLibrary._1R5("textile4x4", new _0EP.textile4x4Embed_().bitmapData, 4, 4);
            AssetLibrary._1R5("textile5x5", new _0EP.textile5x5Embed_().bitmapData, 5, 5);
            AssetLibrary._1R5("textile9x9", new _0EP.textile9x9Embed_().bitmapData, 9, 9);
            AssetLibrary._1R5("textile10x10", new _0EP.textile10x10Embed_().bitmapData, 10, 10);
            AssetLibrary._1R5("inner_mask", new _0EP.innerMaskEmbed_().bitmapData, 4, 4);
            AssetLibrary._1R5("sides_mask", new _0EP.sidesMaskEmbed_().bitmapData, 4, 4);
            AssetLibrary._1R5("outer_mask", new _0EP.outerMaskEmbed_().bitmapData, 4, 4);
            AssetLibrary._1R5("innerP1_mask", new _0EP.innerP1MaskEmbed_().bitmapData, 4, 4);
            AssetLibrary._1R5("innerP2_mask", new _0EP.innerP2MaskEmbed_().bitmapData, 4, 4);
            AssetLibrary._1R5("invisible", new HL(8, 8, true, 0), 8, 8);
            AssetLibrary._1R5("d3LofiObjEmbed", new _0EP.d3LofiObjEmbed_().bitmapData, 8, 8);
            AssetLibrary._1R5("d3LofiObjBigEmbed", new _0EP.d3LofiObjBigEmbed_().bitmapData, 16, 16);
            AssetLibrary._1R5("d1lofiObjBig", new _0EP.d1LofiObjBigEmbed_().bitmapData, 16, 16);
            AssetLibrary._1R5("cursorsEmbed", new _0EP.cursorsEmbed_().bitmapData, 32, 32);
        }

        private function BT():void{
            _V4.add("chars8x8rBeach", new _0EP.chars8x8rBeachEmbed_().bitmapData, null, 8, 8, 56, 8, _BJ.RIGHT);
            _V4.add("chars8x8dBeach", new _0EP.chars8x8dBeachEmbed_().bitmapData, null, 8, 8, 56, 8, _BJ.DOWN);
            _V4.add("chars8x8rLow1", new _0EP.chars8x8rLow1Embed_().bitmapData, null, 8, 8, 56, 8, _BJ.RIGHT);
            _V4.add("chars8x8rLow2", new _0EP.chars8x8rLow2Embed_().bitmapData, null, 8, 8, 56, 8, _BJ.RIGHT);
            _V4.add("chars8x8rMid", new _0EP.chars8x8rMidEmbed_().bitmapData, null, 8, 8, 56, 8, _BJ.RIGHT);
            _V4.add("chars8x8rMid2", new _0EP.chars8x8rMid2Embed_().bitmapData, null, 8, 8, 56, 8, _BJ.RIGHT);
            _V4.add("chars8x8rHigh", new _0EP.chars8x8rHighEmbed_().bitmapData, null, 8, 8, 56, 8, _BJ.RIGHT);
            _V4.add("chars8x8rHero1", new _0EP.chars8x8rHero1Embed_().bitmapData, null, 8, 8, 56, 8, _BJ.RIGHT);
            _V4.add("chars8x8rHero2", new _0EP.chars8x8rHero2Embed_().bitmapData, null, 8, 8, 56, 8, _BJ.RIGHT);
            _V4.add("chars8x8dHero1", new _0EP.chars8x8dHero1Embed_().bitmapData, null, 8, 8, 56, 8, _BJ.DOWN);
            _V4.add("chars16x16dMountains1", new _0EP.chars16x16dMountains1Embed_().bitmapData, null, 16, 16, 112, 16, _BJ.DOWN);
            _V4.add("chars16x16dMountains2", new _0EP.chars16x16dMountains2Embed_().bitmapData, null, 16, 16, 112, 16, _BJ.DOWN);
            _V4.add("chars8x8dEncounters", new _0EP.chars8x8dEncountersEmbed_().bitmapData, null, 8, 8, 56, 8, _BJ.DOWN);
            _V4.add("chars8x8rEncounters", new _0EP.chars8x8rEncountersEmbed_().bitmapData, null, 8, 8, 56, 8, _BJ.RIGHT);
            _V4.add("chars16x8dEncounters", new _0EP.chars16x8dEncountersEmbed_().bitmapData, null, 16, 8, 112, 8, _BJ.DOWN);
            _V4.add("chars16x8rEncounters", new _0EP.chars16x8rEncountersEmbed_().bitmapData, null, 16, 8, 112, 8, _BJ.DOWN);
            _V4.add("chars16x16dEncounters", new _0EP.chars16x16dEncountersEmbed_().bitmapData, null, 16, 16, 112, 16, _BJ.DOWN);
            _V4.add("chars16x16dEncounters2", new _0EP.chars16x16dEncounters2Embed_().bitmapData, null, 16, 16, 112, 16, _BJ.DOWN);
            _V4.add("chars16x16rEncounters", new _0EP.chars16x16rEncountersEmbed_().bitmapData, null, 16, 16, 112, 16, _BJ.RIGHT);
            _V4.add("d3Chars8x8rEmbed", new _0EP.d3Chars8x8rEmbed_().bitmapData, null, 8, 8, 56, 8, _BJ.RIGHT);
            _V4.add("d3Chars16x16rEmbed", new _0EP.d3Chars16x16rEmbed_().bitmapData, null, 16, 16, 112, 16, _BJ.RIGHT);
            _V4.add("players", new _0EP.playersEmbed_().bitmapData, new _0EP.playersMaskEmbed_().bitmapData, 8, 8, 56, 24, _BJ.RIGHT);
            _V4.add("playerskins", new _0EP.playersSkinsEmbed_().bitmapData, new _0EP.playersSkinsMaskEmbed_().bitmapData, 8, 8, 56, 24, _BJ.RIGHT);
            _V4.add("chars8x8rPets1", new _0EP.chars8x8rPets1Embed_().bitmapData, new _0EP.chars8x8rPets1MaskEmbed_().bitmapData, 8, 8, 56, 8, _BJ.RIGHT);
            _V4.add("chars8x8rPets2", new _0EP.chars8x8rPets2Embed_().bitmapData, new _0EP.chars8x8rPets1MaskEmbed_().bitmapData, 8, 8, 56, 8, _BJ.RIGHT);
            _V4.add("petsDivine", new _0EP.petsDivineEmbed_().bitmapData, null, 16, 16, 112, 16, _BJ.RIGHT);
            _V4.add("playerskins16", new _0EP.playersSkins16Embed_().bitmapData, new _0EP.playersSkins16MaskEmbed_().bitmapData, 16, 16, 112, 48, _BJ.RIGHT);
            _V4.add("d1chars16x16r", new _0EP.d1Chars16x16rEmbed_().bitmapData, null, 16, 16, 112, 16, _BJ.RIGHT);
        }

        private function _1S2():void{
            _0ZC.load("button_click");
            _0ZC.load("death_screen");
            _0ZC.load("enter_realm");
            _0ZC.load("error");
            _0ZC.load("inventory_move_item");
            _0ZC.load("level_up");
            _0ZC.load("loot_appears");
            _0ZC.load("no_mana");
            _0ZC.load("use_key");
            _0ZC.load("use_potion");
        }

        private function _0TQ():void{
            var _local1:String;
            var _local2:ByteArray;
            var _local3:String;
            for (_local1 in _0EP._0O)
            {
                _local2 = _0EP._0O[_local1];
                _local3 = _local2.readUTFBytes(_local2.length);
                _1hA.f0(_local1, _local2);
                _1hA._0bS(_local1, _local3);
            }
        }

        private function _0ht():void{
            var _local1:XML = XML(new _0EP.particlesEmbed());
            _0jV._1ty(_local1);
        }

        private function aK():void{
            var _local1:*;
            for each (_local1 in _24A._1Qi)
            {
                _0s6._1ty(XML(_local1));
            }
        }

        private function _1En():void{
            var _local1:*;
            for each (_local1 in _24A.cD)
            {
                cQ = this._09b(_local1);
                ObjectLibrary._1ty(XML(_local1));
            }
            cQ = false;
        }

        private function _1oy():void{
            var _local1:*;
            for each (_local1 in _24A._1Gs)
            {
                T8._1ty(XML(_local1));
            }
        }

        private function _09b(_arg1):Boolean{
            return (!((getQualifiedClassName(_arg1).indexOf("TestingCXML", 33) == -1)));
        }


    }
}//package com.company.assembleegameclient.util

