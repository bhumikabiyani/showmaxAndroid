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

class this._cls0
    implements android.view.OnGlobalLayoutListener
{

    final MaterialDialog this$0;

    public void onGlobalLayout()
    {
        if (android.os._INT < 16)
        {
            listView.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        } else
        {
            listView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
        if (listType != stType.SINGLE && listType != stType.MULTI) goto _L2; else goto _L1
_L1:
        if (listType != stType.SINGLE) goto _L4; else goto _L3
_L3:
        if (mBuilder.selectedIndex >= 0) goto _L5; else goto _L2
_L2:
        return;
_L5:
        final int fScrollIndex = mBuilder.selectedIndex;
_L8:
        if (listView.getLastVisiblePosition() >= fScrollIndex) goto _L2; else goto _L6
_L6:
        int i = fScrollIndex - (listView.getLastVisiblePosition() - listView.getFirstVisiblePosition()) / 2;
        fScrollIndex = i;
        if (i < 0)
        {
            fScrollIndex = 0;
        }
        listView.post(new Runnable() {

            final MaterialDialog._cls1 this$1;
            final int val$fScrollIndex;

            public void run()
            {
                listView.requestFocus();
                listView.setSelection(fScrollIndex);
            }

            
            {
                this$1 = MaterialDialog._cls1.this;
                fScrollIndex = i;
                super();
            }
        });
        return;
_L4:
        if (mBuilder.selectedIndices == null || mBuilder.selectedIndices.length == 0) goto _L2; else goto _L7
_L7:
        List list = Arrays.asList(mBuilder.selectedIndices);
        Collections.sort(list);
        fScrollIndex = ((Integer)list.get(0)).intValue();
          goto _L8
    }

    _cls1.val.fScrollIndex()
    {
        this$0 = MaterialDialog.this;
        super();
    }
}
