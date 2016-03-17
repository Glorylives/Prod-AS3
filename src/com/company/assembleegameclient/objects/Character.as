// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Character

package com.company.assembleegameclient.objects{
    import _ZS.0ZC;
    import __AS3__.vec.Vector;

    public class Character extends GameObject {

        public var 0Sr:String;
        public var 1ox:String;

        public function Character(_arg1:XML){
            super(_arg1);
            this.0Sr = ((_arg1.hasOwnProperty("HitSound")) ? String(_arg1.HitSound) : "monster/default_hit");
            0ZC.load(this.0Sr);
            this.1ox = ((_arg1.hasOwnProperty("DeathSound")) ? String(_arg1.DeathSound) : "monster/default_death");
            0ZC.load(this.1ox);
        }

        override public function damage(_arg1:int, _arg2:int, _arg3:Vector.<uint>, _arg4:Boolean, _arg5:Projectile):void{
            super.damage(_arg1, _arg2, _arg3, _arg4, _arg5);
            if (RK)
            {
                0ZC.play(this.1ox);
            } else
            {
                if (((_arg5) || ((_arg2 > 0))))
                {
                    0ZC.play(this.0Sr);
                };
            };
        }


    }
}//package com.company.assembleegameclient.objects

