.class public interface abstract Lcom/showmax/lib/api/model/log/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/model/log/Event$ErrorEvent;,
        Lcom/showmax/lib/api/model/log/Event$UserEvent;,
        Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;,
        Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;,
        Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;
    }
.end annotation


# static fields
.field public static final DIMENSION_INDEX_NAV_TARGET:I = 0x1

.field public static final DIMENSION_VALUE_NAV_TARGET_MY_ACCOUNT:Ljava/lang/String; = "myaccount"

.field public static final DIMENSION_VALUE_NAV_TARGET_MY_FLIX:Ljava/lang/String; = "myflix"
