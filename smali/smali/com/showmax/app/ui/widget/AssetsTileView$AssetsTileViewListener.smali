.class public interface abstract Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;
.super Ljava/lang/Object;
.source "AssetsTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/widget/AssetsTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AssetsTileViewListener"
.end annotation


# virtual methods
.method public abstract onAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V
.end method

.method public abstract onSeeAllClick(Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
