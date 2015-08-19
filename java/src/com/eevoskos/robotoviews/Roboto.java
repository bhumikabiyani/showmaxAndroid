// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eevoskos.robotoviews;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.SparseArray;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.eevoskos.robotoviews:
//            RobotoValues

public class Roboto
    implements RobotoValues
{

    private static final boolean DEBUG = false;
    private static Roboto ROBOTO;
    private static final String TAG = "Roboto";
    private static final SparseArray mTypefaces = new SparseArray(16);
    private Context mContext;

    private Roboto(Context context)
    {
        mContext = context;
    }

    private Typeface getFontFromRes(int i)
    {
        Object obj;
        BufferedOutputStream bufferedoutputstream;
        InputStream inputstream;
        byte abyte0[];
        try
        {
            inputstream = mContext.getResources().openRawResource(i);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return Typeface.DEFAULT;
        }
        obj = (new StringBuilder()).append(mContext.getCacheDir()).append("/tmp.raw").toString();
        abyte0 = new byte[inputstream.available()];
        bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(((String) (obj))));
_L1:
        i = inputstream.read(abyte0);
label0:
        {
            if (i <= 0)
            {
                break label0;
            }
            try
            {
                bufferedoutputstream.write(abyte0, 0, i);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                return Typeface.DEFAULT;
            }
        }
          goto _L1
        Typeface typeface;
        bufferedoutputstream.close();
        typeface = Typeface.createFromFile(((String) (obj)));
        (new File(((String) (obj)))).delete();
        return typeface;
    }

    public static Roboto getInstance()
    {
        if (ROBOTO == null)
        {
            throw new IllegalStateException("You must call Roboto.initialize() first, or call Roboto.getInstance() using Context parameter.");
        } else
        {
            return ROBOTO;
        }
    }

    public static Roboto getInstance(Context context)
    {
        if (ROBOTO == null)
        {
            ROBOTO = new Roboto(context);
        }
        return ROBOTO;
    }

    private int getResourceId(int i)
    {
        if (i == 0)
        {
            return R.raw.roboto_regular;
        }
        if (i == 1)
        {
            return R.raw.roboto_bold;
        }
        if (i == 2)
        {
            return R.raw.roboto_italic;
        }
        if (i == 3)
        {
            return R.raw.roboto_bold_italic;
        }
        if (i == 4)
        {
            return R.raw.roboto_black;
        }
        if (i == 5)
        {
            return R.raw.roboto_black_italic;
        }
        if (i == 6)
        {
            return R.raw.roboto_condensed;
        }
        if (i == 7)
        {
            return R.raw.roboto_condensed_bold;
        }
        if (i == 8)
        {
            return R.raw.roboto_condensed_italic;
        }
        if (i == 9)
        {
            return R.raw.roboto_condensed_bold_italic;
        }
        if (i == 10)
        {
            return R.raw.roboto_light;
        }
        if (i == 11)
        {
            return R.raw.roboto_light_italic;
        }
        if (i == 12)
        {
            return R.raw.roboto_medium;
        }
        if (i == 13)
        {
            return R.raw.roboto_medium_italic;
        }
        if (i == 14)
        {
            return R.raw.roboto_thin;
        }
        if (i == 15)
        {
            return R.raw.roboto_thin_italic;
        }
        if (i == 16)
        {
            return R.raw.roboto_slab_regular;
        }
        if (i == 17)
        {
            return R.raw.roboto_slab_bold;
        }
        if (i == 18)
        {
            return R.raw.roboto_slab_light;
        }
        if (i == 19)
        {
            return R.raw.roboto_slab_thin;
        }
        if (i == 20)
        {
            return R.raw.notonaskharabic_regular;
        } else
        {
            return R.raw.roboto_regular;
        }
    }

    public static void initialize(Context context)
    {
        if (ROBOTO == null)
        {
            ROBOTO = new Roboto(context);
        }
    }

    public Typeface getTypeface(int i)
    {
        Typeface typeface = (Typeface)mTypefaces.get(i);
        if (typeface != null)
        {
            return typeface;
        } else
        {
            Typeface typeface1 = getFontFromRes(getResourceId(i));
            mTypefaces.put(i, typeface1);
            return typeface1;
        }
    }

}
