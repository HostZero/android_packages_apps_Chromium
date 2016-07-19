.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;
.source "BookmarkFolderSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final CREATE_FOLDER_REQUEST_CODE:I = 0xd

.field static final INTENT_BOOKMARKS_TO_MOVE:Ljava/lang/String; = "BookmarkFolderSelectActivity.bookmarksToMove"

.field static final INTENT_IS_CREATING_FOLDER:Ljava/lang/String; = "BookmarkFolderSelectActivity.isCreatingFolder"

.field static final INTENT_SELECTED_FOLDER:Ljava/lang/String; = "BookmarkFolderSelectActivity.selectedFolder"


# instance fields
.field private mBookmarkIdsAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;

.field private mBookmarkIdsList:Landroid/widget/ListView;

.field private mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

.field private mBookmarksToMove:Ljava/util/List;

.field private mIsCreatingFolder:Z

.field private mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

.field private mParentId:Lorg/chromium/components/bookmarks/BookmarkId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;-><init>()V

    .line 58
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 259
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->updateFolderList()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarksToMove:Ljava/util/List;

    return-object v0
.end method

.method public static varargs startFolderSelectActivity(Landroid/content/Context;[Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 83
    sget-boolean v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const-string/jumbo v2, "BookmarkFolderSelectActivity.isCreatingFolder"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    array-length v3, p1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 88
    invoke-virtual {v4}, Lorg/chromium/components/bookmarks/BookmarkId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const-string/jumbo v0, "BookmarkFolderSelectActivity.bookmarksToMove"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method public static startNewFolderSelectActivity(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 100
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string/jumbo v0, "BookmarkFolderSelectActivity.isCreatingFolder"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/bookmarks/BookmarkId;

    .line 105
    invoke-virtual {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    const-string/jumbo v0, "BookmarkFolderSelectActivity.bookmarksToMove"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 108
    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    return-void
.end method

.method private updateFolderList()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 154
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarksToMove:Ljava/util/List;

    invoke-virtual {v0, v7, v8, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getMoveDestinations(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 157
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mIsCreatingFolder:Z

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;

    const/4 v1, 0x0

    sget v3, Lorg/chromium/chrome/R$string;->bookmark_add_folder:I

    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;ZI)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v6, v2

    .line 165
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 166
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/bookmarks/BookmarkId;

    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->isFolderVisible(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 171
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mParentId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v1, v4}, Lorg/chromium/components/bookmarks/BookmarkId;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;ZI)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_1
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarkIdsAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;

    invoke-virtual {v0, v9}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->setEntryList(Ljava/util/List;)V

    .line 176
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 225
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mIsCreatingFolder:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 226
    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 227
    const-string/jumbo v0, "BookmarkAddEditFolderActivity.createdBookmark"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getBookmarkIdFromString(Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarksToMove:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->moveBookmarks(Ljava/util/List;Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 230
    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->setLastUsedParent(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 231
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->finish()V

    .line 233
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 115
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_choose_folder:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->setTaskDescriptionInDocumentMode(Landroid/app/Activity;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 119
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BookmarkFolderSelectActivity.bookmarksToMove"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarksToMove:Ljava/util/List;

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-static {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getBookmarkIdFromString(Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    .line 123
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->doesBookmarkExist(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarksToMove:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarksToMove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->finish()V

    .line 151
    :goto_1
    return-void

    .line 132
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BookmarkFolderSelectActivity.isCreatingFolder"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mIsCreatingFolder:Z

    .line 133
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mIsCreatingFolder:Z

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getMobileFolderId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mParentId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 140
    :goto_2
    sget v0, Lorg/chromium/chrome/R$layout;->bookmark_folder_select_activity:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->setContentView(I)V

    .line 141
    sget v0, Lorg/chromium/chrome/R$id;->bookmark_folder_list:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarkIdsList:Landroid/widget/ListView;

    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarkIdsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarkIdsAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarkIdsList:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarkIdsAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    sget v0, Lorg/chromium/chrome/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 147
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 148
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 150
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->updateFolderList()V

    goto :goto_1

    .line 136
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarksToMove:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getParentId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mParentId:Lorg/chromium/components/bookmarks/BookmarkId;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onDestroy()V

    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->removeObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 193
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 201
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;

    .line 202
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mIsCreatingFolder:Z

    if-eqz v1, :cond_2

    .line 203
    const/4 v1, 0x0

    .line 204
    iget v2, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mType:I

    if-ne v2, v3, :cond_1

    .line 205
    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 209
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 210
    const-string/jumbo v2, "BookmarkFolderSelectActivity.selectedFolder"

    invoke-virtual {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 212
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->finish()V

    .line 220
    :cond_0
    :goto_1
    return-void

    .line 207
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "New folder items should not be clickable in creating mode"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 213
    :cond_2
    iget v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mType:I

    if-nez v1, :cond_3

    .line 214
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarksToMove:Ljava/util/List;

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->startAddFolderActivity(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;Ljava/util/List;)V

    goto :goto_1

    .line 215
    :cond_3
    iget v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mType:I

    if-ne v1, v3, :cond_0

    .line 216
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarksToMove:Ljava/util/List;

    iget-object v3, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->moveBookmarks(Ljava/util/List;Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 217
    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->setLastUsedParent(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 218
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->finish()V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->onBackPressed()V

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
