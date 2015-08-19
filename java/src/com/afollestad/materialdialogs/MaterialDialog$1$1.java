// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;

import android.view.ViewTreeObserver;
import android.widget.ListView;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.afollestad.materialdialogs:
//            MaterialDialog

class val.fScrollIndex
    implements Runnable
{

    final val.fScrollIndex this$1;
    final int val$fScrollIndex;

    public void run()
    {
        listView.requestFocus();
        listView.setSelection(val$fScrollIndex);
    }

    is._cls0()
    {
        this$1 = final__pcls0;
        val$fScrollIndex = I.this;
        super();
    }

    // Unreferenced inner class com/afollestad/materialdialogs/MaterialDialog$1

/* anonymous class */
    class MaterialDialog._cls1
        implements android.view.ViewTreeObserver.OnGlobalLayoutListener
    {

        final MaterialDialog this$0;

        public void onGlobalLayout()
        {
            if (android.os.Build.VERSION.SDK_INT < 16)
            {
                listView.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            } else
            {
                listView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            if (listType != MaterialDialog.ListType.SINGLE && listType != MaterialDialog.ListType.MULTI) goto _L2; else goto _L1
_L1:
            if (listType != MaterialDialog.ListType.SINGLE) goto _L4; else goto _L3
_L3:
            if (mBuilder.selectedIndex >= 0) goto _L5; else goto _L2
_L2:
            return;
_L5:
            int i = mBuilder.selectedIndex;
_L8:
            if (listView.getLastVisiblePosition() >= i) goto _L2; else goto _L6
_L6:
            int j = i - (listView.getLastVisiblePosition() - listView.getFirstVisiblePosition()) / 2;
            i = j;
            if (j < 0)
            {
                i = 0;
            }
            listView.post(i. new MaterialDialog._cls1._cls1());
            return;
_L4:
            if (mBuilder.selectedIndices == null || mBuilder.selectedIndices.length == 0) goto _L2; else goto _L7
_L7:
            List list = Arrays.asList(mBuilder.selectedIndices);
            Collections.sort(list);
            i = ((Integer)list.get(0)).intValue();
              goto _L8
        }

            
            {
                this$0 = MaterialDialog.this;
                super();
            }
    }

}
