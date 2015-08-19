// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import com.boldchat.sdk.BoldChatSession;
import com.boldchat.sdk.BoldChatView;
import com.showmax.app.Build;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBase

public class ActivityChat extends ActivityBase
    implements com.boldchat.sdk.BoldChatSession.BoldChatSessionListener
{

    public static final String TAG = com/showmax/app/ui/ActivityChat.getSimpleName();
    private BoldChatSession mBoldChatSession;
    private BoldChatView mBoldChatView;

    public ActivityChat()
    {
    }

    public static void startChatActivity(Context context)
    {
        context.startActivity(new Intent(context, com/showmax/app/ui/ActivityChat));
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

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void messageArrived(String s, String s1, Date date)
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasSlidingMenu(true);
        setHasToolbar(true, false);
        setContentView(0x7f03001c);
        hideActionBarLogo();
        mBoldChatView = (BoldChatView)findViewById(0x7f0b00a1);
        bundle = new HashMap();
        bundle.put("department", Build.getInstance().BOLDCHAT_DEPARTMENT);
        mBoldChatSession = (new com.boldchat.sdk.BoldChatSession.Builder(mBoldChatView, Build.getInstance().API_KEY_BOLDCHAT)).setExtraData(bundle).build();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        mBoldChatSession.addMenuItems(getMenuInflater(), menu);
        return true;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        mBoldChatSession.removeListener();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (mBoldChatSession.menuItemSelected(menuitem))
        {
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onPostCreate(Bundle bundle)
    {
        super.onPostCreate(bundle);
    }

    protected void onResume()
    {
        super.onResume();
        mBoldChatSession.setListener(this);
        mBoldChatSession.start();
    }

    protected void onStart()
    {
        super.onStart();
    }

    protected void onStop()
    {
        super.onStop();
    }

    public void operatorTyping()
    {
    }

}
