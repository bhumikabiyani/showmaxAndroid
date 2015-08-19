// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.event;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.zzlw;

// Referenced classes of package com.google.android.gms.games.event:
//            Event, EventEntityCreator

public final class EventEntity
    implements SafeParcelable, Event
{

    public static final EventEntityCreator CREATOR = new EventEntityCreator();
    private final String mName;
    private final int zzFG;
    private final String zzZO;
    private final Uri zzacc;
    private final String zzacn;
    private final String zzadJ;
    private final long zzadK;
    private final String zzadL;
    private final boolean zzadM;
    private final PlayerEntity zzadf;

    EventEntity(int i, String s, String s1, String s2, Uri uri, String s3, Player player, 
            long l, String s4, boolean flag)
    {
        zzFG = i;
        zzadJ = s;
        mName = s1;
        zzZO = s2;
        zzacc = uri;
        zzacn = s3;
        zzadf = new PlayerEntity(player);
        zzadK = l;
        zzadL = s4;
        zzadM = flag;
    }

    public EventEntity(Event event)
    {
        zzFG = 1;
        zzadJ = event.getEventId();
        mName = event.getName();
        zzZO = event.getDescription();
        zzacc = event.getIconImageUri();
        zzacn = event.getIconImageUrl();
        zzadf = (PlayerEntity)event.getPlayer().freeze();
        zzadK = event.getValue();
        zzadL = event.getFormattedValue();
        zzadM = event.isVisible();
    }

    static int zza(Event event)
    {
        return zzw.hashCode(new Object[] {
            event.getEventId(), event.getName(), event.getDescription(), event.getIconImageUri(), event.getIconImageUrl(), event.getPlayer(), Long.valueOf(event.getValue()), event.getFormattedValue(), Boolean.valueOf(event.isVisible())
        });
    }

    static boolean zza(Event event, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof Event) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (event == obj) goto _L4; else goto _L3
_L3:
        obj = (Event)obj;
        if (!zzw.equal(((Event) (obj)).getEventId(), event.getEventId()) || !zzw.equal(((Event) (obj)).getName(), event.getName()) || !zzw.equal(((Event) (obj)).getDescription(), event.getDescription()) || !zzw.equal(((Event) (obj)).getIconImageUri(), event.getIconImageUri()) || !zzw.equal(((Event) (obj)).getIconImageUrl(), event.getIconImageUrl()) || !zzw.equal(((Event) (obj)).getPlayer(), event.getPlayer()) || !zzw.equal(Long.valueOf(((Event) (obj)).getValue()), Long.valueOf(event.getValue())) || !zzw.equal(((Event) (obj)).getFormattedValue(), event.getFormattedValue()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(Boolean.valueOf(((Event) (obj)).isVisible()), Boolean.valueOf(event.isVisible()))) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(Event event)
    {
        return zzw.zzk(event).zza("Id", event.getEventId()).zza("Name", event.getName()).zza("Description", event.getDescription()).zza("IconImageUri", event.getIconImageUri()).zza("IconImageUrl", event.getIconImageUrl()).zza("Player", event.getPlayer()).zza("Value", Long.valueOf(event.getValue())).zza("FormattedValue", event.getFormattedValue()).zza("isVisible", Boolean.valueOf(event.isVisible())).toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public Event freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public String getDescription()
    {
        return zzZO;
    }

    public void getDescription(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzZO, chararraybuffer);
    }

    public String getEventId()
    {
        return zzadJ;
    }

    public String getFormattedValue()
    {
        return zzadL;
    }

    public void getFormattedValue(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzadL, chararraybuffer);
    }

    public Uri getIconImageUri()
    {
        return zzacc;
    }

    public String getIconImageUrl()
    {
        return zzacn;
    }

    public String getName()
    {
        return mName;
    }

    public void getName(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(mName, chararraybuffer);
    }

    public Player getPlayer()
    {
        return zzadf;
    }

    public long getValue()
    {
        return zzadK;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zza(this);
    }

    public boolean isDataValid()
    {
        return true;
    }

    public boolean isVisible()
    {
        return zzadM;
    }

    public String toString()
    {
        return zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        EventEntityCreator.zza(this, parcel, i);
    }

}
