// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//b4._f1

package _b4{
    import flash.display.DisplayObject;
    import _19Z._0Rq;
    import _19Z._1ZG;
    import flash.events.Event;
    import flash.events.IOErrorEvent;
    import flash.net.URLRequest;
    import flash.utils.Dictionary;

    public class _f1 {

        public static var tZ:Class = _0wt;

        public var _id:String;
        public var _title:String;
        private var _0No:String;
        public var es:String;
        public var oK:String;
        private var Mh:String;
        private var _13r:String;
        private var ee:String;
        public var BA:String;
        private var _6c:DisplayObject;
        public var _1xz:String;
        private var _1NN:DisplayObject;
        public var _1gc:Date;
        public var _2N:Date;
        private var _loader:_0Rq;
        private var _1Bz:_0Rq;
        public var ft:Vector.<Vector.<int>>;
        public var _0Cg:Vector.<int>;

        public function _f1(){
            this._loader = new _1ZG();
            this._1Bz = new _1ZG();
            this.ft = new Vector.<Vector.<int>>();
            this._0Cg = new Vector.<int>();
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
            return (this._0No);
        }

        public function set description(_arg1:String):void{
            this._0No = _arg1;
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

        public function get _1wt():String{
            return (this.Mh);
        }

        public function set _1wt(_arg1:String):void{
            this.Mh = _arg1;
        }

        public function get _20g():String{
            return (this._13r);
        }

        public function set _20g(_arg1:String):void{
            this._13r = _arg1;
        }

        public function get _0Tj():String{
            return (this.ee);
        }

        public function set _0Tj(_arg1:String):void{
            this.ee = _arg1;
        }

        public function get _20l(){
            return (this.BA);
        }

        public function set _20l(_arg1:String):void{
            this.BA = _arg1;
            this._1zZ(this.BA);
        }

        private function _1zZ(_arg1:String):void{
            ((this._loader) && (this._loader.unload()));
            this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.onComplete);
            this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.0ys);
            this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR, this.0ys);
            this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR, this.0ys);
            this._loader.load(new URLRequest(_arg1));
        }

        private function _0ys(_arg1:IOErrorEvent):void{
            this._6c = new tZ();
        }

        private function onComplete(_arg1:Event):void{
            this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.onComplete);
            this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, this._0ys);
            this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.DISK_ERROR, this._0ys);
            this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.NETWORK_ERROR, this._0ys);
            this._6c = DisplayObject(this._loader);
        }

        public function get rJ():DisplayObject{
            return (this._6c);
        }

        public function get _z(){
            return (this._1xz);
        }

        public function set _z(_arg1:String):void{
            this._1xz = _arg1;
            this._0sU(this._1xz);
        }

        private function _0sU(_arg1:String):void{
            this._1nO(_arg1, this._1Bz);
        }

        private function _1nO(_arg1:String, _arg2:_0Rq):void{
            ((_arg2) && (_arg2.unload()));
            _arg2.contentLoaderInfo.addEventListener(Event.COMPLETE, this._1nS);
            _arg2.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this._0Kz);
            _arg2.contentLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR, this._0Kz);
            _arg2.contentLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR, this._0Kz);
            _arg2.load(new URLRequest(_arg1));
        }

        private function _0Kz(_arg1:IOErrorEvent):void{
        }

        private function _1nS(_arg1:Event):void{
            this._1Bz.contentLoaderInfo.removeEventListener(Event.COMPLETE, this._1nS);
            this._1Bz.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, this._0Kz);
            this._1Bz.contentLoaderInfo.removeEventListener(IOErrorEvent.DISK_ERROR, this._0Kz);
            this._1Bz.contentLoaderInfo.removeEventListener(IOErrorEvent.NETWORK_ERROR, this._0Kz);
            this._1NN = DisplayObject(this._1Bz);
        }

        public function get startTime(){
            return (this._1gc);
        }

        public function set startTime(_arg1:Date):void{
            this._1gc = _arg1;
        }

        public function get endTime(){
            return (this._2N);
        }

        public function set endTime(_arg1:Date):void{
            this._2N = _arg1;
        }

        public function _0tl():void{
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
                        this._0Cg.push(int(_local6));
                    }
                    _local4.push(int(_local6));
                }
                this.ft.push(_local4);
            }
        }

        public function get _1c5():DisplayObject{
            return (this._1NN);
        }

        public function set _1c5(_arg1:DisplayObject):void{
            this._1NN = _arg1;
        }

        public function get loader():_0Rq{
            return (this._loader);
        }

        public function set loader(_arg1:_0Rq):void{
            this._loader = _arg1;
        }

        public function get mV():_0Rq{
            return (this._1Bz);
        }

        public function set mV(_arg1:_0Rq):void{
            this._1Bz = _arg1;
        }


    }
}//package b4

