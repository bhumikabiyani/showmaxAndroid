// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.splunk.mint;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package com.splunk.mint:
//            BaseExecutor, InterfaceExecutor, Properties, Utils, 
//            Logger, Mint, LowPriorityThreadFactory, SplunkFileFilter, 
//            DataSaverResponse, MintCallback

class DataSaver extends BaseExecutor
    implements InterfaceExecutor
{

    private static final String LAST_SAVED_NAME = "/Mint-lastsavedfile";
    private static final int MAX_FILE_SIZE = 0x222e0;

    DataSaver()
    {
    }

    private String getLastSavedName()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = new File((new StringBuilder()).append(Properties.FILES_PATH).append("/Mint-lastsavedfile").toString());
        try
        {
            obj = Utils.readFile(((File) (obj)).getAbsolutePath()).trim();
        }
        catch (Exception exception)
        {
            exception = null;
        }
        this;
        JVM INSTR monitorexit ;
        return ((String) (obj));
        Exception exception1;
        exception1;
        throw exception1;
    }

    private void saveLastSavedName(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj1 = new File((new StringBuilder()).append(Properties.FILES_PATH).append("/Mint-lastsavedfile").toString());
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        boolean flag = ((File) (obj1)).exists();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        ((File) (obj1)).delete();
        ((File) (obj1)).createNewFile();
_L1:
        Object obj;
        Object obj2;
        obj = null;
        obj2 = null;
        obj1 = new BufferedWriter(new FileWriter(((File) (obj1))));
        ((BufferedWriter) (obj1)).write(s.trim());
        ((BufferedWriter) (obj1)).flush();
        ((BufferedWriter) (obj1)).close();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        ((BufferedWriter) (obj1)).close();
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        obj;
        ((IOException) (obj)).printStackTrace();
          goto _L1
        s;
        throw s;
        s;
        s.printStackTrace();
          goto _L2
        obj1;
        s = obj2;
_L9:
        obj = s;
        Logger.logWarning("There was a problem saving the last saved file name");
        obj = s;
        if (!Mint.DEBUG) goto _L4; else goto _L3
_L3:
        obj = s;
        ((IOException) (obj1)).printStackTrace();
_L4:
        if (s == null) goto _L2; else goto _L5
_L5:
        s.close();
          goto _L2
        s;
        s.printStackTrace();
          goto _L2
        s;
_L8:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_178;
        }
        ((BufferedWriter) (obj)).close();
_L6:
        throw s;
        obj;
        ((IOException) (obj)).printStackTrace();
          goto _L6
        s;
        obj = obj1;
        if (true) goto _L8; else goto _L7
_L7:
        IOException ioexception;
        ioexception;
        s = ((String) (obj1));
        obj1 = ioexception;
          goto _L9
    }

    public ExecutorService getExecutor()
    {
        if (executor == null)
        {
            executor = Executors.newFixedThreadPool(1);
        }
        return executor;
    }

    public void save(final String jsonData)
    {
        this;
        JVM INSTR monitorenter ;
        jsonData = (new LowPriorityThreadFactory()).newThread(new Runnable() {

            final DataSaver this$0;
            final String val$jsonData;

            public void run()
            {
                Object obj;
                Object obj3;
                Object obj4;
                DataSaverResponse datasaverresponse;
                obj = getLastSavedName();
                Object obj1;
                if (obj == null)
                {
                    obj = new File(SplunkFileFilter.createNewFile());
                } else
                {
                    obj = new File((new StringBuilder()).append(Properties.FILES_PATH).append("/").append(((String) (obj))).toString());
                }
                obj1 = obj;
                if (((File) (obj)).length() >= 0x222e0L)
                {
                    obj1 = new File(SplunkFileFilter.createNewFile());
                }
                datasaverresponse = new DataSaverResponse(jsonData, ((File) (obj1)).getAbsolutePath());
                if (obj1 != null && !((File) (obj1)).exists())
                {
                    try
                    {
                        ((File) (obj1)).createNewFile();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj)
                    {
                        ((IOException) (obj)).printStackTrace();
                    }
                }
                obj = null;
                obj4 = null;
                obj3 = new BufferedWriter(new FileWriter(((File) (obj1)), true));
                ((BufferedWriter) (obj3)).append(jsonData);
                ((BufferedWriter) (obj3)).flush();
                ((BufferedWriter) (obj3)).close();
                saveLastSavedName(((File) (obj1)).getName());
                if (obj3 != null)
                {
                    try
                    {
                        ((BufferedWriter) (obj3)).close();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj)
                    {
                        ((IOException) (obj)).printStackTrace();
                    }
                }
                datasaverresponse.setSavedSuccessfully(Boolean.valueOf(true));
                if (Mint.mintCallback == null)
                {
                    break MISSING_BLOCK_LABEL_365;
                }
                Mint.mintCallback.dataSaverResponse(datasaverresponse);
_L2:
                return;
                obj3;
                Object obj2 = obj4;
_L5:
                obj = obj2;
                ((IOException) (obj3)).printStackTrace();
                obj = obj2;
                datasaverresponse.setException(((Exception) (obj3)));
                obj = obj2;
                datasaverresponse.setSavedSuccessfully(Boolean.valueOf(false));
                obj = obj2;
                if (Mint.mintCallback == null)
                {
                    break MISSING_BLOCK_LABEL_265;
                }
                obj = obj2;
                Mint.mintCallback.dataSaverResponse(datasaverresponse);
                if (obj2 != null)
                {
                    try
                    {
                        ((BufferedWriter) (obj2)).close();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj)
                    {
                        ((IOException) (obj)).printStackTrace();
                    }
                }
                datasaverresponse.setSavedSuccessfully(Boolean.valueOf(true));
                if (Mint.mintCallback == null) goto _L2; else goto _L1
_L1:
                Mint.mintCallback.dataSaverResponse(datasaverresponse);
                return;
                Exception exception;
                exception;
_L4:
                if (obj != null)
                {
                    try
                    {
                        ((BufferedWriter) (obj)).close();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj)
                    {
                        ((IOException) (obj)).printStackTrace();
                    }
                }
                datasaverresponse.setSavedSuccessfully(Boolean.valueOf(true));
                if (Mint.mintCallback != null)
                {
                    Mint.mintCallback.dataSaverResponse(datasaverresponse);
                }
                throw exception;
                exception;
                obj = obj3;
                if (true) goto _L4; else goto _L3
_L3:
                IOException ioexception;
                ioexception;
                exception = ((Exception) (obj3));
                obj3 = ioexception;
                  goto _L5
            }

            
            {
                this$0 = DataSaver.this;
                jsonData = s;
                super();
            }
        });
        if (getExecutor() != null)
        {
            getExecutor().execute(jsonData);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        jsonData;
        throw jsonData;
    }


}
