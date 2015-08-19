// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.player;

import android.text.TextUtils;

public final class PlayerColumnNames
{

    public final String zzaiA;
    public final String zzaiB;
    public final String zzaiC;
    public final String zzaiD;
    public final String zzaiE;
    public final String zzaiF;
    public final String zzaiG;
    public final String zzaiH;
    public final String zzaiI;
    public final String zzaiJ;
    public final String zzaiK;
    public final String zzaiL;
    public final String zzaiM;
    public final String zzaiN;
    public final String zzaio;
    public final String zzaip;
    public final String zzaiq;
    public final String zzair;
    public final String zzais;
    public final String zzait;
    public final String zzaiu;
    public final String zzaiv;
    public final String zzaiw;
    public final String zzaix;
    public final String zzaiy;
    public final String zzaiz;

    public PlayerColumnNames(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            zzaio = "external_player_id";
            zzaip = "profile_name";
            zzaiq = "profile_icon_image_uri";
            zzair = "profile_icon_image_url";
            zzais = "profile_hi_res_image_uri";
            zzait = "profile_hi_res_image_url";
            zzaiu = "last_updated";
            zzaiv = "is_in_circles";
            zzaiw = "played_with_timestamp";
            zzaix = "current_xp_total";
            zzaiy = "current_level";
            zzaiz = "current_level_min_xp";
            zzaiA = "current_level_max_xp";
            zzaiB = "next_level";
            zzaiC = "next_level_max_xp";
            zzaiD = "last_level_up_timestamp";
            zzaiE = "player_title";
            zzaiF = "has_all_public_acls";
            zzaiG = "is_profile_visible";
            zzaiH = "most_recent_external_game_id";
            zzaiI = "most_recent_game_name";
            zzaiJ = "most_recent_activity_timestamp";
            zzaiK = "most_recent_game_icon_uri";
            zzaiL = "most_recent_game_hi_res_uri";
            zzaiM = "most_recent_game_featured_uri";
            zzaiN = "has_debug_access";
            return;
        } else
        {
            zzaio = (new StringBuilder()).append(s).append("external_player_id").toString();
            zzaip = (new StringBuilder()).append(s).append("profile_name").toString();
            zzaiq = (new StringBuilder()).append(s).append("profile_icon_image_uri").toString();
            zzair = (new StringBuilder()).append(s).append("profile_icon_image_url").toString();
            zzais = (new StringBuilder()).append(s).append("profile_hi_res_image_uri").toString();
            zzait = (new StringBuilder()).append(s).append("profile_hi_res_image_url").toString();
            zzaiu = (new StringBuilder()).append(s).append("last_updated").toString();
            zzaiv = (new StringBuilder()).append(s).append("is_in_circles").toString();
            zzaiw = (new StringBuilder()).append(s).append("played_with_timestamp").toString();
            zzaix = (new StringBuilder()).append(s).append("current_xp_total").toString();
            zzaiy = (new StringBuilder()).append(s).append("current_level").toString();
            zzaiz = (new StringBuilder()).append(s).append("current_level_min_xp").toString();
            zzaiA = (new StringBuilder()).append(s).append("current_level_max_xp").toString();
            zzaiB = (new StringBuilder()).append(s).append("next_level").toString();
            zzaiC = (new StringBuilder()).append(s).append("next_level_max_xp").toString();
            zzaiD = (new StringBuilder()).append(s).append("last_level_up_timestamp").toString();
            zzaiE = (new StringBuilder()).append(s).append("player_title").toString();
            zzaiF = (new StringBuilder()).append(s).append("has_all_public_acls").toString();
            zzaiG = (new StringBuilder()).append(s).append("is_profile_visible").toString();
            zzaiH = (new StringBuilder()).append(s).append("most_recent_external_game_id").toString();
            zzaiI = (new StringBuilder()).append(s).append("most_recent_game_name").toString();
            zzaiJ = (new StringBuilder()).append(s).append("most_recent_activity_timestamp").toString();
            zzaiK = (new StringBuilder()).append(s).append("most_recent_game_icon_uri").toString();
            zzaiL = (new StringBuilder()).append(s).append("most_recent_game_hi_res_uri").toString();
            zzaiM = (new StringBuilder()).append(s).append("most_recent_game_featured_uri").toString();
            zzaiN = (new StringBuilder()).append(s).append("has_debug_access").toString();
            return;
        }
    }
}
