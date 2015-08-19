// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.util;

import java.lang.reflect.Array;
import java.util.Arrays;

public class SortedList
{
    public static class BatchedCallback extends Callback
    {

        static final int TYPE_ADD = 1;
        static final int TYPE_CHANGE = 3;
        static final int TYPE_MOVE = 4;
        static final int TYPE_NONE = 0;
        static final int TYPE_REMOVE = 2;
        int mLastEventCount;
        int mLastEventPosition;
        int mLastEventType;
        private final Callback mWrappedCallback;

        public boolean areContentsTheSame(Object obj, Object obj1)
        {
            return mWrappedCallback.areContentsTheSame(obj, obj1);
        }

        public boolean areItemsTheSame(Object obj, Object obj1)
        {
            return mWrappedCallback.areItemsTheSame(obj, obj1);
        }

        public int compare(Object obj, Object obj1)
        {
            return mWrappedCallback.compare(obj, obj1);
        }

        public void dispatchLastEvent()
        {
            if (mLastEventType == 0)
            {
                return;
            }
            mLastEventType;
            JVM INSTR tableswitch 1 3: default 40
        //                       1 46
        //                       2 64
        //                       3 82;
               goto _L1 _L2 _L3 _L4
_L1:
            mLastEventType = 0;
            return;
_L2:
            mWrappedCallback.onInserted(mLastEventPosition, mLastEventCount);
            continue; /* Loop/switch isn't completed */
_L3:
            mWrappedCallback.onRemoved(mLastEventPosition, mLastEventCount);
            continue; /* Loop/switch isn't completed */
_L4:
            mWrappedCallback.onChanged(mLastEventPosition, mLastEventCount);
            if (true) goto _L1; else goto _L5
_L5:
        }

        public void onChanged(int i, int j)
        {
            if (mLastEventType == 3 && i <= mLastEventPosition + mLastEventCount && i + j >= mLastEventPosition)
            {
                int k = mLastEventPosition;
                int l = mLastEventCount;
                mLastEventPosition = Math.min(i, mLastEventPosition);
                mLastEventCount = Math.max(k + l, i + j) - mLastEventPosition;
                return;
            } else
            {
                dispatchLastEvent();
                mLastEventPosition = i;
                mLastEventCount = j;
                mLastEventType = 3;
                return;
            }
        }

        public void onInserted(int i, int j)
        {
            if (mLastEventType == 1 && i >= mLastEventPosition && i <= mLastEventPosition + mLastEventCount)
            {
                mLastEventCount = mLastEventCount + j;
                mLastEventPosition = Math.min(i, mLastEventPosition);
                return;
            } else
            {
                dispatchLastEvent();
                mLastEventPosition = i;
                mLastEventCount = j;
                mLastEventType = 1;
                return;
            }
        }

        public void onMoved(int i, int j)
        {
            dispatchLastEvent();
            mWrappedCallback.onMoved(i, j);
        }

        public void onRemoved(int i, int j)
        {
            if (mLastEventType == 2 && mLastEventPosition == i)
            {
                mLastEventCount = mLastEventCount + j;
                return;
            } else
            {
                dispatchLastEvent();
                mLastEventPosition = i;
                mLastEventCount = j;
                mLastEventType = 2;
                return;
            }
        }


        public BatchedCallback(Callback callback)
        {
            mLastEventType = 0;
            mLastEventPosition = -1;
            mLastEventCount = -1;
            mWrappedCallback = callback;
        }
    }

    public static abstract class Callback
    {

        public abstract boolean areContentsTheSame(Object obj, Object obj1);

        public abstract boolean areItemsTheSame(Object obj, Object obj1);

        public abstract int compare(Object obj, Object obj1);

        public abstract void onChanged(int i, int j);

        public abstract void onInserted(int i, int j);

        public abstract void onMoved(int i, int j);

        public abstract void onRemoved(int i, int j);

        public Callback()
        {
        }
    }


    private static final int CAPACITY_GROWTH = 10;
    private static final int DELETION = 2;
    private static final int INSERTION = 1;
    public static final int INVALID_POSITION = -1;
    private static final int LOOKUP = 4;
    private static final int MIN_CAPACITY = 10;
    private BatchedCallback mBatchedCallback;
    private Callback mCallback;
    Object mData[];
    private int mSize;
    private final Class mTClass;

    public SortedList(Class class1, Callback callback)
    {
        this(class1, callback, 10);
    }

    public SortedList(Class class1, Callback callback, int i)
    {
        mTClass = class1;
        mData = (Object[])(Object[])Array.newInstance(class1, i);
        mCallback = callback;
        mSize = 0;
    }

    private int add(Object obj, boolean flag)
    {
        int j = findIndexOf(obj, 1);
        int i;
        if (j == -1)
        {
            i = 0;
        } else
        {
            i = j;
            if (j < mSize)
            {
                Object obj1 = mData[j];
                i = j;
                if (mCallback.areItemsTheSame(obj1, obj))
                {
                    if (mCallback.areContentsTheSame(obj1, obj))
                    {
                        mData[j] = obj;
                        return j;
                    } else
                    {
                        mData[j] = obj;
                        mCallback.onChanged(j, 1);
                        return j;
                    }
                }
            }
        }
        addToData(i, obj);
        if (flag)
        {
            mCallback.onInserted(i, 1);
        }
        return i;
    }

