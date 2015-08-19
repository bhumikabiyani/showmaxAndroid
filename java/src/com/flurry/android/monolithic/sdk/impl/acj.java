// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.File;
import java.net.URI;
import java.net.URL;
import java.util.Collection;
import java.util.Currency;
import java.util.HashMap;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ael, acy, acn, ack, 
//            acl, acm, acp, aco, 
//            abn

public class acj
    implements ael
{

    public acj()
    {
    }

    public Collection a()
    {
        HashMap hashmap = new HashMap();
        acy acy1 = acy.a;
        hashmap.put(java/net/URL, acy1);
        hashmap.put(java/net/URI, acy1);
        hashmap.put(java/util/Currency, acy1);
        hashmap.put(java/util/UUID, acy1);
        hashmap.put(java/util/regex/Pattern, acy1);
        hashmap.put(java/util/Locale, acy1);
        hashmap.put(java/util/Locale, acy1);
        hashmap.put(java/util/concurrent/atomic/AtomicReference, com/flurry/android/monolithic/sdk/impl/acn);
        hashmap.put(java/util/concurrent/atomic/AtomicBoolean, com/flurry/android/monolithic/sdk/impl/ack);
        hashmap.put(java/util/concurrent/atomic/AtomicInteger, com/flurry/android/monolithic/sdk/impl/acl);
        hashmap.put(java/util/concurrent/atomic/AtomicLong, com/flurry/android/monolithic/sdk/impl/acm);
        hashmap.put(java/io/File, com/flurry/android/monolithic/sdk/impl/acp);
        hashmap.put(java/lang/Class, com/flurry/android/monolithic/sdk/impl/aco);
        hashmap.put(Void.TYPE, com/flurry/android/monolithic/sdk/impl/abn);
        return hashmap.entrySet();
    }
}
