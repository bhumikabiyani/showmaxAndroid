// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzls;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentActionRef, AppContentAnnotationRef, AppContentConditionRef, AppContentTupleRef, 
//            AppContentTuple

public final class AppContentUtils
{
    private static interface AppContentRunner
    {

        public abstract void zzb(ArrayList arraylist, int i);
    }


    public AppContentUtils()
    {
    }

    public static ArrayList zza(DataHolder dataholder, ArrayList arraylist, String s, int i)
    {
        ArrayList arraylist1 = new ArrayList();
        zza(dataholder, 1, s, "action_id", i, new AppContentRunner(arraylist1) {

            final ArrayList zzadG;

            public void zzb(ArrayList arraylist2, int j)
            {
                zzadG.add(new AppContentActionRef(arraylist2, j));
            }

            
            {
                zzadG = arraylist;
                super();
            }
        }, arraylist);
        return arraylist1;
    }

    private static void zza(DataHolder dataholder, int i, String s, String s1, int j, AppContentRunner appcontentrunner, ArrayList arraylist)
    {
        DataHolder dataholder1 = (DataHolder)arraylist.get(i);
        dataholder = dataholder.zzc(s, j, dataholder.zzax(j));
        if (!TextUtils.isEmpty(dataholder))
        {
            j = dataholder1.getCount();
            dataholder = dataholder.split(",");
            for (i = 0; i < j; i++)
            {
                s = dataholder1.zzc(s1, i, dataholder1.zzax(i));
                if (!TextUtils.isEmpty(s) && zzls.zzb(dataholder, s))
                {
                    appcontentrunner.zzb(arraylist, i);
                }
            }

        }
    }

    public static ArrayList zzb(DataHolder dataholder, ArrayList arraylist, String s, int i)
    {
        ArrayList arraylist1 = new ArrayList();
        zza(dataholder, 2, s, "annotation_id", i, new AppContentRunner(arraylist1) {

            final ArrayList zzadG;

            public void zzb(ArrayList arraylist2, int j)
            {
                zzadG.add(new AppContentAnnotationRef(arraylist2, j));
            }

            
            {
                zzadG = arraylist;
                super();
            }
        }, arraylist);
        return arraylist1;
    }

    public static ArrayList zzc(DataHolder dataholder, ArrayList arraylist, String s, int i)
    {
        ArrayList arraylist1 = new ArrayList();
        zza(dataholder, 4, s, "condition_id", i, new AppContentRunner(arraylist1) {

            final ArrayList zzadG;

            public void zzb(ArrayList arraylist2, int j)
            {
                zzadG.add(new AppContentConditionRef(arraylist2, j));
            }

            
            {
                zzadG = arraylist;
                super();
            }
        }, arraylist);
        return arraylist1;
    }

    public static Bundle zzd(DataHolder dataholder, ArrayList arraylist, String s, int i)
    {
        Bundle bundle = new Bundle();
        zza(dataholder, 3, s, "tuple_id", i, new AppContentRunner((DataHolder)arraylist.get(3), bundle) {

            final DataHolder zzadH;
            final Bundle zzadI;

            public void zzb(ArrayList arraylist1, int j)
            {
                arraylist1 = new AppContentTupleRef(zzadH, j);
                zzadI.putString(arraylist1.getName(), arraylist1.getValue());
            }

            
            {
                zzadH = dataholder;
                zzadI = bundle;
                super();
            }
        }, arraylist);
        return bundle;
    }
}
