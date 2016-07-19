.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;
.super Ljava/lang/Object;
.source "BookmarkBridge.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDelayedBookmarkCallbacks:Ljava/util/List;

.field private mIsDoingExtensiveChanges:Z

.field private mIsNativeBookmarkModelLoaded:Z

.field private mNativeBookmarkBridge:J

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private final mProfile:Lorg/chromium/chrome/browser/profiles/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mDelayedBookmarkCallbacks:Ljava/util/List;

    .line 31
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    .line 236
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 237
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    .line 238
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeIsDoingExtensiveChanges(J)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsDoingExtensiveChanges:Z

    .line 239
    return-void
.end method

.method private static addToBookmarkIdList(Ljava/util/List;JI)V
    .locals 1

    .prologue
    .line 809
    new-instance v0, Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    return-void
.end method

.method private static addToBookmarkIdListWithDepth(Ljava/util/List;JILjava/util/List;I)V
    .locals 1

    .prologue
    .line 815
    new-instance v0, Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    return-void
.end method

.method private static addToBookmarkMatchList(Ljava/util/List;JI[I[I[I[I)V
    .locals 5

    .prologue
    .line 824
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;

    new-instance v1, Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {v1, p1, p2, p3}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    invoke-static {p4, p5}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->createPairsList([I[I)Ljava/util/List;

    move-result-object v2

    invoke-static {p6, p7}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->createPairsList([I[I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    return-void
.end method

.method private static addToList(Ljava/util/List;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 0

    .prologue
    .line 804
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    return-void
.end method

.method private bookmarkAllUserNodesRemoved()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 745
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkAllUserNodesRemoved()V

    goto :goto_0

    .line 747
    :cond_0
    return-void
.end method

.method private bookmarkModelChanged()V
    .locals 2

    .prologue
    .line 780
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsDoingExtensiveChanges:Z

    if-eqz v0, :cond_1

    .line 785
    :cond_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 783
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkModelChanged()V

    goto :goto_0
.end method

.method private bookmarkModelDeleted()V
    .locals 0

    .prologue
    .line 712
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->destroy()V

    .line 713
    return-void
.end method

.method private bookmarkModelLoaded()V
    .locals 2

    .prologue
    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    .line 700
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->notifyBookmarkModelLoaded()V

    .line 702
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mDelayedBookmarkCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 703
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mDelayedBookmarkCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 704
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mDelayedBookmarkCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->callCallbackMethod()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;)V

    .line 703
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 706
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mDelayedBookmarkCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 708
    :cond_1
    return-void
.end method

.method private bookmarkNodeAdded(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;I)V
    .locals 2

    .prologue
    .line 727
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsDoingExtensiveChanges:Z

    if-eqz v0, :cond_1

    .line 732
    :cond_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 730
    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkNodeAdded(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;I)V

    goto :goto_0
.end method

.method private bookmarkNodeChanged(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 2

    .prologue
    .line 751
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsDoingExtensiveChanges:Z

    if-eqz v0, :cond_1

    .line 756
    :cond_0
    return-void

    .line 753
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 754
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkNodeChanged(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V

    goto :goto_0
.end method

.method private bookmarkNodeChildrenReordered(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 2

    .prologue
    .line 760
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsDoingExtensiveChanges:Z

    if-eqz v0, :cond_1

    .line 765
    :cond_0
    return-void

    .line 762
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 763
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkNodeChildrenReordered(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V

    goto :goto_0
.end method

.method private bookmarkNodeMoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;I)V
    .locals 2

    .prologue
    .line 718
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsDoingExtensiveChanges:Z

    if-eqz v0, :cond_1

    .line 723
    :cond_0
    return-void

    .line 720
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 721
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkNodeMoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;I)V

    goto :goto_0
.end method

.method private bookmarkNodeRemoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 3

    .prologue
    .line 736
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 737
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsDoingExtensiveChanges:Z

    invoke-virtual {v0, p1, p2, p3, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkNodeRemoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;Z)V

    goto :goto_0

    .line 740
    :cond_0
    return-void
.end method

.method private static createBookmarkItem(JILjava/lang/String;Ljava/lang/String;ZJIZZ)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;
    .locals 12

    .prologue
    .line 798
    new-instance v3, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    new-instance v4, Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {v4, p0, p1, p2}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    new-instance v8, Lorg/chromium/components/bookmarks/BookmarkId;

    move-wide/from16 v0, p6

    move/from16 v2, p8

    invoke-direct {v8, v0, v1, v2}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    const/4 v11, 0x0

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v3 .. v11}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/components/bookmarks/BookmarkId;ZZLorg/chromium/chrome/browser/bookmarks/BookmarkBridge$1;)V

    return-object v3
.end method

.method private static createPairsList([I[I)Ljava/util/List;
    .locals 5

    .prologue
    .line 830
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 831
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 832
    new-instance v2, Landroid/util/Pair;

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    :cond_0
    return-object v1
.end method

.method private editBookmarksEnabledChanged()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 790
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->editBookmarksEnabledChanged()V

    goto :goto_0

    .line 792
    :cond_0
    return-void
.end method

.method private extensiveBookmarkChangesBeginning()V
    .locals 1

    .prologue
    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsDoingExtensiveChanges:Z

    .line 770
    return-void
.end method

.method private extensiveBookmarkChangesEnded()V
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsDoingExtensiveChanges:Z

    .line 775
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->bookmarkModelChanged()V

    .line 776
    return-void
.end method

.method private native nativeAddBookmark(JLorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;
.end method

.method private native nativeAddFolder(JLorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;
.end method

.method private native nativeDeleteBookmark(JLorg/chromium/components/bookmarks/BookmarkId;)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeDoesBookmarkExist(JJI)Z
.end method

.method private native nativeEndGroupingUndos(J)V
.end method

.method private native nativeGetAllBookmarkIDsOrderedByCreationDate(JLjava/util/List;)V
.end method

.method private native nativeGetAllFoldersWithDepths(JLjava/util/List;Ljava/util/List;)V
.end method

.method private native nativeGetBookmarkByID(JJI)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;
.end method

.method private native nativeGetBookmarksForFolder(JLorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;Ljava/util/List;)V
.end method

.method private native nativeGetChildAt(JJII)Lorg/chromium/components/bookmarks/BookmarkId;
.end method

.method private native nativeGetChildCount(JJI)I
.end method

.method private native nativeGetChildIDs(JJIZZLjava/util/List;)V
.end method

.method private native nativeGetCurrentFolderHierarchy(JLorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;Ljava/util/List;)V
.end method

.method private native nativeGetDesktopFolderId(J)Lorg/chromium/components/bookmarks/BookmarkId;
.end method

.method private native nativeGetMobileFolderId(J)Lorg/chromium/components/bookmarks/BookmarkId;
.end method

.method private native nativeGetOtherFolderId(J)Lorg/chromium/components/bookmarks/BookmarkId;
.end method

.method private native nativeGetPermanentNodeIDs(JLjava/util/List;)V
.end method

.method private native nativeGetRootFolderId(J)Lorg/chromium/components/bookmarks/BookmarkId;
.end method

.method private native nativeGetTopLevelFolderIDs(JZZLjava/util/List;)V
.end method

.method private native nativeGetTopLevelFolderParentIDs(JLjava/util/List;)V
.end method

.method private native nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J
.end method

.method private native nativeIsDoingExtensiveChanges(J)Z
.end method

.method private static native nativeIsEditBookmarksEnabled(J)Z
.end method

.method private native nativeIsFolderVisible(JJI)Z
.end method

.method private native nativeLoadEmptyPartnerBookmarkShimForTesting(J)V
.end method

.method private native nativeMoveBookmark(JLorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/components/bookmarks/BookmarkId;I)V
.end method

.method private native nativeRemoveAllUserBookmarks(J)V
.end method

.method private native nativeSearchBookmarks(JLjava/util/List;Ljava/lang/String;I)V
.end method

.method private native nativeSetBookmarkTitle(JJILjava/lang/String;)V
.end method

.method private native nativeSetBookmarkUrl(JJILjava/lang/String;)V
.end method

.method private native nativeStartGroupingUndos(J)V
.end method

.method private native nativeUndo(J)V
.end method


# virtual methods
.method public addBookmark(Lorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 8

    .prologue
    .line 647
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 648
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 649
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 650
    :cond_2
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 652
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v6, p4

    .line 653
    :goto_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeAddBookmark(JLorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v6, p3

    goto :goto_0
.end method

.method public addFolder(Lorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 7

    .prologue
    .line 627
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 628
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 629
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 631
    :cond_2
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeAddFolder(JLorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    return-object v0
.end method

.method public addObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public deleteBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 2

    .prologue
    .line 593
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeDeleteBookmark(JLorg/chromium/components/bookmarks/BookmarkId;)V

    .line 594
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 245
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 246
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeDestroy(J)V

    .line 247
    iput-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    .line 249
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mDelayedBookmarkCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 252
    return-void
.end method

.method public doesBookmarkExist(Lorg/chromium/components/bookmarks/BookmarkId;)Z
    .locals 7

    .prologue
    .line 526
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 527
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeDoesBookmarkExist(JJI)Z

    move-result v0

    return v0
.end method

.method public endGroupingUndos()V
    .locals 2

    .prologue
    .line 676
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeEndGroupingUndos(J)V

    .line 677
    return-void
.end method

.method public getAllBookmarkIDsOrderedByCreationDate()Ljava/util/List;
    .locals 4

    .prologue
    .line 485
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 486
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetAllBookmarkIDsOrderedByCreationDate(JLjava/util/List;)V

    .line 488
    return-object v0
.end method

.method public getAllFoldersWithDepths(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 364
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 365
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetAllFoldersWithDepths(JLjava/util/List;Ljava/util/List;)V

    .line 366
    return-void
.end method

.method public getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;
    .locals 7

    .prologue
    .line 314
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 315
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetBookmarkByID(JJI)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    return-object v0
.end method

.method public getBookmarksForFolder(Lorg/chromium/components/bookmarks/BookmarkId;)Ljava/util/List;
    .locals 7

    .prologue
    .line 538
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 539
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 540
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetBookmarksForFolder(JLorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;Ljava/util/List;)V

    .line 541
    return-object v6
.end method

.method public getBookmarksForFolder(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;)V
    .locals 7

    .prologue
    .line 552
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-eqz v0, :cond_0

    .line 553
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetBookmarksForFolder(JLorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;Ljava/util/List;)V

    .line 559
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v6, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mDelayedBookmarkCallbacks:Ljava/util/List;

    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getChildAt(Lorg/chromium/components/bookmarks/BookmarkId;I)Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 8

    .prologue
    .line 475
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 476
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v6

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetChildAt(JJII)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount(Lorg/chromium/components/bookmarks/BookmarkId;)I
    .locals 7

    .prologue
    .line 444
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 445
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetChildCount(JJI)I

    move-result v0

    return v0
.end method

.method public getChildIDs(Lorg/chromium/components/bookmarks/BookmarkId;ZZ)Ljava/util/List;
    .locals 10

    .prologue
    .line 456
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 457
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 458
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v6

    move-object v1, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v9}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetChildIDs(JJIZZLjava/util/List;)V

    .line 464
    return-object v9
.end method

.method public getCurrentFolderHierarchy(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;)V
    .locals 7

    .prologue
    .line 579
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-eqz v0, :cond_0

    .line 580
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetCurrentFolderHierarchy(JLorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;Ljava/util/List;)V

    .line 586
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v6, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mDelayedBookmarkCallbacks:Ljava/util/List;

    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDesktopFolderId()Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 2

    .prologue
    .line 436
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 437
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetDesktopFolderId(J)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    return-object v0
.end method

.method public getMobileFolderId()Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 2

    .prologue
    .line 420
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 421
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetMobileFolderId(J)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    return-object v0
.end method

.method public getMoveDestinations(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 375
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 376
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetAllFoldersWithDepths(JLjava/util/List;Ljava/util/List;)V

    .line 377
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 406
    :cond_1
    return-void

    :cond_2
    move v1, v2

    move v3, v4

    move v5, v2

    .line 381
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 382
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 383
    if-eqz v5, :cond_3

    .line 384
    if-gt v6, v3, :cond_4

    move v3, v4

    move v5, v2

    .line 395
    :cond_3
    :goto_1
    if-nez v5, :cond_5

    .line 396
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/bookmarks/BookmarkId;

    .line 397
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 398
    const/4 v3, 0x1

    .line 400
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 401
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 402
    add-int/lit8 v0, v1, -0x1

    move v1, v6

    .line 381
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v5, v3

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 388
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 389
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 390
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    move v0, v1

    move v1, v3

    move v3, v5

    goto :goto_2
.end method

.method public getOtherFolderId()Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 2

    .prologue
    .line 428
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 429
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetOtherFolderId(J)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    return-object v0
.end method

.method public getRootFolderId()Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 2

    .prologue
    .line 412
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 413
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetRootFolderId(J)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelFolderIDs(ZZ)Ljava/util/List;
    .locals 7

    .prologue
    .line 345
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 346
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 347
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetTopLevelFolderIDs(JZZLjava/util/List;)V

    .line 348
    return-object v6
.end method

.method public getTopLevelFolderParentIDs()Ljava/util/List;
    .locals 4

    .prologue
    .line 332
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 333
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeGetTopLevelFolderParentIDs(JLjava/util/List;)V

    .line 335
    return-object v0
.end method

.method public isBookmarkModelLoaded()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    return v0
.end method

.method public isEditBookmarksEnabled()Z
    .locals 2

    .prologue
    .line 680
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeIsEditBookmarksEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isFolderVisible(Lorg/chromium/components/bookmarks/BookmarkId;)Z
    .locals 7

    .prologue
    .line 567
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 568
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeIsFolderVisible(JJI)Z

    move-result v0

    return v0
.end method

.method public loadEmptyPartnerBookmarkShimForTesting()V
    .locals 2

    .prologue
    .line 260
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeLoadEmptyPartnerBookmarkShimForTesting(J)V

    .line 261
    return-void
.end method

.method public moveBookmark(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/components/bookmarks/BookmarkId;I)V
    .locals 7

    .prologue
    .line 612
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeMoveBookmark(JLorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/components/bookmarks/BookmarkId;I)V

    .line 613
    return-void
.end method

.method protected notifyBookmarkModelLoaded()V
    .locals 2

    .prologue
    .line 689
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->isBookmarkModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 691
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkModelLoaded()V

    goto :goto_0

    .line 694
    :cond_0
    return-void
.end method

.method public removeAllUserBookmarks()V
    .locals 2

    .prologue
    .line 602
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeRemoveAllUserBookmarks(J)V

    .line 603
    return-void
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public runAfterBookmarkModelLoaded(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->isBookmarkModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 294
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    .line 296
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->addObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 306
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchBookmarks(Ljava/lang/String;I)Ljava/util/List;
    .locals 7

    .prologue
    .line 498
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 499
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeSearchBookmarks(JLjava/util/List;Ljava/lang/String;I)V

    .line 501
    return-object v4
.end method

.method public setBookmarkTitle(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 509
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 510
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v6

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeSetBookmarkTitle(JJILjava/lang/String;)V

    .line 511
    return-void
.end method

.method public setBookmarkUrl(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 517
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mIsNativeBookmarkModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 518
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 519
    :cond_1
    iget-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v6

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeSetBookmarkUrl(JJILjava/lang/String;)V

    .line 520
    return-void
.end method

.method public startGroupingUndos()V
    .locals 2

    .prologue
    .line 668
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeStartGroupingUndos(J)V

    .line 669
    return-void
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 660
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->mNativeBookmarkBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->nativeUndo(J)V

    .line 661
    return-void
.end method
