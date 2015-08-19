.class public final enum Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/log/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

.field public static final enum BUFFER_UNDERRUN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

.field private static final EVENT_CATEGORY_NAME:Ljava/lang/String; = "Playback"

.field public static final enum FULLSCREEN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

.field public static final enum PAUSE:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

.field public static final enum PROFILE_CHANGE:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

.field public static final enum RESUME:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

.field public static final enum RESUME_UNDERRUN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

.field public static final enum SEEK:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

.field public static final enum START:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

.field public static final enum STOP:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

.field public static final enum SUBTITLES:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

.field public static final enum THROUGHPUT:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    new-instance v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->START:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->PAUSE:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->RESUME:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    const-string v1, "RESUME_UNDERRUN"

    invoke-direct {v0, v1, v6}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->RESUME_UNDERRUN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    const-string v1, "BUFFER_UNDERRUN"

    invoke-direct {v0, v1, v7}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->BUFFER_UNDERRUN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    const-string v1, "SEEK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->SEEK:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    const-string v1, "SUBTITLES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->SUBTITLES:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    const-string v1, "STOP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->STOP:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    const-string v1, "PROFILE_CHANGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->PROFILE_CHANGE:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    const-string v1, "THROUGHPUT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->THROUGHPUT:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    const-string v1, "FULLSCREEN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->FULLSCREEN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    .line 99
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->START:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->PAUSE:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->RESUME:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->RESUME_UNDERRUN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->BUFFER_UNDERRUN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->SEEK:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->SUBTITLES:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->STOP:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->PROFILE_CHANGE:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->THROUGHPUT:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->FULLSCREEN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->$VALUES:[Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEventCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "Playback"

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->$VALUES:[Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/showmax/lib/api/model/log/Event$1;->$SwitchMap$com$showmax$lib$api$model$log$Event$PlaybackEvent:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 111
    :pswitch_0
    const-string v0, "PlaybackStart"

    goto :goto_0

    .line 113
    :pswitch_1
    const-string v0, "PlaybackPause"

    goto :goto_0

    .line 115
    :pswitch_2
    const-string v0, "PlaybackResume"

    goto :goto_0

    .line 117
    :pswitch_3
    const-string v0, "PlaybackResumeUnderrun"

    goto :goto_0

    .line 119
    :pswitch_4
    const-string v0, "PlaybackBufferUnderrun"

    goto :goto_0

    .line 121
    :pswitch_5
    const-string v0, "PlaybackSeek"

    goto :goto_0

    .line 123
    :pswitch_6
    const-string v0, "PlaybackSubtitles"

    goto :goto_0

    .line 125
    :pswitch_7
    const-string v0, "PlaybackStop"

    goto :goto_0

    .line 127
    :pswitch_8
    const-string v0, "PlaybackProfileChange"

    goto :goto_0

    .line 129
    :pswitch_9
    const-string v0, "PlaybackThroughput"

    goto :goto_0

    .line 131
    :pswitch_a
    const-string v0, "PlaybackFullScreen"

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
