// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.org.codehaus.jackson.annotate;

import java.lang.annotation.Annotation;

// Referenced classes of package com.flurry.org.codehaus.jackson.annotate:
//            JsonMethod

public interface JsonAutoDetect
    extends Annotation
{

    public abstract Visibility creatorVisibility();

    public abstract Visibility fieldVisibility();

    public abstract Visibility getterVisibility();

    public abstract Visibility isGetterVisibility();

    public abstract Visibility setterVisibility();

    public abstract JsonMethod[] value();
}
