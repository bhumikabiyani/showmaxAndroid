.class public Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ActivityTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TutorialPagerAdapter"
.end annotation


# instance fields
.field private mTablet:Z


# direct methods
.method public constructor <init>(ZLandroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "tablet"    # Z
    .param p2, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 195
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 196
    iput-boolean p1, p0, Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;->mTablet:Z

    .line 197
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "text":I
    const/4 v0, 0x0

    .line 210
    .local v0, "imgSrc":I
    packed-switch p1, :pswitch_data_0

    .line 225
    :goto_0
    invoke-static {v1, v0}, Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;->newInstance(II)Lcom/showmax/app/ui/ActivityTutorial$TutorialPageFragment;

    move-result-object v2

    return-object v2

    .line 213
    :pswitch_0
    const v1, 0x7f0d00d3

    .line 214
    iget-boolean v2, p0, Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;->mTablet:Z

    if-eqz v2, :cond_0

    const v0, 0x7f0200dd

    .line 215
    :goto_1
    goto :goto_0

    .line 214
    :cond_0
    const v0, 0x7f0200da

    goto :goto_1

    .line 217
    :pswitch_1
    const v1, 0x7f0d00d4

    .line 218
    iget-boolean v2, p0, Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;->mTablet:Z

    if-eqz v2, :cond_1

    const v0, 0x7f0200de

    .line 219
    :goto_2
    goto :goto_0

    .line 218
    :cond_1
    const v0, 0x7f0200db

    goto :goto_2

    .line 221
    :pswitch_2
    const v1, 0x7f0d00d5

    .line 222
    iget-boolean v2, p0, Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;->mTablet:Z

    if-eqz v2, :cond_2

    const v0, 0x7f0200df

    :goto_3
    goto :goto_0

    :cond_2
    const v0, 0x7f0200dc

    goto :goto_3

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 231
    packed-switch p1, :pswitch_data_0

    .line 239
    const-string v0, "THREE"

    :goto_0
    return-object v0

    .line 234
    :pswitch_0
    const-string v0, "ONE"

    goto :goto_0

    .line 236
    :pswitch_1
    const-string v0, "TWO"

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
