// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package fr.castorflex.android.circularprogressbar;


// Referenced classes of package fr.castorflex.android.circularprogressbar:
//            CircularProgressDrawable

public static final class  extends Enum
{

    private static final ROUNDED $VALUES[];
    public static final ROUNDED NORMAL;
    public static final ROUNDED ROUNDED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(fr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NORMAL = new <init>("NORMAL", 0);
        ROUNDED = new <init>("ROUNDED", 1);
        $VALUES = (new .VALUES[] {
            NORMAL, ROUNDED
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
