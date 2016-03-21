// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//vF.MysteryBoxInfo

package vF{
    import flash.display.DisplayObject;
    import 19Z.0Rq;

    import 19Z.1ZG;
    import flash.events.Event;
    import flash.events.IOErrorEvent;
    import flash.net.URLRequest;
    import flash.utils.Dictionary;
    import com.company.assembleegameclient.util.1ze;
    import 1n4.1cA;


    public class MysteryBoxInfo {

        public static var tZ:Class = 0ca;

        public var _id:String;
        public var _title:String;
        private var 0No:String;
        public var es:String;
        public var oK:String;
        public var 1e6:String;
        public var eh:String;
        public var 0k6:String;
        public var 1DH:String;
        public var _quantity:String;
        public var 1Sc:Date;
        public var BA:String;
        private var 6c:DisplayObject;
        public var 1xz:String;
        private var 1NN:DisplayObject;
        public var 1gc:Date;
        public var 2N:Date;
        private var _loader:0Rq;
        private var 1Bz:0Rq;
        public var ft:Vector.<Vector.<int>>;
        public var 0Cg:Vector.<int>;

        public function MysteryBoxInfo(){
            this._loader = new 1ZG();
            this.1Bz = new 1ZG();
            this.ft = new Vector.<Vector.<int>>();
            this.0Cg = new Vector.<int>();
            super();
        }

        public function get id(){
            return (this._id);
        }

        public function set id(_arg1:String):void{
            this._id = _arg1;
        }

        public function get title(){
            return (this._title);
        }

        public function set title(_arg1:String):void{
            this._title = _arg1;
        }

        public function get description(){
            return (this.0No);
        }

        public function set description(_arg1:String):void{
            this.0No = _arg1;
        }

        public function get weight(){
            return (this.es);
        }

        public function set weight(_arg1:String):void{
            this.es = _arg1;
        }

        public function get Gy(){
            return (this.oK);
        }

        public function set Gy(_arg1:String):void{
            this.oK = _arg1;
        }

        public function get 0Br(){
            return (this.1e6);
        }

        public function set 0Br(_arg1:String):void{
            this.1e6 = _arg1;
        }

        public function get 1hG(){
            return (this.eh);
        }

        public function set 1hG(_arg1:String):void{
            this.eh = _arg1;
        }

        public function get rn(){
            return (this.0k6);
        }

        public function set rn(_arg1:String):void{
            this.0k6 = _arg1;
        }

        public function get 4O(){
            return (this.1DH);
        }

        public function set 4O(_arg1:String):void{
            this.1DH = _arg1;
        }

        public function get quantity(){
            return (this._quantity);
        }

        public function set quantity(_arg1:String):void{
            this._quantity = _arg1;
        }

        public function get 1SO(){
            return (this.1Sc);
        }

        public function set 1SO(_arg1:Date):void{
            this.1Sc = _arg1;
        }

        public function get 20l(){
            return (this.BA);
        }

        public function set 20l(_arg1:String):void{
            this.BA = _arg1;
            this.1zZ(this.BA);
        }

        private function 1zZ(_arg1:String):void{
            ((this._loader) && (this._loader.unload()));
            this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.onComplete);
            this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.0ys);
            this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR, this.0ys);
            this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR, this.0ys);
            this._loader.load(new URLRequest(_arg1));
        }

        private function 0ys(_arg1:IOErrorEvent):void{
            this.6c = new tZ();
        }

        private function onComplete(_arg1:Event):void{
            this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.onComplete);
            this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, this.0ys);
            this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.DISK_ERROR, this.0ys);
            this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.NETWORK_ERROR, this.0ys);
            this.6c = DisplayObject(this._loader);
        }

        public function get rJ():DisplayObject{
            return (this.6c);
        }

        public function get z-(){
            return (this.1xz);
        }

        public function set z-(_arg1:String):void{
            this.1xz = _arg1;
            this.0sU(this.1xz);
        }

        private function 0sU(_arg1:String):void{
            this.1nO(_arg1, this.1Bz);
        }

        private function 1nO(_arg1:String, _arg2:0Rq):void{
            ((_arg2) && (_arg2.unload()));
            _arg2.contentLoaderInfo.addEventListener(Event.COMPLETE, this.1nS);
            _arg2.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.0Kz);
            _arg2.contentLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR, this.0Kz);
            _arg2.contentLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR, this.0Kz);
            _arg2.load(new URLRequest(_arg1));
        }

        private function 0Kz(_arg1:IOErrorEvent):void{
        }

        private function 1nS(_arg1:Event):void{
            this.1Bz.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.1nS);
            this.1Bz.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, this.0Kz);
            this.1Bz.contentLoaderInfo.removeEventListener(IOErrorEvent.DISK_ERROR, this.0Kz);
            this.1Bz.contentLoaderInfo.removeEventListener(IOErrorEvent.NETWORK_ERROR, this.0Kz);
            this.1NN = DisplayObject(this.1Bz);
        }

        public function get startTime(){
            return (this.1gc);
        }

        public function set startTime(_arg1:Date):void{
            this.1gc = _arg1;
        }

        public function get endTime(){
            return (this.2N);
        }

        public function set endTime(_arg1:Date):void{
            this.2N = _arg1;
        }

        public function 0tl():void{
            var _local3:String;
            var _local4:Vector.<int>;
            var _local5:Array;
            var _local6:String;
            var _local1:Array = this.oK.split(";");
            var _local2:Dictionary = new Dictionary();
            for each (_local3 in _local1)
            {
                _local4 = new Vector.<int>();
                _local5 = _local3.split(",");
                for each (_local6 in _local5)
                {
                    if (_local2[int(_local6)] == null)
                    {
                        _local2[int(_local6)] = true;
                        this.0Cg.push(int(_local6));
                    }
                    _local4.push(int(_local6));
                }
                this.ft.push(_local4);
            }
        }

        public function isNew():Boolean{
            var _local1:Date = new Date();
            return ((Math.ceil(1ze.ut(((_local1.time - this.1gc.time) / 1000))) <= 1));
        }

        public function 1p1():Boolean{
            var _local1:Date;
            if (this.1Sc)
            {
                _local1 = new Date();
                return ((_local1.time < this.1Sc.time));
            }
            return (false);
        }

        public function 4p():1cA{
            var _local1:Date = new Date();
            var _local2 = "";
            var _local3:Number = ((this.1Sc.time - _local1.time) / 1000);
            var _local4:1cA = new 1cA();
            if (_local3 > 1ze.ll)
            {
                _local4.setParams("MysteryBoxInfo.saleEndStringDays", {amount:String(Math.ceil(1ze.ut(_local3)))});
            } else
            {
                if (_local3 > 1ze.17Q)
                {
                    _local4.setParams("MysteryBoxInfo.saleEndStringHours", {amount:String(Math.ceil(1ze.bd(_local3)))});
                } else
                {
                    _local4.setParams("MysteryBoxInfo.saleEndStringMinutes", {amount:String(Math.ceil(1ze.7b(_local3)))});
                }
            }
            return (_local4);
        }

        public function get 1c5():DisplayObject{
            return (this.1NN);
        }

        public function set 1c5(_arg1:DisplayObject):void{
            this.1NN = _arg1;
        }

        public function get loader():0Rq{
            return (this._loader);
        }

        public function set loader(_arg1:0Rq):void{
            this._loader = _arg1;
        }

        public function get mV():0Rq{
            return (this.1Bz);
        }

        public function set mV(_arg1:0Rq):void{
            this.1Bz = _arg1;
        }


    }
}//package vF