    private void addToData(int i, Object obj)
    {
        if (i > mSize)
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("cannot add item to ").append(i).append(" because size is ").append(mSize).toString());
        }
        if (mSize == mData.length)
        {
            Object aobj[] = (Object[])(Object[])Array.newInstance(mTClass, mData.length + 10);
            System.arraycopy(((Object) (mData)), 0, ((Object) (aobj)), 0, i);
            aobj[i] = obj;
            System.arraycopy(((Object) (mData)), i, ((Object) (aobj)), i + 1, mSize - i);
            mData = aobj;
        } else
        {
            System.arraycopy(((Object) (mData)), i, ((Object) (mData)), i + 1, mSize - i);
            mData[i] = obj;
        }
        mSize = mSize + 1;
    }

    private int findIndexOf(Object obj, int i)
    {
        int j = 0;
        int k = mSize;
        do
        {
            if (j >= k)
            {
                break;
            }
            int l = (j + k) / 2;
            Object obj1 = mData[l];
            int i1 = mCallback.compare(obj1, obj);
            if (i1 < 0)
            {
                j = l + 1;
                continue;
            }
            if (i1 == 0)
            {
                if (!mCallback.areItemsTheSame(obj1, obj))
                {
                    j = linearEqualitySearch(obj, l, j, k);
                    if (i == 1)
                    {
                        if (j != -1)
                        {
                            return j;
                        }
                    } else
                    {
                        return j;
                    }
                }
                return l;
            }
            k = l;
        } while (true);
        if (i != 1)
        {
            j = -1;
        }
        return j;
    }

    private int linearEqualitySearch(Object obj, int i, int j, int k)
    {
        int l = i - 1;
_L4:
        if (l < j) goto _L2; else goto _L1
_L1:
        Object obj1 = mData[l];
        if (mCallback.compare(obj1, obj) == 0) goto _L3; else goto _L2
_L2:
        i++;
_L5:
        if (i < k)
        {
            obj1 = mData[i];
            if (mCallback.compare(obj1, obj) == 0)
            {
                break MISSING_BLOCK_LABEL_91;
            }
        }
        return -1;
_L3:
        if (mCallback.areItemsTheSame(obj1, obj))
        {
            return l;
        }
        l--;
          goto _L4
        if (mCallback.areItemsTheSame(obj1, obj))
        {
            return i;
        }
        i++;
          goto _L5
    }

    private boolean remove(Object obj, boolean flag)
    {
        int i = findIndexOf(obj, 2);
        if (i == -1)
        {
            return false;
        } else
        {
            removeItemAtIndex(i, flag);
            return true;
        }
    }

    private void removeItemAtIndex(int i, boolean flag)
    {
        System.arraycopy(((Object) (mData)), i + 1, ((Object) (mData)), i, mSize - i - 1);
        mSize = mSize - 1;
        mData[mSize] = null;
        if (flag)
        {
            mCallback.onRemoved(i, 1);
        }
    }

    public int add(Object obj)
    {
        return add(obj, true);
    }

    public void beginBatchedUpdates()
    {
        if (mCallback instanceof BatchedCallback)
        {
            return;
        }
        if (mBatchedCallback == null)
        {
            mBatchedCallback = new BatchedCallback(mCallback);
        }
        mCallback = mBatchedCallback;
    }

    public void clear()
    {
        if (mSize == 0)
        {
            return;
        } else
        {
            int i = mSize;
            Arrays.fill(mData, 0, i, null);
            mSize = 0;
            mCallback.onRemoved(0, i);
            return;
        }
    }

    public void endBatchedUpdates()
    {
        if (mCallback instanceof BatchedCallback)
        {
            ((BatchedCallback)mCallback).dispatchLastEvent();
        }
        if (mCallback == mBatchedCallback)
        {
            mCallback = mBatchedCallback.mWrappedCallback;
        }
    }

    public Object get(int i)
        throws IndexOutOfBoundsException
    {
        if (i >= mSize || i < 0)
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Asked to get item at ").append(i).append(" but size is ").append(mSize).toString());
        } else
        {
            return mData[i];
        }
    }

    public int indexOf(Object obj)
    {
        return findIndexOf(obj, 4);
    }

    public void recalculatePositionOfItemAt(int i)
    {
        Object obj = get(i);
        removeItemAtIndex(i, false);
        int j = add(obj, false);
        if (i != j)
        {
            mCallback.onMoved(i, j);
        }
    }

    public boolean remove(Object obj)
    {
        return remove(obj, true);
    }

    public Object removeItemAt(int i)
    {
        Object obj = get(i);
        removeItemAtIndex(i, true);
        return obj;
    }

    public int size()
    {
        return mSize;
    }

    public void updateItemAt(int i, Object obj)
    {
        Object obj1 = get(i);
        boolean flag;
        if (obj1 == obj || !mCallback.areContentsTheSame(obj1, obj))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (obj1 != obj && mCallback.compare(obj1, obj) == 0)
        {
            mData[i] = obj;
            if (flag)
            {
                mCallback.onChanged(i, 1);
            }
        } else
        {
            if (flag)
            {
                mCallback.onChanged(i, 1);
            }
            removeItemAtIndex(i, false);
            int j = add(obj, false);
            if (i != j)
            {
                mCallback.onMoved(i, j);
                return;
            }
        }
    }
}
