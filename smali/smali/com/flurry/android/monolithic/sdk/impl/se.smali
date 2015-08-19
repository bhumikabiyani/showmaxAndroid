.class public interface abstract annotation Lcom/flurry/android/monolithic/sdk/impl/se;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/annotate/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/flurry/android/monolithic/sdk/impl/se;
        a = Lcom/flurry/android/monolithic/sdk/impl/rb;
        b = Lcom/flurry/android/monolithic/sdk/impl/rb;
        c = Lcom/flurry/android/monolithic/sdk/impl/rb;
        d = Lcom/flurry/android/monolithic/sdk/impl/sl;
        e = Lcom/flurry/android/monolithic/sdk/impl/sl;
        f = Lcom/flurry/android/monolithic/sdk/impl/sl;
        g = .enum Lcom/flurry/android/monolithic/sdk/impl/sg;->DYNAMIC:Lcom/flurry/android/monolithic/sdk/impl/sg;
        h = .enum Lcom/flurry/android/monolithic/sdk/impl/sf;->ALWAYS:Lcom/flurry/android/monolithic/sdk/impl/sf;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract b()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract e()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract f()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract g()Lcom/flurry/android/monolithic/sdk/impl/sg;
.end method

.method public abstract h()Lcom/flurry/android/monolithic/sdk/impl/sf;
.end method
