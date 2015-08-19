// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzj

public final class Field
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzj();
    public static final Field FIELD_ACCURACY = zzbK("accuracy");
    public static final Field FIELD_ACTIVITY = zzbJ("activity");
    public static final Field FIELD_ALTITUDE = zzbK("altitude");
    public static final Field FIELD_AVERAGE = zzbK("average");
    public static final Field FIELD_BPM = zzbK("bpm");
    public static final Field FIELD_CALORIES = zzbK("calories");
    public static final Field FIELD_CIRCUMFERENCE = zzbK("circumference");
    public static final Field FIELD_CONFIDENCE = zzbK("confidence");
    public static final Field FIELD_DISTANCE = zzbK("distance");
    public static final Field FIELD_DURATION = zzbJ("duration");
    public static final Field FIELD_HEIGHT = zzbK("height");
    public static final Field FIELD_HIGH_LATITUDE = zzbK("high_latitude");
    public static final Field FIELD_HIGH_LONGITUDE = zzbK("high_longitude");
    public static final Field FIELD_LATITUDE = zzbK("latitude");
    public static final Field FIELD_LONGITUDE = zzbK("longitude");
    public static final Field FIELD_LOW_LATITUDE = zzbK("low_latitude");
    public static final Field FIELD_LOW_LONGITUDE = zzbK("low_longitude");
    public static final Field FIELD_MAX = zzbK("max");
    public static final Field FIELD_MIN = zzbK("min");
    public static final Field FIELD_PERCENTAGE = zzbK("percentage");
    public static final Field FIELD_REVOLUTIONS = zzbJ("revolutions");
    public static final Field FIELD_RPM = zzbK("rpm");
    public static final Field FIELD_SPEED = zzbK("speed");
    public static final Field FIELD_STEPS = zzbJ("steps");
    public static final Field FIELD_WATTS = zzbK("watts");
    public static final Field FIELD_WEIGHT = zzbK("weight");
    public static final int FORMAT_FLOAT = 2;
    public static final int FORMAT_INT32 = 1;
    public static final Field zzZA = zzbJ("edge_type");
    public static final Field zzZB = zzbK("x");
    public static final Field zzZC = zzbK("y");
    public static final Field zzZD = zzbK("z");
    public static final Field zzZi = zzbJ("meal_type");
    public static final Field zzZj = zzbK("fat.total");
    public static final Field zzZk = zzbK("fat.saturated");
    public static final Field zzZl = zzbK("fat.polyunsaturated");
    public static final Field zzZm = zzbK("fat.monounsaturated");
    public static final Field zzZn = zzbK("fat.trans");
    public static final Field zzZo = zzbK("cholesterol");
    public static final Field zzZp = zzbK("sodium");
    public static final Field zzZq = zzbK("potassium");
    public static final Field zzZr = zzbK("carbs.total");
    public static final Field zzZs = zzbK("dietary_fiber");
    public static final Field zzZt = zzbK("sugar");
    public static final Field zzZu = zzbK("protein");
    public static final Field zzZv = zzbK("vitamin_a");
    public static final Field zzZw = zzbK("vitamin_c");
    public static final Field zzZx = zzbK("calcium");
    public static final Field zzZy = zzbK("iron");
    public static final Field zzZz = zzbJ("num_segments");
    private final String mName;
    private final int zzFG;
    private final int zzZE;

    Field(int i, String s, int j)
    {
        zzFG = i;
        mName = (String)zzx.zzl(s);
        zzZE = j;
    }

    private Field(String s, int i)
    {
        this(1, s, i);
    }

    private boolean zza(Field field)
    {
        return mName.equals(field.mName) && zzZE == field.zzZE;
    }

    private static Field zzbJ(String s)
    {
        return new Field(s, 1);
    }

    private static Field zzbK(String s)
    {
        return new Field(s, 2);
    }

    public static Field zzn(String s, int i)
    {
        byte byte0 = -1;
        s.hashCode();
        JVM INSTR lookupswitch 47: default 392
    //                   -2131707655: 606
    //                   -1992012396: 780
    //                   -1930010315: 1035
    //                   -1762597548: 1200
    //                   -1762597546: 1215
    //                   -1734926706: 705
    //                   -1655966961: 620
    //                   -1569430471: 990
    //                   -1439978388: 870
    //                   -1221029593: 810
    //                   -1124148177: 1170
    //                   -1124076653: 1185
    //                   -984531717: 1020
    //                   -921832806: 1005
    //                   -897020359: 1110
    //                   -791592328: 1245
    //                   -631448035: 648
    //                   -626344110: 840
    //                   -619868540: 915
    //                   -612488479: 750
    //                   -494782871: 825
    //                   -437053898: 945
    //                   -309012605: 1050
    //                   -277306353: 720
    //                   -168965370: 690
    //                   120: 1260
    //                   121: 1276
    //                   122: 1292
    //                   97759: 662
    //                   107876: 930
    //                   108114: 960
    //                   113135: 1080
    //                   3241160: 855
    //                   109641799: 1125
    //                   109792566: 1140
    //                   112903913: 1230
    //                   125042491: 1155
    //                   137365935: 885
    //                   198162679: 900
    //                   215325440: 1095
    //                   224520316: 795
    //                   288459765: 765
    //                   548373068: 676
    //                   811264586: 1065
    //                   829251210: 735
    //                   1205114244: 975
    //                   2036550306: 634;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28 _L29 _L30 _L31 _L32 _L33 _L34 _L35 _L36 _L37 _L38 _L39 _L40 _L41 _L42 _L43 _L44 _L45 _L46 _L47 _L48
_L1:
        break; /* Loop/switch isn't completed */
_L29:
        break MISSING_BLOCK_LABEL_1292;
_L49:
        switch (byte0)
        {
        default:
            return new Field(s, i);

        case 0: // '\0'
            return FIELD_ACCURACY;

        case 1: // '\001'
            return FIELD_ACTIVITY;

        case 2: // '\002'
            return FIELD_ALTITUDE;

        case 3: // '\003'
            return FIELD_AVERAGE;

        case 4: // '\004'
            return FIELD_BPM;

        case 5: // '\005'
            return zzZx;

        case 6: // '\006'
            return FIELD_CALORIES;

        case 7: // '\007'
            return zzZo;

        case 8: // '\b'
            return FIELD_CIRCUMFERENCE;

        case 9: // '\t'
            return FIELD_CONFIDENCE;

        case 10: // '\n'
            return zzZs;

        case 11: // '\013'
            return FIELD_DISTANCE;

        case 12: // '\f'
            return FIELD_DURATION;

        case 13: // '\r'
            return zzZA;

        case 14: // '\016'
            return FIELD_HEIGHT;

        case 15: // '\017'
            return FIELD_HIGH_LATITUDE;

        case 16: // '\020'
            return FIELD_HIGH_LONGITUDE;

        case 17: // '\021'
            return zzZy;

        case 18: // '\022'
            return FIELD_LATITUDE;

        case 19: // '\023'
            return FIELD_LONGITUDE;

        case 20: // '\024'
            return FIELD_LOW_LATITUDE;

        case 21: // '\025'
            return FIELD_LOW_LONGITUDE;

        case 22: // '\026'
            return FIELD_MAX;

        case 23: // '\027'
            return zzZi;

        case 24: // '\030'
            return FIELD_MIN;

        case 25: // '\031'
            return zzZm;

        case 26: // '\032'
            return zzZz;

        case 27: // '\033'
            return FIELD_PERCENTAGE;

        case 28: // '\034'
            return zzZl;

        case 29: // '\035'
            return zzZq;

        case 30: // '\036'
            return zzZu;

        case 31: // '\037'
            return FIELD_REVOLUTIONS;

        case 32: // ' '
            return FIELD_RPM;

        case 33: // '!'
            return zzZk;

        case 34: // '"'
            return zzZp;

        case 35: // '#'
            return FIELD_SPEED;

        case 36: // '$'
            return zzZt;

        case 37: // '%'
            return zzZr;

        case 38: // '&'
            return zzZj;

        case 39: // '\''
            return zzZn;

        case 40: // '('
            return zzZv;

        case 41: // ')'
            return zzZw;

        case 42: // '*'
            return FIELD_WATTS;

        case 43: // '+'
            return FIELD_WEIGHT;

        case 44: // ','
            return zzZB;

        case 45: // '-'
            return zzZC;

        case 46: // '.'
            return zzZD;
        }
_L2:
        if (s.equals("accuracy"))
        {
            byte0 = 0;
        }
          goto _L49
_L8:
        if (s.equals("activity"))
        {
            byte0 = 1;
        }
          goto _L49
_L48:
        if (s.equals("altitude"))
        {
            byte0 = 2;
        }
          goto _L49
_L18:
        if (s.equals("average"))
        {
            byte0 = 3;
        }
          goto _L49
_L30:
        if (s.equals("bpm"))
        {
            byte0 = 4;
        }
          goto _L49
_L44:
        if (s.equals("calcium"))
        {
            byte0 = 5;
        }
          goto _L49
_L26:
        if (s.equals("calories"))
        {
            byte0 = 6;
        }
          goto _L49
_L7:
        if (s.equals("cholesterol"))
        {
            byte0 = 7;
        }
          goto _L49
_L25:
        if (s.equals("circumference"))
        {
            byte0 = 8;
        }
          goto _L49
_L46:
        if (s.equals("confidence"))
        {
            byte0 = 9;
        }
          goto _L49
_L21:
        if (s.equals("dietary_fiber"))
        {
            byte0 = 10;
        }
          goto _L49
_L43:
        if (s.equals("distance"))
        {
            byte0 = 11;
        }
          goto _L49
_L3:
        if (s.equals("duration"))
        {
            byte0 = 12;
        }
          goto _L49
_L42:
        if (s.equals("edge_type"))
        {
            byte0 = 13;
        }
          goto _L49
_L11:
        if (s.equals("height"))
        {
            byte0 = 14;
        }
          goto _L49
_L22:
        if (s.equals("high_latitude"))
        {
            byte0 = 15;
        }
          goto _L49
_L19:
        if (s.equals("high_longitude"))
        {
            byte0 = 16;
        }
          goto _L49
_L34:
        if (s.equals("iron"))
        {
            byte0 = 17;
        }
          goto _L49
_L10:
        if (s.equals("latitude"))
        {
            byte0 = 18;
        }
          goto _L49
_L39:
        if (s.equals("longitude"))
        {
            byte0 = 19;
        }
          goto _L49
_L40:
        if (s.equals("low_latitude"))
        {
            byte0 = 20;
        }
          goto _L49
_L20:
        if (s.equals("low_longitude"))
        {
            byte0 = 21;
        }
          goto _L49
_L31:
        if (s.equals("max"))
        {
            byte0 = 22;
        }
          goto _L49
_L23:
        if (s.equals("meal_type"))
        {
            byte0 = 23;
        }
          goto _L49
_L32:
        if (s.equals("min"))
        {
            byte0 = 24;
        }
          goto _L49
_L47:
        if (s.equals("fat.monounsaturated"))
        {
            byte0 = 25;
        }
          goto _L49
_L9:
        if (s.equals("num_segments"))
        {
            byte0 = 26;
        }
          goto _L49
_L15:
        if (s.equals("percentage"))
        {
            byte0 = 27;
        }
          goto _L49
_L14:
        if (s.equals("fat.polyunsaturated"))
        {
            byte0 = 28;
        }
          goto _L49
_L4:
        if (s.equals("potassium"))
        {
            byte0 = 29;
        }
          goto _L49
_L24:
        if (s.equals("protein"))
        {
            byte0 = 30;
        }
          goto _L49
_L45:
        if (s.equals("revolutions"))
        {
            byte0 = 31;
        }
          goto _L49
_L33:
        if (s.equals("rpm"))
        {
            byte0 = 32;
        }
          goto _L49
_L41:
        if (s.equals("fat.saturated"))
        {
            byte0 = 33;
        }
          goto _L49
_L16:
        if (s.equals("sodium"))
        {
            byte0 = 34;
        }
          goto _L49
_L35:
        if (s.equals("speed"))
        {
            byte0 = 35;
        }
          goto _L49
_L36:
        if (s.equals("sugar"))
        {
            byte0 = 36;
        }
          goto _L49
_L38:
        if (s.equals("carbs.total"))
        {
            byte0 = 37;
        }
          goto _L49
_L12:
        if (s.equals("fat.total"))
        {
            byte0 = 38;
        }
          goto _L49
_L13:
        if (s.equals("fat.trans"))
        {
            byte0 = 39;
        }
          goto _L49
_L5:
        if (s.equals("vitamin_a"))
        {
            byte0 = 40;
        }
          goto _L49
_L6:
        if (s.equals("vitamin_c"))
        {
            byte0 = 41;
        }
          goto _L49
_L37:
        if (s.equals("watts"))
        {
            byte0 = 42;
        }
          goto _L49
_L17:
        if (s.equals("weight"))
        {
            byte0 = 43;
        }
          goto _L49
_L27:
        if (s.equals("x"))
        {
            byte0 = 44;
        }
          goto _L49
_L28:
        if (s.equals("y"))
        {
            byte0 = 45;
        }
          goto _L49
        if (s.equals("z"))
        {
            byte0 = 46;
        }
          goto _L49
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof Field) && zza((Field)obj);
    }

    public int getFormat()
    {
        return zzZE;
    }

    public String getName()
    {
        return mName;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return mName.hashCode();
    }

    public String toString()
    {
        String s1 = mName;
        String s;
        if (zzZE == 1)
        {
            s = "i";
        } else
        {
            s = "f";
        }
        return String.format("%s(%s)", new Object[] {
            s1, s
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzj.zza(this, parcel, i);
    }

}
