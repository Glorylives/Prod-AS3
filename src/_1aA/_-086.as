﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.086

package _1aA{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import 0y3.Server;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import __AS3__.vec.*;

    public class 086 extends Sprite {

        private var CC:Vector.<ServerBox>;

        public function 086(_arg1:Vector.<Server>){
            var _local2:ServerBox;
            var _local3:int;
            var _local4:Server;
            this.CC = new Vector.<ServerBox>();
            super();
            _local2 = new ServerBox(null);
            _local2.setSelected(true);
            _local2.x = ((ServerBox.WIDTH / 2) + 2);
            _local2.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            addChild(_local2);
            this.CC.push(_local2);
            _local3 = 2;
            for each (_local4 in _arg1)
            {
                _local2 = new ServerBox(_local4);
                if (_local4.name == Parameters.data_.preferredServer)
                {
                    this.setSelected(_local2);
                };
                _local2.x = ((_local3 % 2) * (ServerBox.WIDTH + 4));
                _local2.y = (int((_local3 / 2)) * (ServerBox.HEIGHT + 4));
                _local2.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
                addChild(_local2);
                this.CC.push(_local2);
                _local3++;
            };
        }

        private function onMouseDown(_arg1:MouseEvent):void{
            var _local2:ServerBox = (_arg1.currentTarget as ServerBox);
            if (_local2 == null)
            {
                return;
            };
            this.setSelected(_local2);
            Parameters.data_.preferredServer = _local2.value_;
            Parameters.save();
        }

        private function setSelected(_arg1:ServerBox):void{
            var _local2:ServerBox;
            for each (_local2 in this.CC)
            {
                _local2.setSelected(false);
            };
            _arg1.setSelected(true);
        }


    }
}//package _1aA

