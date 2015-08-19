// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.view.View;
import com.showmax.lib.api.model.catalogue.Asset;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui.widget:
//            AssetsTileView

public static interface 
{

    public abstract void onAssetClick(Asset asset);

    public abstract void onSeeAllClick(View view, ArrayList arraylist, String s);
}
