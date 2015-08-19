// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.boldchat.sdk;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import java.util.Date;

// Referenced classes of package com.boldchat.sdk:
//            BoldChatView, BoldChatSession

public class BoldChatActivity extends Activity
    implements BoldChatSession.BoldChatSessionListener
{

    BoldChatSession mBoldChat;

    public BoldChatActivity()
    {
    }

    public void chatSessionClosed()
    {
        finish();
    }

    public void chatSessionCreated()
    {
    }

    public void chatSessionEnded()
    {
    }

    public void chatSessionStarted()
    {
    }

    public void messageArrived(String s, String s1, Date date)
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(R.layout.bc_chat_activity);
        bundle = (BoldChatView)findViewById(R.id.bc_boldchat);
        String s = getIntent().getStringExtra("api_key");
        String s1 = getIntent().getStringExtra("server_set");
        mBoldChat = (new BoldChatSession.Builder(bundle, s)).setServerSet(s1).build();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        mBoldChat.addMenuItems(getMenuInflater(), menu);
        return true;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        mBoldChat.removeListener();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (mBoldChat.menuItemSelected(menuitem))
        {
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    protected void onResume()
    {
        super.onResume();
        mBoldChat.setListener(this);
        mBoldChat.start();
    }

    public void operatorTyping()
    {
    }
}
