.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;
.source "BookmarkAddEditFolderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final INTENT_BOOKMARK_ID:Ljava/lang/String; = "BookmarkAddEditFolderActivity.BookmarkId"

.field static final INTENT_CREATED_BOOKMARK:Ljava/lang/String; = "BookmarkAddEditFolderActivity.createdBookmark"

.field static final INTENT_IS_ADD_MODE:Ljava/lang/String; = "BookmarkAddEditFolderActivity.isAddMode"

.field static final PARENT_FOLDER_REQUEST_CODE:I = 0xa


# instance fields
.field private mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

.field private mBookmarksToMove:Ljava/util/List;

.field private mDeleteButton:Landroid/view/MenuItem;

.field private mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

.field private mFolderTitle:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

.field private mIsAddMode:Z

.field private mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

.field private mParentId:Lorg/chromium/components/bookmarks/BookmarkId;

.field private mParentTextView:Landroid/widget/TextView;

.field private mSaveButton:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;-><init>()V

    .line 54
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mIsAddMode:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentId:Lorg/chromium/components/bookmarks/BookmarkId;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->updateParent(Lorg/chromium/components/bookmarks/BookmarkId;)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    return-object v0
.end method

.method public static startAddFolderActivity(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 103
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const-string/jumbo v0, "BookmarkAddEditFolderActivity.isAddMode"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/bookmarks/BookmarkId;

    .line 108
    invoke-virtual {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_1
    const-string/jumbo v0, "BookmarkFolderSelectActivity.bookmarksToMove"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 112
    const/16 v0, 0xd

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    return-void
.end method

.method public static startEditFolderActivity(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-string/jumbo v1, "BookmarkAddEditFolderActivity.isAddMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "BookmarkAddEditFolderActivity.BookmarkId"

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method private updateParent(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 3

    .prologue
    .line 251
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkTitle(Lorg/chromium/components/bookmarks/BookmarkId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 234
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mIsAddMode:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 235
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 236
    const-string/jumbo v0, "BookmarkFolderSelectActivity.selectedFolder"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getBookmarkIdFromString(Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    .line 238
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->updateParent(Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 240
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 164
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentTextView:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 166
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mIsAddMode:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mBookmarksToMove:Ljava/util/List;

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->startNewFolderSelectActivity(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;Ljava/util/List;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/components/bookmarks/BookmarkId;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->startFolderSelectActivity(Landroid/content/Context;[Lorg/chromium/components/bookmarks/BookmarkId;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 119
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_action_bar_edit_folder:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->setTaskDescriptionInDocumentMode(Landroid/app/Activity;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 123
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BookmarkAddEditFolderActivity.isAddMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mIsAddMode:Z

    .line 124
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mIsAddMode:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BookmarkFolderSelectActivity.bookmarksToMove"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mBookmarksToMove:Ljava/util/List;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mBookmarksToMove:Ljava/util/List;

    invoke-static {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getBookmarkIdFromString(Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BookmarkAddEditFolderActivity.BookmarkId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getBookmarkIdFromString(Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 135
    :cond_1
    sget v0, Lorg/chromium/chrome/R$layout;->bookmark_add_edit_folder_activity:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->setContentView(I)V

    .line 137
    sget v0, Lorg/chromium/chrome/R$id;->parent_folder:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentTextView:Landroid/widget/TextView;

    .line 138
    sget v0, Lorg/chromium/chrome/R$id;->folder_title:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderTitle:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget v0, Lorg/chromium/chrome/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 143
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 144
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 146
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mIsAddMode:Z

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->add_folder:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(I)V

    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getDefaultFolder()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->updateParent(Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 159
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkTitle(Lorg/chromium/components/bookmarks/BookmarkId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void

    .line 151
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->edit_folder:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(I)V

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getParentId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->updateParent(Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 154
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderTitle:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderTitle:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderTitle:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->setSelection(I)V

    .line 156
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isMovable()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 176
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mIsAddMode:Z

    if-eqz v0, :cond_0

    .line 177
    sget v0, Lorg/chromium/chrome/R$string;->save:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->bookmark_check_gray:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mSaveButton:Landroid/view/MenuItem;

    .line 187
    :goto_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 181
    :cond_0
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_action_bar_delete:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_trash:I

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mDeleteButton:Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onDestroy()V

    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->removeObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 246
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 248
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 193
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->finish()V

    .line 219
    :goto_0
    return v0

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mSaveButton:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_3

    .line 196
    sget-boolean v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mIsAddMode:Z

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 198
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderTitle:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderTitle:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->validate()V

    .line 200
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderTitle:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->requestFocus()Z

    goto :goto_0

    .line 204
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentId:Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderTitle:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->getTrimmedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addFolder(Lorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    .line 205
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 206
    const-string/jumbo v3, "BookmarkAddEditFolderActivity.createdBookmark"

    invoke-virtual {v1}, Lorg/chromium/components/bookmarks/BookmarkId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->setResult(ILandroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->finish()V

    goto :goto_0

    .line 211
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mDeleteButton:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_5

    .line 212
    sget-boolean v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mIsAddMode:Z

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 215
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    new-array v2, v0, [Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->deleteBookmarks([Lorg/chromium/components/bookmarks/BookmarkId;)V

    goto :goto_0

    .line 219
    :cond_5
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 224
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mIsAddMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->doesBookmarkExist(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderTitle:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderTitle:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->getTrimmedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->setBookmarkTitle(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onStop()V

    .line 229
    return-void
.end method
