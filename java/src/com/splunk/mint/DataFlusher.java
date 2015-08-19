// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.splunk.mint;

import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package com.splunk.mint:
//            BaseExecutor, InterfaceExecutor, LowPriorityThreadFactory, Properties, 
//            Logger, SplunkFileFilter, NetSenderResponse, MintUrls, 
//            Utils, Mint, MintCallback, NetSender

class DataFlusher extends BaseExecutor
    implements InterfaceExecutor
{

    DataFlusher()
    {
    }

    public ExecutorService getExecutor()
    {
        if (executor == null)
        {
            executor = Executors.newFixedThreadPool(1);
        }
        return executor;
    }

    public void send()
    {
        this;
        JVM INSTR monitorenter ;
        Thread thread = (new LowPriorityThreadFactory()).newThread(new Runnable() {

            final DataFlusher this$0;

            public void run()
            {
                if (Properties.FILES_PATH == null)
                {
                    Logger.logError("Files path is not set yet, will not flush!");
                } else
                {
                    File afile[] = (new File(Properties.FILES_PATH)).listFiles(SplunkFileFilter.getInstance());
                    int j = afile.length;
                    int i = 0;
                    while (i < j) 
                    {
                        File file = afile[i];
                        NetSenderResponse netsenderresponse = new NetSenderResponse(MintUrls.getURL(), null);
                        if (!file.exists())
                        {
                            netsenderresponse.setException(new Exception("There is no data to be sent. This is not an error."));
                            netsenderresponse.setSentSuccessfully(Boolean.valueOf(false));
                        } else
                        {
                            Object obj1 = null;
                            Object obj;
                            try
                            {
                                obj = Utils.readFile(file.getAbsolutePath());
                            }
                            // Misplaced declaration of an exception variable
                            catch (Object obj)
                            {
                                netsenderresponse.setException(((Exception) (obj)));
                                netsenderresponse.setSentSuccessfully(Boolean.valueOf(false));
                                ((Exception) (obj)).printStackTrace();
                                obj = obj1;
                                if (Mint.mintCallback != null)
                                {
                                    Mint.mintCallback.netSenderResponse(netsenderresponse);
                                    obj = obj1;
                                }
                            }
                            if (obj == null || ((String) (obj)).length() == 0)
                            {
                                if (Mint.mintCallback != null)
                                {
                                    Mint.mintCallback.netSenderResponse(netsenderresponse);
                                }
                            } else
                            if ((new NetSender()).sendBlocking(null, ((String) (obj)), false).getSentSuccessfully().booleanValue())
                            {
                                file.delete();
                            }
                        }
                        i++;
                    }
                }
            }

            
            {
                this$0 = DataFlusher.this;
                super();
            }
        });
        if (getExecutor() != null)
        {
            getExecutor().execute(thread);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
