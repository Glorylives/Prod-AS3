// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1JQ.1Eq

package 1JQ{
    import rz.lo;
    import rz.0Hp;
    import flash.utils.getDefinitionByName;
    import flash.display.DisplayObject;
    import flash.events.Event;

    public class 1Eq {

        private static const nm:Boolean = 1NV();

        private static var 0mG:Class;

        private var _factory:lo;

        public function 1Eq(_arg1:lo){
            this._factory = _arg1;
            this._factory.addEventListener(0Hp.ys, this.137);
            this._factory.addEventListener(0Hp.1mr, this.1iS);
        }

        private static function 1NV():Boolean{
            try
            {
                0mG = (getDefinitionByName("mx.core::UIComponent") as Class);
            } catch(error:Error)
            {
            };
            return (!((0mG == null)));
        }


        private function 137(_arg1:0Hp):void{
            var mediator:Object;
            var displayObject:DisplayObject;
            var event:0Hp = _arg1;
            mediator = event.mediator;
            displayObject = (event.view as DisplayObject);
            if (!displayObject)
            {
                this.1bW(event.view, mediator);
                return;
            };
            displayObject.addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            if (((((nm) && ((displayObject is 0mG)))) && (!(displayObject["initialized"]))))
            {
                displayObject.addEventListener("creationComplete", function (_arg1:Event):void{
                    displayObject.removeEventListener("creationComplete", arguments.callee);
                    if (_factory.og(displayObject, event.mapping))
                    {
                        1bW(displayObject, mediator);
                    };
                });
            } else
            {
                this.1bW(displayObject, mediator);
            };
        }

        private function 1iS(_arg1:0Hp):void{
            var _local2:DisplayObject = (_arg1.view as DisplayObject);
            if (_local2)
            {
                _local2.removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            };
            if (_arg1.mediator)
            {
                this.LK(_arg1.mediator);
            };
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this._factory.71(_arg1.target);
        }

        private function 1bW(_arg1:Object, _arg2:Object):void{
            if (_arg2.hasOwnProperty("viewComponent"))
            {
                _arg2.viewComponent = _arg1;
            };
            if (_arg2.hasOwnProperty("initialize"))
            {
                _arg2.initialize();
            };
        }

        private function LK(_arg1:Object):void{
            if (_arg1.hasOwnProperty("destroy"))
            {
                _arg1.destroy();
            };
        }


    }
}//package 1JQ

