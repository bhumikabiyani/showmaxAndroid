// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzr, OpenContentsRequest, zzbe, zzag, 
//            CloseContentsAndUpdateMetadataRequest, zzbl, zzw, CloseContentsRequest

public class zzs
    implements DriveContents
{

    private boolean mClosed;
    private final Contents zzTO;
    private boolean zzTP;
    private boolean zzTQ;

    public zzs(Contents contents)
    {
        mClosed = false;
        zzTP = false;
        zzTQ = false;
        zzTO = (Contents)zzx.zzl(contents);
    }

    static Contents zza(zzs zzs1)
    {
        return zzs1.zzTO;
    }

    public PendingResult commit(GoogleApiClient googleapiclient, MetadataChangeSet metadatachangeset)
    {
        return commit(googleapiclient, metadatachangeset, null);
    }

    public PendingResult commit(GoogleApiClient googleapiclient, MetadataChangeSet metadatachangeset, ExecutionOptions executionoptions)
    {
        ExecutionOptions executionoptions1 = executionoptions;
        if (executionoptions == null)
        {
            executionoptions1 = (new com.google.android.gms.drive.ExecutionOptions.Builder()).build();
        }
        if (zzTO.getMode() == 0x10000000)
        {
            throw new IllegalStateException("Cannot commit contents opened with MODE_READ_ONLY");
        }
        if (ExecutionOptions.zzbl(executionoptions1.zzkv()) && !zzTO.zzko())
        {
            throw new IllegalStateException("DriveContents must be valid for conflict detection.");
        }
        ExecutionOptions.zza(googleapiclient, executionoptions1);
        if (zzks())
        {
            throw new IllegalStateException("DriveContents already closed.");
        }
        if (getDriveId() == null)
        {
            throw new IllegalStateException("Only DriveContents obtained through DriveFile.open can be committed.");
        }
        if (metadatachangeset == null)
        {
            metadatachangeset = MetadataChangeSet.zzSv;
        }
        zzkr();
        return googleapiclient.zzb(new zzq.zza(googleapiclient, metadatachangeset, executionoptions1) {

            final zzs zzTR;
            final MetadataChangeSet zzTS;
            final ExecutionOptions zzTT;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzTS.zzkx().setContext(zzr1.getContext());
                zzr1.zzkF().zza(new CloseContentsAndUpdateMetadataRequest(zzs.zza(zzTR).getDriveId(), zzTS.zzkx(), zzs.zza(zzTR), zzTT), new zzbl(this));
            }

            
            {
                zzTR = zzs.this;
                zzTS = metadatachangeset;
                zzTT = executionoptions;
                super(googleapiclient);
            }
        });
    }

    public void discard(GoogleApiClient googleapiclient)
    {
        if (zzks())
        {
            throw new IllegalStateException("DriveContents already closed.");
        } else
        {
            zzkr();
            ((_cls4)googleapiclient.zzb(new zzq.zza(googleapiclient) {

                final zzs zzTR;

                protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                    throws RemoteException
                {
                    zza((zzr)zza1);
                }

                protected void zza(zzr zzr1)
                    throws RemoteException
                {
                    zzr1.zzkF().zza(new CloseContentsRequest(zzs.zza(zzTR), false), new zzbl(this));
                }

            
            {
                zzTR = zzs.this;
                super(googleapiclient);
            }
            })).setResultCallback(new ResultCallback() {

                final zzs zzTR;

                public void onResult(Result result)
                {
                    zzi((Status)result);
                }

                public void zzi(Status status)
                {
                    if (!status.isSuccess())
                    {
                        zzw.zzs("DriveContentsImpl", "Error discarding contents");
                        return;
                    } else
                    {
                        zzw.zzq("DriveContentsImpl", "Contents discarded");
                        return;
                    }
                }

            
            {
                zzTR = zzs.this;
                super();
            }
            });
            return;
        }
    }

    public DriveId getDriveId()
    {
        return zzTO.getDriveId();
    }

    public InputStream getInputStream()
    {
        if (zzks())
        {
            throw new IllegalStateException("Contents have been closed, cannot access the input stream.");
        }
        if (zzTO.getMode() != 0x10000000)
        {
            throw new IllegalStateException("getInputStream() can only be used with contents opened with MODE_READ_ONLY.");
        }
        if (zzTP)
        {
            throw new IllegalStateException("getInputStream() can only be called once per Contents instance.");
        } else
        {
            zzTP = true;
            return zzTO.getInputStream();
        }
    }

    public int getMode()
    {
        return zzTO.getMode();
    }

    public OutputStream getOutputStream()
    {
        if (zzks())
        {
            throw new IllegalStateException("Contents have been closed, cannot access the output stream.");
        }
        if (zzTO.getMode() != 0x20000000)
        {
            throw new IllegalStateException("getOutputStream() can only be used with contents opened with MODE_WRITE_ONLY.");
        }
        if (zzTQ)
        {
            throw new IllegalStateException("getOutputStream() can only be called once per Contents instance.");
        } else
        {
            zzTQ = true;
            return zzTO.getOutputStream();
        }
    }

    public ParcelFileDescriptor getParcelFileDescriptor()
    {
        if (zzks())
        {
            throw new IllegalStateException("Contents have been closed, cannot access the output stream.");
        } else
        {
            return zzTO.getParcelFileDescriptor();
        }
    }

    public PendingResult reopenForWrite(GoogleApiClient googleapiclient)
    {
        if (zzks())
        {
            throw new IllegalStateException("DriveContents already closed.");
        }
        if (zzTO.getMode() != 0x10000000)
        {
            throw new IllegalStateException("reopenForWrite can only be used with DriveContents opened with MODE_READ_ONLY.");
        } else
        {
            zzkr();
            return googleapiclient.zza(new zzp.zzb(googleapiclient) {

                final zzs zzTR;

                protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                    throws RemoteException
                {
                    zza((zzr)zza1);
                }

                protected void zza(zzr zzr1)
                    throws RemoteException
                {
                    zzr1.zzkF().zza(new OpenContentsRequest(zzTR.getDriveId(), 0x20000000, zzs.zza(zzTR).getRequestId()), new zzbe(this, null));
                }

            
            {
                zzTR = zzs.this;
                super(googleapiclient);
            }
            });
        }
    }

    public Contents zzkq()
    {
        return zzTO;
    }

    public void zzkr()
    {
        mClosed = true;
    }

    public boolean zzks()
    {
        return mClosed;
    }
}
