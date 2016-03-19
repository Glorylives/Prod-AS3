// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Z-.0YK

package 0Z-{
    import _Jy._1HZ;
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.events.MouseEvent;
    import flash.geom.ColorTransform;
    import flash.events.Event;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import AO.du;
    import 0Px.0J9;
    import com.company.assembleegameclient.util.Yj;
    import Ct.18G;
    import Ct.q5;
    import 0xk.09v;

    public class 0YK extends 0Aq {

        public const Ma:_1HZ = new _1HZ(int);
        public const 1F3:_1HZ = new _1HZ();

        public var 25g:Boolean = false;
        private var fo:Function;
        protected var 1q-:ColorMatrixFilter;
        public var 1Qj:Boolean = true;

        public function 0YK(){
            this.1q- = new ColorMatrixFilter(MoreColorUtil.1Z6);
            super();
            0ep.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            this.updateTitle();
        }

        public function dm(_arg1:Boolean):void{
            var _local2:ColorTransform;
            if (this.25g != _arg1)
            {
                this.25g = _arg1;
                0ep.filters = ((_arg1) ? [this.1q-] : []);
                _local2 = ((_arg1) ? MoreColorUtil.1lu : new ColorTransform());
                0ep.transform.colorTransform = _local2;
            };
        }

        override protected function onRemovedFromStage(_arg1:Event):void{
            super.onRemovedFromStage(_arg1);
            this.1t8();
        }

        public function setItem(_arg1:int, _arg2:int, _arg3:int, _arg4:Function):void{
            if (this.itemId != _arg1)
            {
                this.1t8();
                this.itemId = _arg1;
                this.w = _arg2;
                this.objectId = _arg3;
                mQ.bitmapData = ObjectLibrary.getRedrawnTextureFromType(_arg1, 80, true);
                0Pi();
                this.updateTitle();
                this.fo = _arg4;
            };
        }

        public function 15s(_arg1:int):void{
            this.Ma.dispatch(_arg1);
        }

        public function updateTitle():void{
            var _local1:XML;
            var _local2:String;
            if (((itemId) && (!((itemId == -1)))))
            {
                setTitle(du.0fj, {});
                _local1 = ObjectLibrary.0vY(ObjectLibrary.Uq(itemId));
                _local2 = ((_local1.hasOwnProperty("feedPower")) ? _local1.feedPower : "0");
                iY(du.1h6, {data:_local2});
            } else
            {
                setTitle(du.rq, {});
                iY(du.1h6, {data:""});
            };
        }

        public function 1EY(_arg1:Function):void{
            this.fo = _arg1;
        }

        public function 0Ve():void{
            this.1t8();
            itemId = 0J9.1Qx;
            mQ.bitmapData = null;
            w = -1;
            objectId = -1;
            this.updateTitle();
        }

        private function 1t8():void{
            ((this.fo) && (this.fo()));
            this.fo = null;
        }

        private function Gv(_arg1:int, _arg2:int):void{
            mQ.x = (-(mQ.width) / 2);
            mQ.y = (-(mQ.height) / 2);
            0ep.x = _arg1;
            0ep.y = _arg2;
        }

        private function onMouseDown(_arg1:MouseEvent):void{
            if (!this.25g)
            {
                this.Gv(_arg1.stageX, _arg1.stageY);
                0ep.startDrag(true);
                0ep.addEventListener(MouseEvent.MOUSE_UP, this.KP);
                if (((!((0ep.parent == null))) && (!((0ep.parent == stage)))))
                {
                    removeChild(0ep);
                    stage.addChild(0ep);
                };
            };
        }

        private function KP(_arg1:MouseEvent):void{
            0ep.stopDrag();
            0ep.removeEventListener(MouseEvent.MOUSE_UP, this.KP);
            stage.removeChild(0ep);
            addChild(0ep);
            0Pi();
            var _local2:* = Yj.0j4(0ep.dropTarget, 18G, q5, 09v);
            if (((((!((_local2 is 18G))) && (!((_local2 is q5))))) && (!((((_local2 is 09v)) && (((_local2 as 09v).21i == true)))))))
            {
                this.1Qj = true;
                itemId = 0J9.1Qx;
                mQ.bitmapData = null;
                this.1t8();
                this.1F3.dispatch();
                this.updateTitle();
            };
        }


    }
}//package 0Z-

