.class Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;
.super Landroid/support/v7/widget/aG;
.source "BookmarkItemsAdapter.java"

# interfaces
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$PromoHeaderShowingChangeListener;
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBookmarkDividerSection:Ljava/util/List;

.field private mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

.field private mBookmarkSection:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

.field private mFolderDividerSection:Ljava/util/List;

.field private mFolderSection:Ljava/util/List;

.field private mOfflinePageModelObserver:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

.field private mOfflineStorageHeader:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

.field private mOfflineStorageSection:Ljava/util/List;

.field private mPromoHeaderManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;

.field private mPromoHeaderSection:Ljava/util/List;

.field private mSections:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/support/v7/widget/aG;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mPromoHeaderSection:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflineStorageSection:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderDividerSection:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderSection:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkDividerSection:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkSection:Ljava/util/List;

    .line 55
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 84
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mSections:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mSections:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mPromoHeaderSection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mSections:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflineStorageSection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mSections:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderDividerSection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mSections:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderSection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mSections:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkDividerSection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mSections:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkSection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;Lorg/chromium/components/bookmarks/BookmarkId;)I
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->getPositionForBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->removeItem(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->refreshOfflinePagesFilterView()V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPositionForBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)I
    .locals 3

    .prologue
    .line 123
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_0
    const/4 v1, -0x1

    .line 125
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 126
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->getItem(I)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/chromium/components/bookmarks/BookmarkId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    :goto_1
    return v0

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getSection(I)Ljava/util/List;
    .locals 3

    .prologue
    .line 109
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 116
    :goto_1
    return-object v0

    .line 114
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private refreshOfflinePagesFilterView()V
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->OFFLINE_PAGES:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkIDsByFilter(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->setBookmarks(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private removeItem(I)V
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->getSection(I)Ljava/util/List;

    move-result-object v0

    .line 171
    sget-boolean v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderSection:Ljava/util/List;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkSection:Ljava/util/List;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->toSectionPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 173
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->notifyItemRemoved(I)V

    .line 174
    return-void
.end method

.method private setBookmarks(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 139
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderSection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkSection:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->updateHeader()V

    .line 147
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->updateDividerSections()V

    .line 151
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->notifyDataSetChanged()V

    .line 152
    return-void
.end method

.method private toSectionPosition(I)I
    .locals 3

    .prologue
    .line 100
    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    return p1
.end method

.method private updateDividerSections()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderDividerSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkDividerSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mPromoHeaderSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflineStorageSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 161
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderDividerSection:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkDividerSection:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_3
    return-void

    .line 158
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getCurrentState()I

    move-result v0

    .line 364
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mPromoHeaderSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 367
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflineStorageSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 368
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 369
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflineStorageHeader:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflineStorageHeader:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflineStorageSection:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_2
    sget-boolean v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected UI state"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 376
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mPromoHeaderManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mPromoHeaderSection:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method getItem(I)Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->getSection(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->toSectionPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/bookmarks/BookmarkId;

    return-object v0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 183
    goto :goto_0

    .line 184
    :cond_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->getSection(I)Ljava/util/List;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mPromoHeaderSection:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    .line 193
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflineStorageSection:Ljava/util/List;

    if-ne v0, v1, :cond_1

    .line 194
    const/4 v0, 0x4

    goto :goto_0

    .line 195
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderDividerSection:Ljava/util/List;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkDividerSection:Ljava/util/List;

    if-ne v0, v1, :cond_3

    .line 197
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 198
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mFolderSection:Ljava/util/List;

    if-ne v0, v1, :cond_4

    .line 199
    const/4 v0, 0x1

    goto :goto_0

    .line 200
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkSection:Ljava/util/List;

    if-ne v0, v1, :cond_5

    .line 201
    const/4 v0, 0x3

    goto :goto_0

    .line 204
    :cond_5
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Invalid position requested"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 205
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onAllBookmarksStateSet()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getAllBookmarkIDsOrderedByCreationDate()Ljava/util/List;

    move-result-object v0

    .line 333
    const-string/jumbo v1, "EnhancedBookmarks.AllBookmarksCount"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 335
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->setBookmarks(Ljava/util/List;Ljava/util/List;)V

    .line 336
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/aY;I)V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->getItem(I)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    .line 239
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 251
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "View type not supported!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 245
    :pswitch_0
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->setBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    .line 253
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 248
    :pswitch_2
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->setBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V
    .locals 4

    .prologue
    .line 273
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->addUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 275
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 276
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$PromoHeaderShowingChangeListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mPromoHeaderManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;

    .line 277
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$3;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflinePageModelObserver:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

    .line 296
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflinePageModelObserver:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->addObserver(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;)V

    .line 298
    new-instance v1, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mContext:Landroid/content/Context;

    new-instance v3, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$4;

    invoke-direct {v3, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$4;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)V

    invoke-direct {v1, v2, v0, v3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflineStorageHeader:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

    .line 314
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/aY;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 210
    packed-switch p2, :pswitch_data_0

    .line 229
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 212
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mPromoHeaderManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->createHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/aY;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflineStorageHeader:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->createHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/aY;

    move-result-object v0

    goto :goto_0

    .line 216
    :pswitch_2
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$2;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$layout;->bookmark_divider:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$2;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 219
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->bookmark_folder_row:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderRow;

    .line 221
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderRow;->onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    .line 222
    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$ItemViewHolder;

    invoke-direct {v1, v0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;)V

    move-object v0, v1

    goto :goto_0

    .line 224
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->bookmark_bookmark_row:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;

    .line 226
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    .line 227
    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$ItemViewHolder;

    invoke-direct {v1, v0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 230
    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->removeUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 319
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->removeObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 320
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mPromoHeaderManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->destroy()V

    .line 322
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflinePageModelObserver:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->removeObserver(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;)V

    .line 325
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mOfflineStorageHeader:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->destroy()V

    .line 327
    :cond_0
    return-void
.end method

.method public onFilterStateSet(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V
    .locals 2

    .prologue
    .line 346
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->OFFLINE_PAGES:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkIDsByFilter(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)Ljava/util/List;

    move-result-object v0

    .line 348
    const-string/jumbo v1, "OfflinePages.OfflinePageCount"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 349
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkIDsByFilter(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->setBookmarks(Ljava/util/List;Ljava/util/List;)V

    .line 350
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->checkOfflinePageMetadata()V

    .line 351
    return-void
.end method

.method public onFolderStateSet(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getChildIDs(Lorg/chromium/components/bookmarks/BookmarkId;ZZ)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v1

    invoke-virtual {v1, p1, v2, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getChildIDs(Lorg/chromium/components/bookmarks/BookmarkId;ZZ)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->setBookmarks(Ljava/util/List;Ljava/util/List;)V

    .line 342
    return-void
.end method

.method public onPromoHeaderShowingChanged(Z)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->updateHeader()V

    .line 265
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->updateDividerSections()V

    .line 266
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onSelectionStateChange(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 354
    return-void
.end method
