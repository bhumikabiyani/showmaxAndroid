// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.notification;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.common.internal.zzw;

// Referenced classes of package com.google.android.gms.games.internal.notification:
//            GameNotification

public final class GameNotificationRef extends zzd
    implements GameNotification
{

    GameNotificationRef(DataHolder dataholder, int i)
    {
        super(dataholder, i);
    }

    public long getId()
    {
        return getLong("_id");
    }

    public String getText()
    {
        return getString("text");
    }

    public String getTitle()
    {
        return getString("title");
    }

    public int getType()
    {
        return getInteger("type");
    }

    public String toString()
    {
        return zzw.zzk(this).zza("Id", Long.valueOf(getId())).zza("NotificationId", zzoA()).zza("Type", Integer.valueOf(getType())).zza("Title", getTitle()).zza("Ticker", zzoB()).zza("Text", getText()).zza("CoalescedText", zzoC()).zza("isAcknowledged", Boolean.valueOf(zzoD())).zza("isSilent", Boolean.valueOf(zzoE())).toString();
    }

    public String zzoA()
    {
        return getString("notification_id");
    }

    public String zzoB()
    {
        return getString("ticker");
    }

    public String zzoC()
    {
        return getString("coalesced_text");
    }

    public boolean zzoD()
    {
        return getInteger("acknowledged") > 0;
    }

    public boolean zzoE()
    {
        return getInteger("alert_level") == 0;
    }
}
