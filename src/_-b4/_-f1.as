﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//b4.f1

package b4{
    import flash.display.DisplayObject;
    import 19Z.0Rq;
    import __AS3__.vec.Vector;
    import 19Z.1ZG;
    import flash.events.Event;
    import flash.events.IOErrorEvent;
    import flash.net.URLRequest;
    import flash.utils.Dictionary;
    import __AS3__.vec.*;

    public class f1 {

        public static var tZ:Class = 0wt;

        public var _id:String;
        public var _title:String;
        private var 0No:String;
        public var es:String;
        public var oK:String;
        private var Mh:String;
        private var 13r:String;
        private var ee:String;
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

        public function f1(){
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

        public function get 1wt():String{
            return (this.Mh);
        }

        public function set 1wt(_arg1:String):void{
            this.Mh = _arg1;
        }

        public function get 20g():String{
            return (this.13r);
        }

        public function set 20g(_arg1:String):void{
            this.13r = _arg1;
        }

        public function get 0Tj():String{
            return (this.ee);
        }

        public function set 0Tj(_arg1:String):void{
            this.ee = _arg1;
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
}//package b4

