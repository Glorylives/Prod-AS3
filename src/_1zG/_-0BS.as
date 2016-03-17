// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.0BS

package 1zG{
    import __AS3__.vec.Vector;
    import flash.utils.IDataInput;
    import __AS3__.vec.*;

    public class 0BS extends 11g {

        public var width_:int;
        public var height_:int;
        public var name_:String;
        public var 1Vu:String;
        public var 0Ov:int;
        public var fp_:uint;
        public var background_:int;
        public var allowPlayerTeleport_:Boolean;
        public var showDisplays_:Boolean;
        public var clientXML_:Vector.<String>;
        public var extraXML_:Vector.<String>;

        public function 0BS(_arg1:uint, _arg2:Function){
            this.clientXML_ = new Vector.<String>();
            this.extraXML_ = new Vector.<String>();
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.0dN(_arg1);
            this.1tW(_arg1);
        }

        private function 0dN(_arg1:IDataInput):void{
            this.width_ = _arg1.readInt();
            this.height_ = _arg1.readInt();
            this.name_ = _arg1.readUTF();
            this.1Vu = _arg1.readUTF();
            this.fp_ = _arg1.readUnsignedInt();
            this.background_ = _arg1.readInt();
            this.0Ov = _arg1.readInt();
            this.allowPlayerTeleport_ = _arg1.readBoolean();
            this.showDisplays_ = _arg1.readBoolean();
        }

        private function 1tW(_arg1:IDataInput):void{
            var _local2:int;
            var _local3:int;
            var _local4:int;
            _local2 = _arg1.readShort();
            this.clientXML_.length = 0;
            _local3 = 0;
            while (_local3 < _local2)
            {
                _local4 = _arg1.readInt();
                this.clientXML_.push(_arg1.readUTFBytes(_local4));
                _local3++;
            };
            _local2 = _arg1.readShort();
            this.extraXML_.length = 0;
            _local3 = 0;
            while (_local3 < _local2)
            {
                _local4 = _arg1.readInt();
                this.extraXML_.push(_arg1.readUTFBytes(_local4));
                _local3++;
            };
        }

        override public function toString():String{
            return (formatToString("MAPINFO", "width_", "height_", "name_", "fp_", "background_", "allowPlayerTeleport_", "showDisplays_", "clientXML_", "extraXML_"));
        }


    }
}//package 1zG

