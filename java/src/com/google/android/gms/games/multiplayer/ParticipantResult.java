// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.games.internal.constants.MatchResult;

// Referenced classes of package com.google.android.gms.games.multiplayer:
//            ParticipantResultCreator

public final class ParticipantResult
    implements SafeParcelable
{

    public static final ParticipantResultCreator CREATOR = new ParticipantResultCreator();
    public static final int MATCH_RESULT_DISAGREED = 5;
    public static final int MATCH_RESULT_DISCONNECT = 4;
    public static final int MATCH_RESULT_LOSS = 1;
    public static final int MATCH_RESULT_NONE = 3;
    public static final int MATCH_RESULT_TIE = 2;
    public static final int MATCH_RESULT_UNINITIALIZED = -1;
    public static final int MATCH_RESULT_WIN = 0;
    public static final int PLACING_UNINITIALIZED = -1;
    private final int zzFG;
    private final String zzaeO;
    private final int zzajG;
    private final int zzajH;

    public ParticipantResult(int i, String s, int j, int k)
    {
        zzFG = i;
        zzaeO = (String)zzx.zzl(s);
        zzx.zzN(MatchResult.isValid(j));
        zzajG = j;
        zzajH = k;
    }

    public ParticipantResult(String s, int i, int j)
    {
        this(1, s, i, j);
    }

    public int describeContents()
    {
        return 0;
    }

    public String getParticipantId()
    {
        return zzaeO;
    }

    public int getPlacing()
    {
        return zzajH;
    }

    public int getResult()
    {
        return zzajG;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ParticipantResultCreator.zza(this, parcel, i);
    }

}
