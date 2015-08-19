// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io;

import android.os.AsyncTask;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.lib.api.io.UserApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;
import com.showmax.lib.api.model.user.userlist.v2.UserlistList;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import retrofit.RetrofitError;

public class UserlistTaskV2 extends AsyncTask
{
    public static final class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type ADD_TO_BOOKMARKS;
        public static final Type ADD_TO_RECENTLY_WATCHED;
        public static final Type REMOVE_FROM_BOOKMARKS;
        public static final Type SYNC_USER_LISTS;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/showmax/app/io/UserlistTaskV2$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        static 
        {
            ADD_TO_BOOKMARKS = new Type("ADD_TO_BOOKMARKS", 0);
            REMOVE_FROM_BOOKMARKS = new Type("REMOVE_FROM_BOOKMARKS", 1);
            ADD_TO_RECENTLY_WATCHED = new Type("ADD_TO_RECENTLY_WATCHED", 2);
            SYNC_USER_LISTS = new Type("SYNC_USER_LISTS", 3);
            $VALUES = (new Type[] {
                ADD_TO_BOOKMARKS, REMOVE_FROM_BOOKMARKS, ADD_TO_RECENTLY_WATCHED, SYNC_USER_LISTS
            });
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }

    public static interface UserlistTaskListener
    {

        public abstract void onUserlistTaskFinished(Type type, int i);

        public abstract void syncUserlist(Userlist userlist);
    }


    public static final int STATUS_ERROR = 2;
    public static final int STATUS_SUCCESS = 1;
    private Asset mAsset;
    private long mEndTime;
    private WeakReference mListener;
    private Integer mResumeTime;
    private long mStartTime;
    private String mToken;
    private Type mType;
    private String mUserId;
    private String mVideoId;

    private UserlistTaskV2()
    {
    }

    public static void execute(UserlistTaskV2 userlisttaskv2, String s, String s1)
    {
        if (userlisttaskv2 != null)
        {
            userlisttaskv2.execute(((Object []) (new String[] {
                s, s1
            })));
        }
    }

    public static UserlistTaskV2 newAddToBookmarksTask(Asset asset, UserlistTaskListener userlisttasklistener)
    {
        UserlistTaskV2 userlisttaskv2 = new UserlistTaskV2();
        userlisttaskv2.mAsset = asset;
        userlisttaskv2.mResumeTime = null;
        userlisttaskv2.mVideoId = null;
        userlisttaskv2.mType = Type.ADD_TO_BOOKMARKS;
        userlisttaskv2.mListener = new WeakReference(userlisttasklistener);
        MauLog.v("[UserlistTask]::[newAddToBookmarksTask]::[%s]", new Object[] {
            asset.id
        });
        return userlisttaskv2;
    }

    public static UserlistTaskV2 newAddToRecentlyWatchedTask(Asset asset, String s, int i, UserlistTaskListener userlisttasklistener)
    {
        UserlistTaskV2 userlisttaskv2 = new UserlistTaskV2();
        userlisttaskv2.mAsset = asset;
        userlisttaskv2.mVideoId = s;
        userlisttaskv2.mType = Type.ADD_TO_RECENTLY_WATCHED;
        userlisttaskv2.mResumeTime = Integer.valueOf(i);
        userlisttaskv2.mListener = new WeakReference(userlisttasklistener);
        MauLog.v("[UserlistTask]::[newAddToRecentlyWatchedTask]::[%s]", new Object[] {
            asset.id
        });
        return userlisttaskv2;
    }

    public static UserlistTaskV2 newRemoveFromBookmarksTask(Asset asset, UserlistTaskListener userlisttasklistener)
    {
        UserlistTaskV2 userlisttaskv2 = new UserlistTaskV2();
        userlisttaskv2.mAsset = asset;
        userlisttaskv2.mResumeTime = null;
        userlisttaskv2.mVideoId = null;
        userlisttaskv2.mType = Type.REMOVE_FROM_BOOKMARKS;
        userlisttaskv2.mListener = new WeakReference(userlisttasklistener);
        MauLog.v("[UserlistTask]::[newRemoveFromBookmarksTask]::[%s]", new Object[] {
            asset.id
        });
        return userlisttaskv2;
    }

    public static UserlistTaskV2 newSyncUserlistsTask(UserlistTaskListener userlisttasklistener)
    {
        UserlistTaskV2 userlisttaskv2 = new UserlistTaskV2();
        userlisttaskv2.mListener = new WeakReference(userlisttasklistener);
        MauLog.v("[UserlistTask]::[newSyncUserlistsTask]");
        return userlisttaskv2;
    }

    protected transient Integer doInBackground(String as[])
    {
        mStartTime = System.currentTimeMillis();
        MauLog.v("[UserlistTask]::[doInBackground]");
        if (as == null || as.length < 2)
        {
            MauLog.v("[UserlistTask]::[doInBackground]::[params is null or less than 2]");
            return Integer.valueOf(2);
        }
        mToken = as[0];
        mUserId = as[1];
        if (mType != Type.ADD_TO_BOOKMARKS) goto _L2; else goto _L1
_L1:
        UserApi.getInstance().addItemToUserlistV2(mToken, mUserId, com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS, mAsset.id, null, null);
_L4:
        as = UserApi.getInstance().loadUserlistsV2(mToken, mUserId);
        MauLog.v("[UserlistTask]::[doInBackground]::[userlists fetched]");
        as = ((UserlistList) (as)).items.iterator();
        do
        {
            if (!as.hasNext())
            {
                break;
            }
            Userlist userlist = (Userlist)as.next();
            if (mListener != null && mListener.get() != null)
            {
                ((UserlistTaskListener)mListener.get()).syncUserlist(userlist);
            }
        } while (true);
        break; /* Loop/switch isn't completed */
_L2:
        if (mType == Type.ADD_TO_RECENTLY_WATCHED)
        {
            UserApi.getInstance().addItemToUserlistV2(mToken, mUserId, com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.RECENTLY_WATCHED, mAsset.id, mVideoId, mResumeTime);
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            if (mType == Type.REMOVE_FROM_BOOKMARKS)
            {
                UserApi.getInstance().removeItemFromUserlistV2(mToken, mUserId, com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS, mAsset.id);
            }
        }
        // Misplaced declaration of an exception variable
        catch (String as[])
        {
            MauLog.v("[UserlistTask]::[doInBackground]::[network error]::[%s]", new Object[] {
                as.getMessage()
            });
            EventBus.getInstance().post(new ApiErrorEvent(as));
            return Integer.valueOf(2);
        }
        if (true) goto _L4; else goto _L3
_L3:
        return Integer.valueOf(1);
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected void onPostExecute(Integer integer)
    {
        mEndTime = System.currentTimeMillis();
        MauLog.v("[UserlistTask]::[onPostExecute]::[%d]::[%d ms]", new Object[] {
            integer, Long.valueOf(mEndTime - mStartTime)
        });
        if (mListener != null && mListener.get() != null)
        {
            ((UserlistTaskListener)mListener.get()).onUserlistTaskFinished(mType, integer.intValue());
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Integer)obj);
    }
}
