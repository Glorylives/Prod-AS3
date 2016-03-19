// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.tutorial.Tutorial

package com.company.assembleegameclient.tutorial{
    import flash.display.Sprite;
    import com.company.assembleegameclient.game.GameSprite;
    import flash.display.Shape;
    import flash.display.Graphics;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.utils.getTimer;
    import flash.filters.BlurFilter;
    import com.company.util.PointUtil;

import kabam.rotmg.assets._24A;

public class Tutorial extends Sprite {

        public static const _1oF:String = "Next";
        public static const _1i0:String = "MoveForward";
        public static const _1nn:String = "MoveBackward";
        public static const BH:String = "RotateLeft";
        public static const _0PU:String = "RotateRight";
        public static const _18V:String = "MoveLeft";
        public static const _1N4:String = "MoveRight";
        public static const _1Te:String = "Update";
        public static const _1i3:String = "Attack";
        public static const _0_Jy:String = "Damage";
        public static const _1Fo:String = "Kill";
        public static const JD:String = "ShowLoot";
        public static const _0Lf:String = "Text";
        public static const _1as:String = "ShowPortal";
        public static const _0K:String = "EnterPortal";
        public static const _1M:String = "Near";
        public static const yO:String = "Equip";

        public var gs_:GameSprite;
        public var _1fO:Vector.<Step>;
        public var _0NX:int = 0;
        private var PD:Sprite;
        private var z2:Shape;
        private var CC:Shape;
        private var _0x8:_1KY = null;

        public function Tutorial(_arg1:GameSprite){
            var _local2:XML;
            var _local3:Graphics;
            this._1fO = new Vector.<Step>();
            this.PD = new Sprite();
            this.z2 = new Shape();
            this.CC = new Shape();
            super();
            this.gs_ = _arg1;
            for each (_local2 in _24A._0H0.Step)
            {
                this._1fO.push(new Step(_local2));
            }
            addChild(this.z2);
            addChild(this.CC);
            _local3 = this.PD.graphics;
            _local3.clear();
            _local3.beginFill(0, 0.1);
            _local3.drawRect(0, 0, 800, 600);
            _local3.endFill();
            Parameters.data_.needsTutorial = false;
            Parameters.save();
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onAddedToStage(_arg1:Event):void{
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            this.draw();
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onEnterFrame(_arg1:Event):void{
            var _local4:Step;
            var _local5:Boolean;
            var _local6:Requirement;
            var _local7:int;
            var _local8:UIDrawBox;
            var _local9:UIDrawArrow;
            var _local10:Player;
            var _local11:Boolean;
            var _local12:GameObject;
            var _local13:Number;
            var _local2:Number = Math.abs(Math.sin((getTimer() / 300)));
            this.z2.filters = [new BlurFilter((5 + (_local2 * 5)), (5 + (_local2 * 5)))];
            this.CC.graphics.clear();
            this.z2.graphics.clear();
            var _local3:int;
            while (_local3 < this._1fO.length)
            {
                _local4 = this._1fO[_local3];
                _local5 = true;
                for each (_local6 in _local4.ic)
                {
                    _local10 = this.gs_.map.player_;
                    switch (_local6.type_)
                    {
                        case _1M:
                            _local11 = false;
                            for each (_local12 in this.gs_.map.goDict_)
                            {
                                if (((!((_local12.objectType_ == _local6.objectType_))) || (((!((_local6.s == ""))) && (!((_local12.name_ == _local6.s)))))))
                                {
                                } else
                                {
                                    _local13 = PointUtil.Fg(_local12.x_, _local12.y_, _local10.x_, _local10.y_);
                                    if (_local13 <= _local6.radius_)
                                    {
                                        _local11 = true;
                                        break;
                                    }
                                }
                            }
                            if (!_local11)
                            {
                                _local5 = false;
                            }
                            break;
                    }
                }
                if (!_local5)
                {
                    _local4._1hp = 0;
                } else
                {
                    if (_local4._1hp == 0)
                    {
                        _local4._1hp = getTimer();
                    }
                    _local7 = (getTimer() - _local4._1hp);
                    for each (_local8 in _local4._1rf)
                    {
                        _local8.draw((5 * _local2), this.CC.graphics, _local7);
                        _local8.draw((6 * _local2), this.z2.graphics, _local7);
                    }
                    for each (_local9 in _local4._1hu)
                    {
                        _local9.draw((5 * _local2), this.CC.graphics, _local7);
                        _local9.draw((6 * _local2), this.z2.graphics, _local7);
                    }
                }
                _local3++;
            }
        }

        function doneAction(_arg1:String):void{
            var _local3:Requirement;
            var _local4:Player;
            var _local5:Boolean;
            var _local6:GameObject;
            var _local7:Number;
            if (this._0NX >= this._1fO.length)
            {
                return;
            }
            var _local2:Step = this._1fO[this._0NX];
            if (_arg1 != _local2.action_)
            {
                return;
            }
            for each (_local3 in _local2.ic)
            {
                _local4 = this.gs_.map.player_;
                switch (_local3.type_)
                {
                    case _1M:
                        _local5 = false;
                        for each (_local6 in this.gs_.map.goDict_)
                        {
                            if (_local6.objectType_ != _local3.objectType_)
                            {
                            } else
                            {
                                _local7 = PointUtil.Fg(_local6.x_, _local6.y_, _local4.x_, _local4.y_);
                                if (_local7 <= _local3.radius_)
                                {
                                    _local5 = true;
                                    break;
                                }
                            }
                        }
                        if (!_local5)
                        {
                            return;
                        }
                        break;
                    case yO:
                        if (_local4._1Wz[_local3._1fn] != _local3.objectType_)
                        {
                            return;
                        }
                        break;
                }
            }
            this._0NX++;
            this.draw();
        }

        private function draw():void{
            var _local3:UIDrawBox;
        }


    }
}//package com.company.assembleegameclient.tutorial

