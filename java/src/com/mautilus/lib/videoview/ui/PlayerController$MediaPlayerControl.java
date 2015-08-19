// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;


// Referenced classes of package com.mautilus.lib.videoview.ui:
//            PlayerController

public static interface 
{

    public abstract int getBufferPercentage();

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract boolean isPlaying();

    public abstract void pause();

    public abstract void seekTo(int i);

    public abstract void start();
}
