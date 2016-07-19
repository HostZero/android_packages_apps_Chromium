.class Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "BookmarkDrawerListViewAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final TYPE_ALL_ITEMS:I = -0x1

.field static final TYPE_DIVIDER:I = -0x2

.field static final TYPE_FILTER:I = -0x4

.field static final TYPE_FOLDER:I = 0x0

.field static final TYPE_FOLDERS_TITLE:I = -0x3

.field static final VIEW_TYPE_DIVIDER:I = 0x1

.field static final VIEW_TYPE_ITEM:I = 0x0

.field static final VIEW_TYPE_TITLE:I = 0x2


# instance fields
.field private mBottomSection:Ljava/util/List;

.field private mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

.field private mDesktopNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

.field private mManagedAndPartnerFolderIds:Ljava/util/List;

.field private mMiddleSection:Ljava/util/List;

.field private mMobileNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

.field private mOthersNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

.field private mSections:[Ljava/util/List;

.field private mTopSection:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mTopSection:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMiddleSection:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mBottomSection:Ljava/util/List;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mTopSection:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMiddleSection:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mBottomSection:Ljava/util/List;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mSections:[Ljava/util/List;

    .line 44
    iput-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDesktopNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 45
    iput-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMobileNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 46
    iput-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mOthersNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 47
    iput-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mManagedAndPartnerFolderIds:Ljava/util/List;

    .line 52
    return-void
.end method

.method private repopulateTopSection()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mTopSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mTopSection:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMobileNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->isFolderVisible(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mTopSection:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMobileNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDesktopNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->isFolderVisible(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mTopSection:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDesktopNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mOthersNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->isFolderVisible(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mTopSection:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mOthersNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mTopSection:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    sget-object v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->OFFLINE_PAGES:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mManagedAndPartnerFolderIds:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mManagedAndPartnerFolderIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/bookmarks/BookmarkId;

    .line 128
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mTopSection:Ljava/util/List;

    new-instance v3, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    invoke-direct {v3, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_4
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method clear()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mTopSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMiddleSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mBottomSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    return-void
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 267
    .line 268
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mSections:[Ljava/util/List;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 269
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 281
    if-gez p1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-object v0

    .line 284
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mSections:[Ljava/util/List;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 285
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_2

    .line 286
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr p1, v4

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 276
    int-to-long v0, p1

    return-wide v0
.end method

.method getItemPosition(ILjava/lang/Object;)I
    .locals 3

    .prologue
    .line 207
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    .line 209
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 210
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getTopLevelFolderParentIDs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDesktopNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mOthersNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMobileNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    check-cast p2, Lorg/chromium/components/bookmarks/BookmarkId;

    .line 219
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getParentId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    .line 221
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object p2, v0

    .line 225
    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->positionOfBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)I

    move-result v0

    goto :goto_0

    .line 227
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 228
    check-cast p2, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    .line 229
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    invoke-direct {v0, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->positionOfItem(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;)I

    move-result v0

    goto :goto_0

    .line 232
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    .line 251
    iget v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 252
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    .line 253
    :cond_0
    iget v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 254
    const/4 v0, 0x2

    goto :goto_0

    .line 256
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 295
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    .line 298
    if-nez p2, :cond_a

    .line 299
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->getItemViewType(I)I

    move-result v1

    .line 300
    if-nez v1, :cond_0

    .line 301
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$layout;->bookmark_drawer_item:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    .line 314
    :goto_0
    iget v2, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_3

    .line 362
    :goto_1
    return-object v1

    .line 303
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 304
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$layout;->bookmark_divider:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    goto :goto_0

    .line 306
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 307
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$layout;->bookmark_drawer_title:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    goto :goto_0

    .line 310
    :cond_2
    sget-boolean v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Invalid item view type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 316
    :cond_3
    iget v2, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    const/4 v4, -0x3

    if-ne v2, v4, :cond_4

    .line 317
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->bookmark_drawer_folders:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    .line 319
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move-object v2, v1

    .line 323
    check-cast v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListItemView;

    .line 328
    iget v4, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 354
    :pswitch_0
    const-string/jumbo v0, ""

    .line 356
    sget-boolean v4, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 330
    :pswitch_1
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$string;->bookmark_drawer_all_items:I

    invoke-static {v3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 332
    sget v0, Lorg/chromium/chrome/R$drawable;->btn_star:I

    .line 359
    :goto_2
    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListItemView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListItemView;->setIcon(I)V

    goto :goto_1

    .line 335
    :pswitch_2
    iget-object v4, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v4}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v4

    iget-object v5, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 336
    iget-object v5, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mManagedAndPartnerFolderIds:Ljava/util/List;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mManagedAndPartnerFolderIds:Ljava/util/List;

    iget-object v6, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 338
    sget v0, Lorg/chromium/chrome/R$drawable;->bookmark_managed:I

    move-object v3, v4

    goto :goto_2

    .line 339
    :cond_5
    iget-object v5, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v6, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMobileNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v5, v6}, Lorg/chromium/components/bookmarks/BookmarkId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v6, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mOthersNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v5, v6}, Lorg/chromium/components/bookmarks/BookmarkId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v5, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDesktopNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v5}, Lorg/chromium/components/bookmarks/BookmarkId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 342
    :cond_6
    sget v0, Lorg/chromium/chrome/R$drawable;->bookmark_folder:I

    move-object v3, v4

    goto :goto_2

    :cond_7
    move v0, v3

    move-object v3, v4

    .line 346
    goto :goto_2

    .line 348
    :pswitch_3
    sget-boolean v3, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_8

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    sget-object v3, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->OFFLINE_PAGES:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    if-eq v0, v3, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 349
    :cond_8
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$string;->bookmark_drawer_filter_offline_pages:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 351
    sget v0, Lorg/chromium/chrome/R$drawable;->bookmark_filter_offline_pages:I

    goto :goto_2

    :cond_9
    move v7, v3

    move-object v3, v0

    move v0, v7

    goto :goto_2

    :cond_a
    move-object v1, p2

    goto/16 :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    .line 245
    iget v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    iget v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method positionOfBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)I
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->positionOfItem(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;)I

    move-result v0

    return v0
.end method

.method positionOfItem(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 181
    .line 182
    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mSections:[Ljava/util/List;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 183
    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 184
    if-eq v6, v0, :cond_1

    .line 185
    add-int v0, v2, v6

    .line 191
    :cond_0
    return v0

    .line 189
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v2, v5

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method setBookmarkUIDelegate(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    .line 173
    return-void
.end method

.method setTopFolders(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMiddleSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMiddleSection:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMiddleSection:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    const/4 v2, -0x3

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/bookmarks/BookmarkId;

    .line 158
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMiddleSection:Ljava/util/List;

    new-instance v3, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    invoke-direct {v3, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method updateList()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getDesktopFolderId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDesktopNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getMobileFolderId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mMobileNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOtherFolderId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mOthersNodeId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getTopLevelFolderIDs(ZZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mManagedAndPartnerFolderIds:Ljava/util/List;

    .line 138
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->repopulateTopSection()V

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getTopLevelFolderIDs(ZZ)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->setTopFolders(Ljava/util/List;)V

    .line 141
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->notifyDataSetChanged()V

    .line 142
    return-void
.end method
