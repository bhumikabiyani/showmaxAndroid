// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io.serviceinterface;

import com.showmax.lib.api.model.user.BrandingPartner;
import com.showmax.lib.api.model.user.UserProfile;
import com.showmax.lib.api.model.user.userlist.UserlistList;
import retrofit.Callback;
import retrofit.client.Response;

public interface UserService
{

    public abstract Response addUserlistsV2Item(String s, String s1, String s2, String s3, String s4, Integer integer);

    public abstract void addUserlistsV2Item(String s, String s1, String s2, String s3, String s4, Integer integer, Callback callback);

    public abstract Response deleteUserlistsV2Item(String s, String s1, String s2, String s3);

    public abstract void deleteUserlistsV2Item(String s, String s1, String s2, String s3, Callback callback);

    public abstract BrandingPartner getBrandingPartner(String s, String s1);

    public abstract void getBrandingPartner(String s, String s1, Callback callback);

    public abstract UserProfile getUserProfile(String s, String s1);

    public abstract void getUserProfile(String s, String s1, Callback callback);

    public abstract UserlistList getUserlists(String s, String s1);

    public abstract void getUserlists(String s, String s1, Callback callback);

    public abstract com.showmax.lib.api.model.user.userlist.v2.UserlistList getUserlistsV2(String s, String s1);

    public abstract void getUserlistsV2(String s, String s1, Callback callback);

    public abstract Response updateUserList(String s, String s1, String s2, String as[]);

    public abstract void updateUserList(String s, String s1, String s2, String as[], Callback callback);
}
