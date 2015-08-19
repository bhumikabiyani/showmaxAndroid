.class public Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;
.super Ljava/lang/Object;
.source "AppPreflightResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/AppPreflightResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppPreflightAction"
.end annotation


# instance fields
.field public btnLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "button_link"
    .end annotation
.end field

.field public btnText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "button_text"
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field public redirect:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field final synthetic this$0:Lcom/showmax/lib/api/model/AppPreflightResponseBody;


# direct methods
.method public constructor <init>(Lcom/showmax/lib/api/model/AppPreflightResponseBody;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/showmax/lib/api/model/AppPreflightResponseBody$AppPreflightAction;->this$0:Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
