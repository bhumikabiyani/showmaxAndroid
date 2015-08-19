// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.boldchat.sdk;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.boldchat.visitor.api.Chat;

// Referenced classes of package com.boldchat.sdk:
//            BoldChatSession

class this._cls1
    implements android.view.
{

    final l.dialog this$1;

    public void onClick(View view)
    {
label0:
        {
            view = input.getText();
            if (!TextUtils.isEmpty(view))
            {
                if (view.toString().indexOf("@") >= 1)
                {
                    break label0;
                }
                input.setError(BoldChatSession.access$600(_fld0, "api#email#error"));
            }
            return;
        }
        BoldChatSession.access$400().emailChatHistory(view.toString());
        dialog.dismiss();
    }

    l.input()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/boldchat/sdk/BoldChatSession$4

/* anonymous class */
    class BoldChatSession._cls4
        implements android.content.DialogInterface.OnShowListener
    {

        final BoldChatSession this$0;
        final AlertDialog val$dialog;
        final EditText val$input;

        public void onShow(DialogInterface dialoginterface)
        {
            dialog.getButton(-1).setOnClickListener(new BoldChatSession._cls4._cls1());
        }

            
            {
                this$0 = final_boldchatsession;
                dialog = alertdialog;
                input = EditText.this;
                super();
            }
    }

}
