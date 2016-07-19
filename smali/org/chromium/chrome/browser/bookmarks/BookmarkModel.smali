.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;
.source "BookmarkModel.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final sOfflinePageComparator:Ljava/util/Comparator;


# instance fields
.field private mDeleteObservers:Lorg/chromium/base/ObserverList;

.field private mIsOfflinePageModelLoaded:Z

.field private mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

.field private mOfflinePageModelObserver:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->$assertionsDisabled:Z

    .line 68
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$1;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$1;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->sOfflinePageComparator:Ljava/util/Comparator;

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->getOriginalProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 82
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mDeleteObservers:Lorg/chromium/base/ObserverList;

    .line 101
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isOfflinePageModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mIsOfflinePageModelLoaded:Z

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$2;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageModelObserver:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageModelObserver:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->addObserver(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mIsOfflinePageModelLoaded:Z

    return p1
.end method

.method public static getBookmarkIdForOfflineClientId(Lorg/chromium/chrome/browser/offlinepages/ClientId;)Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 4

    .prologue
    .line 324
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bookmark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lorg/chromium/components/bookmarks/BookmarkId;

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    .line 327
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getBookmarkIdFromString(Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addBookmarkAsync(Lorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;)V
    .locals 2

    .prologue
    .line 212
    invoke-static {p4}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->getOriginalUrlFromDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addBookmark(Lorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    if-eqz v1, :cond_0

    if-nez p5, :cond_1

    .line 217
    :cond_0
    const/4 v1, 0x1

    invoke-interface {p6, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;->onBookmarkAdded(Lorg/chromium/components/bookmarks/BookmarkId;I)V

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0, v0, p5, p6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->saveOfflinePage(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;)V

    goto :goto_0
.end method

.method public addDeleteObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$BookmarkDeleteObserver;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mDeleteObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public varargs deleteBookmarks([Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 164
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 166
    :cond_1
    array-length v0, p1

    new-array v5, v0, [Ljava/lang/String;

    move v0, v1

    move v2, v3

    .line 168
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 169
    aget-object v4, p1, v0

    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkTitle(Lorg/chromium/components/bookmarks/BookmarkId;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    .line 170
    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    :goto_1
    and-int/2addr v2, v4

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    .line 170
    goto :goto_1

    .line 173
    :cond_3
    array-length v0, p1

    if-ne v0, v3, :cond_4

    .line 174
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->deleteBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 183
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mDeleteObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$BookmarkDeleteObserver;

    .line 184
    invoke-interface {v0, v5, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$BookmarkDeleteObserver;->onDeleteBookmarks([Ljava/lang/String;Z)V

    goto :goto_3

    .line 176
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->startGroupingUndos()V

    .line 177
    array-length v0, p1

    :goto_4
    if-ge v1, v0, :cond_5

    aget-object v3, p1, v1

    .line 178
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->deleteBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 180
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->endGroupingUndos()V

    goto :goto_2

    .line 186
    :cond_6
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageModelObserver:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->removeObserver(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    .line 130
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->destroy()V

    .line 131
    return-void
.end method

.method public getBookmarkIDsByFilter(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)Ljava/util/List;
    .locals 5

    .prologue
    .line 291
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->OFFLINE_PAGES:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 292
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 294
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getAllPages()Ljava/util/List;

    move-result-object v0

    .line 295
    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->sOfflinePageComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 299
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getAllBookmarkIDsOrderedByCreationDate()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 303
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    .line 304
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getClientId()Lorg/chromium/chrome/browser/offlinepages/ClientId;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkIdForOfflineClientId(Lorg/chromium/chrome/browser/offlinepages/ClientId;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    .line 305
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_3
    return-object v2
.end method

.method public getBookmarkTitle(Lorg/chromium/components/bookmarks/BookmarkId;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFolder()Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getMobileFolderId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchUrlAndMarkAccessed(Lorg/chromium/components/bookmarks/BookmarkId;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    if-nez v1, :cond_0

    .line 273
    :goto_0
    return-object v0

    .line 272
    :cond_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->createClientIdForBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/offlinepages/ClientId;

    move-result-object v1

    .line 273
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-virtual {v3, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getPageByClientId(Lorg/chromium/chrome/browser/offlinepages/ClientId;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getLaunchUrlAndMarkAccessed(Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    return-object v0
.end method

.method public isBookmarkModelLoaded()Z
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->isBookmarkModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mIsOfflinePageModelLoaded:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveBookmarks(Ljava/util/List;Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getChildCount(Lorg/chromium/components/bookmarks/BookmarkId;)I

    move-result v2

    .line 194
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 195
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/bookmarks/BookmarkId;

    add-int v3, v2, v1

    invoke-virtual {p0, v0, p2, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->moveBookmark(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/components/bookmarks/BookmarkId;I)V

    .line 194
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method public removeDeleteObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$BookmarkDeleteObserver;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mDeleteObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public saveOfflinePage(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;)V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    if-eqz v0, :cond_0

    .line 234
    const-string/jumbo v0, "OfflinePages.IncognitoSave"

    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 236
    invoke-static {p1}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->createClientIdForBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/offlinepages/ClientId;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    new-instance v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$3;

    invoke-direct {v2, p0, p3, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$3;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;Lorg/chromium/components/bookmarks/BookmarkId;)V

    invoke-virtual {v1, p2, v0, v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->savePage(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/offlinepages/ClientId;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;)V

    .line 252
    :cond_0
    return-void
.end method
