// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.intellij.lang.annotations;

import java.lang.annotation.Annotation;

public interface RegExp
    extends Annotation
{

    public abstract String prefix();

    public abstract String suffix();
}
