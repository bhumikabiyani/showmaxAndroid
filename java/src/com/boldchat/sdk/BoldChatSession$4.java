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

class val.input
    implements android.content.ShowListener
{

    final BoldChatSession this$0;
    final AlertDialog val$dialog;
    final EditText val$input;

    public void onShow(DialogInterface dialoginterface)
    {
        val$dialog.getButton(-1).setOnClickListener(new android.view.View.OnClickListener() {

            final BoldChatSession._cls4 this$1;

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
                        input.setError(BoldChatSession.access$600(this$0, "api#email#error"));
                    }
                    return;
                }
                BoldChatSession.access$400().emailChatHistory(view.toString());
                dialog.dismiss();
            }

            
            {
                this$1 = BoldChatSession._cls4.this;
                super();
            }
        });
    }

    _cls1.this._cls1()
    {
        this$0 = final_boldchatsession;
        val$dialog = alertdialog;
        val$input = EditText.this;
        super();
    }
}
