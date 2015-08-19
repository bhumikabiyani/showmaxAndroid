// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.content.IntentSender;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.drive.RealtimeDocumentSyncRequest;
import com.google.android.gms.drive.execution.internal.GetContentTransferInfoRequest;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzag, GetMetadataRequest, QueryRequest, UpdateMetadataRequest, 
//            CreateContentsRequest, CreateFileRequest, CreateFolderRequest, OpenContentsRequest, 
//            CloseContentsRequest, OpenFileIntentSenderRequest, CreateFileIntentSenderRequest, AuthorizeAccessRequest, 
//            ListParentsRequest, AddEventListenerRequest, RemoveEventListenerRequest, DisconnectRequest, 
//            TrashResourceRequest, CloseContentsAndUpdateMetadataRequest, DeleteResourceRequest, LoadRealtimeRequest, 
//            SetResourceParentsRequest, GetDriveIdFromUniqueIdentifierRequest, CheckResourceIdsExistRequest, SetDrivePreferencesRequest, 
//            SetFileUploadPreferencesRequest, CancelPendingActionsRequest, UntrashResourceRequest, FetchThumbnailRequest, 
//            GetChangesRequest, UnsubscribeResourceRequest, zzah, zzai

public static abstract class zza.zzle extends Binder
    implements zzag
{
    private static class zza
        implements zzag
    {

        private IBinder zzle;

        public IBinder asBinder()
        {
            return zzle;
        }

        public IntentSender zza(CreateFileIntentSenderRequest createfileintentsenderrequest)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (createfileintentsenderrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            createfileintentsenderrequest.writeToParcel(parcel, 0);
_L3:
            zzle.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            createfileintentsenderrequest = (IntentSender)IntentSender.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return createfileintentsenderrequest;
_L2:
            parcel.writeInt(0);
              goto _L3
            createfileintentsenderrequest;
            parcel1.recycle();
            parcel.recycle();
            throw createfileintentsenderrequest;
            createfileintentsenderrequest = null;
              goto _L4
        }

        public IntentSender zza(OpenFileIntentSenderRequest openfileintentsenderrequest)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (openfileintentsenderrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            openfileintentsenderrequest.writeToParcel(parcel, 0);
_L3:
            zzle.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            openfileintentsenderrequest = (IntentSender)IntentSender.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return openfileintentsenderrequest;
_L2:
            parcel.writeInt(0);
              goto _L3
            openfileintentsenderrequest;
            parcel1.recycle();
            parcel.recycle();
            throw openfileintentsenderrequest;
            openfileintentsenderrequest = null;
              goto _L4
        }

        public void zza(RealtimeDocumentSyncRequest realtimedocumentsyncrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (realtimedocumentsyncrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            realtimedocumentsyncrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            realtimedocumentsyncrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(realtimedocumentsyncrequest);
            zzle.transact(34, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            realtimedocumentsyncrequest;
            parcel1.recycle();
            parcel.recycle();
            throw realtimedocumentsyncrequest;
            realtimedocumentsyncrequest = null;
              goto _L4
        }

        public void zza(GetContentTransferInfoRequest getcontenttransferinforequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (getcontenttransferinforequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            getcontenttransferinforequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            getcontenttransferinforequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(getcontenttransferinforequest);
            zzle.transact(45, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            getcontenttransferinforequest;
            parcel1.recycle();
            parcel.recycle();
            throw getcontenttransferinforequest;
            getcontenttransferinforequest = null;
              goto _L4
        }

        public void zza(AddEventListenerRequest addeventlistenerrequest, zzai zzai1, String s, zzah zzah1)
            throws RemoteException
        {
            Object obj;
            Parcel parcel;
            Parcel parcel1;
            obj = null;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (addeventlistenerrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            addeventlistenerrequest.writeToParcel(parcel, 0);
_L3:
            if (zzai1 == null)
            {
                break MISSING_BLOCK_LABEL_137;
            }
            addeventlistenerrequest = zzai1.asBinder();
_L4:
            parcel.writeStrongBinder(addeventlistenerrequest);
            parcel.writeString(s);
            addeventlistenerrequest = obj;
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_76;
            }
            addeventlistenerrequest = zzah1.asBinder();
            parcel.writeStrongBinder(addeventlistenerrequest);
            zzle.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            addeventlistenerrequest;
            parcel1.recycle();
            parcel.recycle();
            throw addeventlistenerrequest;
            addeventlistenerrequest = null;
              goto _L4
        }

        public void zza(AuthorizeAccessRequest authorizeaccessrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (authorizeaccessrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            authorizeaccessrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            authorizeaccessrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(authorizeaccessrequest);
            zzle.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            authorizeaccessrequest;
            parcel1.recycle();
            parcel.recycle();
            throw authorizeaccessrequest;
            authorizeaccessrequest = null;
              goto _L4
        }

        public void zza(CancelPendingActionsRequest cancelpendingactionsrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (cancelpendingactionsrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            cancelpendingactionsrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            cancelpendingactionsrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(cancelpendingactionsrequest);
            zzle.transact(37, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            cancelpendingactionsrequest;
            parcel1.recycle();
            parcel.recycle();
            throw cancelpendingactionsrequest;
            cancelpendingactionsrequest = null;
              goto _L4
        }

        public void zza(CheckResourceIdsExistRequest checkresourceidsexistrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (checkresourceidsexistrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            checkresourceidsexistrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            checkresourceidsexistrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(checkresourceidsexistrequest);
            zzle.transact(30, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            checkresourceidsexistrequest;
            parcel1.recycle();
            parcel.recycle();
            throw checkresourceidsexistrequest;
            checkresourceidsexistrequest = null;
              goto _L4
        }

        public void zza(CloseContentsAndUpdateMetadataRequest closecontentsandupdatemetadatarequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (closecontentsandupdatemetadatarequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            closecontentsandupdatemetadatarequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            closecontentsandupdatemetadatarequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(closecontentsandupdatemetadatarequest);
            zzle.transact(18, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            closecontentsandupdatemetadatarequest;
            parcel1.recycle();
            parcel.recycle();
            throw closecontentsandupdatemetadatarequest;
            closecontentsandupdatemetadatarequest = null;
              goto _L4
        }

        public void zza(CloseContentsRequest closecontentsrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (closecontentsrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            closecontentsrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            closecontentsrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(closecontentsrequest);
            zzle.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            closecontentsrequest;
            parcel1.recycle();
            parcel.recycle();
            throw closecontentsrequest;
            closecontentsrequest = null;
              goto _L4
        }

        public void zza(CreateContentsRequest createcontentsrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (createcontentsrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            createcontentsrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            createcontentsrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(createcontentsrequest);
            zzle.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            createcontentsrequest;
            parcel1.recycle();
            parcel.recycle();
            throw createcontentsrequest;
            createcontentsrequest = null;
              goto _L4
        }

        public void zza(CreateFileRequest createfilerequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (createfilerequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            createfilerequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            createfilerequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(createfilerequest);
            zzle.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            createfilerequest;
            parcel1.recycle();
            parcel.recycle();
            throw createfilerequest;
            createfilerequest = null;
              goto _L4
        }

        public void zza(CreateFolderRequest createfolderrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (createfolderrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            createfolderrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            createfolderrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(createfolderrequest);
            zzle.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            createfolderrequest;
            parcel1.recycle();
            parcel.recycle();
            throw createfolderrequest;
            createfolderrequest = null;
              goto _L4
        }

        public void zza(DeleteResourceRequest deleteresourcerequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (deleteresourcerequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            deleteresourcerequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            deleteresourcerequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(deleteresourcerequest);
            zzle.transact(24, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            deleteresourcerequest;
            parcel1.recycle();
            parcel.recycle();
            throw deleteresourcerequest;
            deleteresourcerequest = null;
              goto _L4
        }

        public void zza(DisconnectRequest disconnectrequest)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (disconnectrequest == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            disconnectrequest.writeToParcel(parcel, 0);
_L1:
            zzle.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            disconnectrequest;
            parcel1.recycle();
            parcel.recycle();
            throw disconnectrequest;
        }

        public void zza(FetchThumbnailRequest fetchthumbnailrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (fetchthumbnailrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            fetchthumbnailrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            fetchthumbnailrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(fetchthumbnailrequest);
            zzle.transact(42, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            fetchthumbnailrequest;
            parcel1.recycle();
            parcel.recycle();
            throw fetchthumbnailrequest;
            fetchthumbnailrequest = null;
              goto _L4
        }

        public void zza(GetChangesRequest getchangesrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (getchangesrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            getchangesrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            getchangesrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(getchangesrequest);
            zzle.transact(44, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            getchangesrequest;
            parcel1.recycle();
            parcel.recycle();
            throw getchangesrequest;
            getchangesrequest = null;
              goto _L4
        }

        public void zza(GetDriveIdFromUniqueIdentifierRequest getdriveidfromuniqueidentifierrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (getdriveidfromuniqueidentifierrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            getdriveidfromuniqueidentifierrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            getdriveidfromuniqueidentifierrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(getdriveidfromuniqueidentifierrequest);
            zzle.transact(29, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            getdriveidfromuniqueidentifierrequest;
            parcel1.recycle();
            parcel.recycle();
            throw getdriveidfromuniqueidentifierrequest;
            getdriveidfromuniqueidentifierrequest = null;
              goto _L4
        }

        public void zza(GetMetadataRequest getmetadatarequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (getmetadatarequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            getmetadatarequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            getmetadatarequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(getmetadatarequest);
            zzle.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            getmetadatarequest;
            parcel1.recycle();
            parcel.recycle();
            throw getmetadatarequest;
            getmetadatarequest = null;
              goto _L4
        }

        public void zza(ListParentsRequest listparentsrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (listparentsrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            listparentsrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            listparentsrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(listparentsrequest);
            zzle.transact(13, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            listparentsrequest;
            parcel1.recycle();
            parcel.recycle();
            throw listparentsrequest;
            listparentsrequest = null;
              goto _L4
        }

        public void zza(LoadRealtimeRequest loadrealtimerequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (loadrealtimerequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            loadrealtimerequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            loadrealtimerequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(loadrealtimerequest);
            zzle.transact(27, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            loadrealtimerequest;
            parcel1.recycle();
            parcel.recycle();
            throw loadrealtimerequest;
            loadrealtimerequest = null;
              goto _L4
        }

        public void zza(OpenContentsRequest opencontentsrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (opencontentsrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            opencontentsrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            opencontentsrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(opencontentsrequest);
            zzle.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            opencontentsrequest;
            parcel1.recycle();
            parcel.recycle();
            throw opencontentsrequest;
            opencontentsrequest = null;
              goto _L4
        }

        public void zza(QueryRequest queryrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (queryrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            queryrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            queryrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(queryrequest);
            zzle.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            queryrequest;
            parcel1.recycle();
            parcel.recycle();
            throw queryrequest;
            queryrequest = null;
              goto _L4
        }

        public void zza(QueryRequest queryrequest, zzai zzai1, zzai zzai2, zzah zzah1)
            throws RemoteException
        {
            Object obj;
            Parcel parcel;
            Parcel parcel1;
            obj = null;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (queryrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            queryrequest.writeToParcel(parcel, 0);
_L5:
            if (zzai1 == null) goto _L4; else goto _L3
_L3:
            queryrequest = zzai1.asBinder();
_L6:
            parcel.writeStrongBinder(queryrequest);
            if (zzai2 == null)
            {
                break MISSING_BLOCK_LABEL_153;
            }
            queryrequest = zzai2.asBinder();
_L7:
            parcel.writeStrongBinder(queryrequest);
            queryrequest = obj;
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_87;
            }
            queryrequest = zzah1.asBinder();
            parcel.writeStrongBinder(queryrequest);
            zzle.transact(39, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            queryrequest;
            parcel1.recycle();
            parcel.recycle();
            throw queryrequest;
_L4:
            queryrequest = null;
              goto _L6
            queryrequest = null;
              goto _L7
        }

        public void zza(RemoveEventListenerRequest removeeventlistenerrequest, zzai zzai1, String s, zzah zzah1)
            throws RemoteException
        {
            Object obj;
            Parcel parcel;
            Parcel parcel1;
            obj = null;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (removeeventlistenerrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            removeeventlistenerrequest.writeToParcel(parcel, 0);
_L3:
            if (zzai1 == null)
            {
                break MISSING_BLOCK_LABEL_137;
            }
            removeeventlistenerrequest = zzai1.asBinder();
_L4:
            parcel.writeStrongBinder(removeeventlistenerrequest);
            parcel.writeString(s);
            removeeventlistenerrequest = obj;
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_76;
            }
            removeeventlistenerrequest = zzah1.asBinder();
            parcel.writeStrongBinder(removeeventlistenerrequest);
            zzle.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            removeeventlistenerrequest;
            parcel1.recycle();
            parcel.recycle();
            throw removeeventlistenerrequest;
            removeeventlistenerrequest = null;
              goto _L4
        }

        public void zza(SetDrivePreferencesRequest setdrivepreferencesrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (setdrivepreferencesrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            setdrivepreferencesrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            setdrivepreferencesrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(setdrivepreferencesrequest);
            zzle.transact(33, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            setdrivepreferencesrequest;
            parcel1.recycle();
            parcel.recycle();
            throw setdrivepreferencesrequest;
            setdrivepreferencesrequest = null;
              goto _L4
        }

        public void zza(SetFileUploadPreferencesRequest setfileuploadpreferencesrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (setfileuploadpreferencesrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            setfileuploadpreferencesrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            setfileuploadpreferencesrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(setfileuploadpreferencesrequest);
            zzle.transact(36, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            setfileuploadpreferencesrequest;
            parcel1.recycle();
            parcel.recycle();
            throw setfileuploadpreferencesrequest;
            setfileuploadpreferencesrequest = null;
              goto _L4
        }

        public void zza(SetResourceParentsRequest setresourceparentsrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (setresourceparentsrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            setresourceparentsrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            setresourceparentsrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(setresourceparentsrequest);
            zzle.transact(28, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            setresourceparentsrequest;
            parcel1.recycle();
            parcel.recycle();
            throw setresourceparentsrequest;
            setresourceparentsrequest = null;
              goto _L4
        }

        public void zza(TrashResourceRequest trashresourcerequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (trashresourcerequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            trashresourcerequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            trashresourcerequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(trashresourcerequest);
            zzle.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            trashresourcerequest;
            parcel1.recycle();
            parcel.recycle();
            throw trashresourcerequest;
            trashresourcerequest = null;
              goto _L4
        }

        public void zza(UnsubscribeResourceRequest unsubscriberesourcerequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (unsubscriberesourcerequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            unsubscriberesourcerequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            unsubscriberesourcerequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(unsubscriberesourcerequest);
            zzle.transact(46, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            unsubscriberesourcerequest;
            parcel1.recycle();
            parcel.recycle();
            throw unsubscriberesourcerequest;
            unsubscriberesourcerequest = null;
              goto _L4
        }

        public void zza(UntrashResourceRequest untrashresourcerequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (untrashresourcerequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            untrashresourcerequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            untrashresourcerequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(untrashresourcerequest);
            zzle.transact(38, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            untrashresourcerequest;
            parcel1.recycle();
            parcel.recycle();
            throw untrashresourcerequest;
            untrashresourcerequest = null;
              goto _L4
        }

        public void zza(UpdateMetadataRequest updatemetadatarequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (updatemetadatarequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            updatemetadatarequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            updatemetadatarequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(updatemetadatarequest);
            zzle.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            updatemetadatarequest;
            parcel1.recycle();
            parcel.recycle();
            throw updatemetadatarequest;
            updatemetadatarequest = null;
              goto _L4
        }

        public void zza(zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzah1 = zzah1.asBinder();
_L1:
            parcel.writeStrongBinder(zzah1);
            zzle.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzah1 = null;
              goto _L1
            zzah1;
            parcel1.recycle();
            parcel.recycle();
            throw zzah1;
        }

        public void zza(zzai zzai1, zzah zzah1)
            throws RemoteException
        {
            Object obj;
            Parcel parcel;
            Parcel parcel1;
            obj = null;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (zzai1 == null)
            {
                break MISSING_BLOCK_LABEL_88;
            }
            zzai1 = zzai1.asBinder();
_L1:
            parcel.writeStrongBinder(zzai1);
            zzai1 = obj;
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_49;
            }
            zzai1 = zzah1.asBinder();
            parcel.writeStrongBinder(zzai1);
            zzle.transact(40, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzai1 = null;
              goto _L1
            zzai1;
            parcel1.recycle();
            parcel.recycle();
            throw zzai1;
        }

        public void zzb(QueryRequest queryrequest, zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (queryrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            queryrequest.writeToParcel(parcel, 0);
_L3:
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            queryrequest = zzah1.asBinder();
_L4:
            parcel.writeStrongBinder(queryrequest);
            zzle.transact(19, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            queryrequest;
            parcel1.recycle();
            parcel.recycle();
            throw queryrequest;
            queryrequest = null;
              goto _L4
        }

        public void zzb(zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzah1 = zzah1.asBinder();
_L1:
            parcel.writeStrongBinder(zzah1);
            zzle.transact(20, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzah1 = null;
              goto _L1
            zzah1;
            parcel1.recycle();
            parcel.recycle();
            throw zzah1;
        }

        public void zzc(zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzah1 = zzah1.asBinder();
_L1:
            parcel.writeStrongBinder(zzah1);
            zzle.transact(21, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzah1 = null;
              goto _L1
            zzah1;
            parcel1.recycle();
            parcel.recycle();
            throw zzah1;
        }

        public void zzd(zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzah1 = zzah1.asBinder();
_L1:
            parcel.writeStrongBinder(zzah1);
            zzle.transact(22, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzah1 = null;
              goto _L1
            zzah1;
            parcel1.recycle();
            parcel.recycle();
            throw zzah1;
        }

        public void zze(zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzah1 = zzah1.asBinder();
_L1:
            parcel.writeStrongBinder(zzah1);
            zzle.transact(23, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzah1 = null;
              goto _L1
            zzah1;
            parcel1.recycle();
            parcel.recycle();
            throw zzah1;
        }

        public void zzf(zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzah1 = zzah1.asBinder();
_L1:
            parcel.writeStrongBinder(zzah1);
            zzle.transact(31, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzah1 = null;
              goto _L1
            zzah1;
            parcel1.recycle();
            parcel.recycle();
            throw zzah1;
        }

        public void zzg(zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzah1 = zzah1.asBinder();
_L1:
            parcel.writeStrongBinder(zzah1);
            zzle.transact(32, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzah1 = null;
              goto _L1
            zzah1;
            parcel1.recycle();
            parcel.recycle();
            throw zzah1;
        }

        public void zzh(zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzah1 = zzah1.asBinder();
_L1:
            parcel.writeStrongBinder(zzah1);
            zzle.transact(35, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzah1 = null;
              goto _L1
            zzah1;
            parcel1.recycle();
            parcel.recycle();
            throw zzah1;
        }

        public void zzi(zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzah1 = zzah1.asBinder();
_L1:
            parcel.writeStrongBinder(zzah1);
            zzle.transact(41, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzah1 = null;
              goto _L1
            zzah1;
            parcel1.recycle();
            parcel.recycle();
            throw zzah1;
        }

        public void zzj(zzah zzah1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (zzah1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzah1 = zzah1.asBinder();
_L1:
            parcel.writeStrongBinder(zzah1);
            zzle.transact(43, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzah1 = null;
              goto _L1
            zzah1;
            parcel1.recycle();
            parcel.recycle();
            throw zzah1;
        }

        zza(IBinder ibinder)
        {
            zzle = ibinder;
        }
    }


    public static zzag zzac(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.drive.internal.IDriveService");
        if (iinterface != null && (iinterface instanceof zzag))
        {
            return (zzag)iinterface;
        } else
        {
            return new zza(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        throws RemoteException
    {
        Object obj1 = null;
        Object obj2 = null;
        Object obj3 = null;
        Object obj4 = null;
        Object obj5 = null;
        Object obj6 = null;
        Object obj7 = null;
        Object obj8 = null;
        Object obj9 = null;
        Object obj10 = null;
        Object obj11 = null;
        Object obj12 = null;
        Object obj13 = null;
        Object obj14 = null;
        Object obj15 = null;
        Object obj16 = null;
        Object obj17 = null;
        Object obj18 = null;
        Object obj19 = null;
        Object obj20 = null;
        Object obj21 = null;
        Object obj22 = null;
        Object obj23 = null;
        Object obj24 = null;
        Object obj25 = null;
        Object obj26 = null;
        Object obj27 = null;
        Object obj28 = null;
        Object obj29 = null;
        Object obj30 = null;
        Object obj31 = null;
        Object obj32 = null;
        Object obj = null;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.drive.internal.IDriveService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            if (parcel.readInt() != 0)
            {
                obj = (GetMetadataRequest)GetMetadataRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((GetMetadataRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj1;
            if (parcel.readInt() != 0)
            {
                obj = (QueryRequest)QueryRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((QueryRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj2;
            if (parcel.readInt() != 0)
            {
                obj = (UpdateMetadataRequest)UpdateMetadataRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((UpdateMetadataRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj3;
            if (parcel.readInt() != 0)
            {
                obj = (CreateContentsRequest)CreateContentsRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((CreateContentsRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj4;
            if (parcel.readInt() != 0)
            {
                obj = (CreateFileRequest)CreateFileRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((CreateFileRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj5;
            if (parcel.readInt() != 0)
            {
                obj = (CreateFolderRequest)CreateFolderRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((CreateFolderRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 7: // '\007'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj6;
            if (parcel.readInt() != 0)
            {
                obj = (OpenContentsRequest)OpenContentsRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((OpenContentsRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 8: // '\b'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj7;
            if (parcel.readInt() != 0)
            {
                obj = (CloseContentsRequest)CloseContentsRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((CloseContentsRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 9: // '\t'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            zza(zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 10: // '\n'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj8;
            if (parcel.readInt() != 0)
            {
                obj = (OpenFileIntentSenderRequest)OpenFileIntentSenderRequest.CREATOR.createFromParcel(parcel);
            }
            parcel = zza(((OpenFileIntentSenderRequest) (obj)));
            parcel1.writeNoException();
            if (parcel != null)
            {
                parcel1.writeInt(1);
                parcel.writeToParcel(parcel1, 1);
            } else
            {
                parcel1.writeInt(0);
            }
            return true;

        case 11: // '\013'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj9;
            if (parcel.readInt() != 0)
            {
                obj = (CreateFileIntentSenderRequest)CreateFileIntentSenderRequest.CREATOR.createFromParcel(parcel);
            }
            parcel = zza(((CreateFileIntentSenderRequest) (obj)));
            parcel1.writeNoException();
            if (parcel != null)
            {
                parcel1.writeInt(1);
                parcel.writeToParcel(parcel1, 1);
            } else
            {
                parcel1.writeInt(0);
            }
            return true;

        case 12: // '\f'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj10;
            if (parcel.readInt() != 0)
            {
                obj = (AuthorizeAccessRequest)AuthorizeAccessRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((AuthorizeAccessRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 13: // '\r'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj11;
            if (parcel.readInt() != 0)
            {
                obj = (ListParentsRequest)ListParentsRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((ListParentsRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 14: // '\016'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj12;
            if (parcel.readInt() != 0)
            {
                obj = (AddEventListenerRequest)AddEventListenerRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((AddEventListenerRequest) (obj)), zzae(parcel.readStrongBinder()), parcel.readString(), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 15: // '\017'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj13;
            if (parcel.readInt() != 0)
            {
                obj = (RemoveEventListenerRequest)RemoveEventListenerRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((RemoveEventListenerRequest) (obj)), zzae(parcel.readStrongBinder()), parcel.readString(), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 16: // '\020'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj14;
            if (parcel.readInt() != 0)
            {
                obj = (DisconnectRequest)DisconnectRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((DisconnectRequest) (obj)));
            parcel1.writeNoException();
            return true;

        case 17: // '\021'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj15;
            if (parcel.readInt() != 0)
            {
                obj = (TrashResourceRequest)TrashResourceRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((TrashResourceRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 18: // '\022'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj16;
            if (parcel.readInt() != 0)
            {
                obj = (CloseContentsAndUpdateMetadataRequest)CloseContentsAndUpdateMetadataRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((CloseContentsAndUpdateMetadataRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 19: // '\023'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj17;
            if (parcel.readInt() != 0)
            {
                obj = (QueryRequest)QueryRequest.CREATOR.createFromParcel(parcel);
            }
            zzb(((QueryRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 20: // '\024'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            zzb(zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 21: // '\025'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            zzc(zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 22: // '\026'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            zzd(zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 23: // '\027'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            zze(zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 24: // '\030'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj18;
            if (parcel.readInt() != 0)
            {
                obj = (DeleteResourceRequest)DeleteResourceRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((DeleteResourceRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 27: // '\033'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj19;
            if (parcel.readInt() != 0)
            {
                obj = (LoadRealtimeRequest)LoadRealtimeRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((LoadRealtimeRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 28: // '\034'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj20;
            if (parcel.readInt() != 0)
            {
                obj = (SetResourceParentsRequest)SetResourceParentsRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((SetResourceParentsRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 29: // '\035'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj21;
            if (parcel.readInt() != 0)
            {
                obj = (GetDriveIdFromUniqueIdentifierRequest)GetDriveIdFromUniqueIdentifierRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((GetDriveIdFromUniqueIdentifierRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 30: // '\036'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj22;
            if (parcel.readInt() != 0)
            {
                obj = (CheckResourceIdsExistRequest)CheckResourceIdsExistRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((CheckResourceIdsExistRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 31: // '\037'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            zzf(zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 32: // ' '
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            zzg(zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 33: // '!'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj23;
            if (parcel.readInt() != 0)
            {
                obj = (SetDrivePreferencesRequest)SetDrivePreferencesRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((SetDrivePreferencesRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 34: // '"'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj24;
            if (parcel.readInt() != 0)
            {
                obj = (RealtimeDocumentSyncRequest)RealtimeDocumentSyncRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((RealtimeDocumentSyncRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 35: // '#'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            zzh(zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 36: // '$'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj25;
            if (parcel.readInt() != 0)
            {
                obj = (SetFileUploadPreferencesRequest)SetFileUploadPreferencesRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((SetFileUploadPreferencesRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 37: // '%'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj26;
            if (parcel.readInt() != 0)
            {
                obj = (CancelPendingActionsRequest)CancelPendingActionsRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((CancelPendingActionsRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 38: // '&'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj27;
            if (parcel.readInt() != 0)
            {
                obj = (UntrashResourceRequest)UntrashResourceRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((UntrashResourceRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 39: // '\''
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj28;
            if (parcel.readInt() != 0)
            {
                obj = (QueryRequest)QueryRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((QueryRequest) (obj)), zzae(parcel.readStrongBinder()), zzae(parcel.readStrongBinder()), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 40: // '('
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            zza(zzae(parcel.readStrongBinder()), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 41: // ')'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            zzi(zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 42: // '*'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj29;
            if (parcel.readInt() != 0)
            {
                obj = (FetchThumbnailRequest)FetchThumbnailRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((FetchThumbnailRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 43: // '+'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            zzj(zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 44: // ','
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj30;
            if (parcel.readInt() != 0)
            {
                obj = (GetChangesRequest)GetChangesRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((GetChangesRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 45: // '-'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj31;
            if (parcel.readInt() != 0)
            {
                obj = (GetContentTransferInfoRequest)GetContentTransferInfoRequest.CREATOR.createFromParcel(parcel);
            }
            zza(((GetContentTransferInfoRequest) (obj)), zzad(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 46: // '.'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            obj = obj32;
            break;
        }
        if (parcel.readInt() != 0)
        {
            obj = (UnsubscribeResourceRequest)UnsubscribeResourceRequest.CREATOR.createFromParcel(parcel);
        }
        zza(((UnsubscribeResourceRequest) (obj)), zzad(parcel.readStrongBinder()));
        parcel1.writeNoException();
        return true;
    }
}
