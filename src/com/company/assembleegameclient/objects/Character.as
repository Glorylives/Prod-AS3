// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Character

package com.company.assembleegameclient.objects{
    import _ZS._0ZC;

    public class Character extends GameObject {

        public var _0Sr:String;
        public var _1ox:String;

        public function Character(_arg1:XML){
            super(_arg1);
            this._0Sr = ((_arg1.hasOwnProperty("HitSound")) ? String(_arg1.HitSound) : "monster/default_hit");
            _0ZC.load(this._0Sr);
            this._1ox = ((_arg1.hasOwnProperty("DeathSound")) ? String(_arg1.DeathSound) : "monster/default_death");
            _0ZC.load(this._1ox);
        }

        override public function damage(_arg1:int, _arg2:int, _arg3:Vector.<uint>, _arg4:Boolean, _arg5:Projectile):void{
            super.damage(_arg1, _arg2, _arg3, _arg4, _arg5);
            if (RK)
            {
                _0ZC.play(this._1ox);
            } else
            {
                if (((_arg5) || ((_arg2 > 0))))
                {
                    _0ZC.play(this._0Sr);
                }
            }
        }


    }
}//package com.company.assembleegameclient.objects

