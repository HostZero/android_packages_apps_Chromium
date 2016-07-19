.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;
.source "BookmarkEditActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INTENT_BOOKMARK_ID:Ljava/lang/String; = "BookmarkEditActivity.BookmarkId"

.field public static final INTENT_WEB_CONTENTS:Ljava/lang/String; = "BookmarkEditActivity.WebContents"


# instance fields
.field private mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

.field private mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

.field private mConnectionObserver:Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

.field private mDeleteButton:Landroid/view/MenuItem;

.field private mFolderTextView:Landroid/widget/TextView;

.field private mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

.field private mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

.field private mOfflinePageModelObserver:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

.field private mTitleEditText:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

.field private mUrlEditText:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;-><init>()V

    .line 65
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->NONE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    .line 68
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->updateViewContent(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->updateOfflineSection()V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->recordOfflineButtonAction(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->openBookmark()V

    return-void
.end method

.method private openBookmark()V
    .locals 3

    .prologue
    .line 340
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 342
    const-string/jumbo v1, "BookmarkEditActivity.VisitBookmarkId"

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v2}, Lorg/chromium/components/bookmarks/BookmarkId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 348
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->finish()V

    .line 349
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    const/4 v2, 0x5

    invoke-static {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->openBookmark(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;I)Z

    goto :goto_0
.end method

.method private recordOfflineButtonAction(Z)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->NONE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    if-ne v0, v1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 358
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->SAVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->REMOVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->VISIT:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 362
    :cond_1
    if-eqz p1, :cond_5

    .line 363
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->SAVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    if-ne v0, v1, :cond_3

    .line 364
    const-string/jumbo v0, "OfflinePages.Edit.SaveButtonClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 380
    :cond_2
    :goto_1
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->NONE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    goto :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->REMOVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    if-ne v0, v1, :cond_4

    .line 366
    const-string/jumbo v0, "OfflinePages.Edit.RemoveButtonClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 367
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->VISIT:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    if-ne v0, v1, :cond_2

    .line 368
    const-string/jumbo v0, "OfflinePages.Edit.VisitButtonClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 371
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->SAVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    if-ne v0, v1, :cond_6

    .line 372
    const-string/jumbo v0, "OfflinePages.Edit.SaveButtonNotClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 373
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->REMOVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    if-ne v0, v1, :cond_7

    .line 374
    const-string/jumbo v0, "OfflinePages.Edit.RemoveButtonNotClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 375
    :cond_7
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->VISIT:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    if-ne v0, v1, :cond_2

    .line 376
    const-string/jumbo v0, "OfflinePages.Edit.VisitButtonNotClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateButtonToDeleteOfflinePage(Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->REMOVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    .line 282
    sget v0, Lorg/chromium/chrome/R$string;->remove:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 283
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    return-void
.end method

.method private updateButtonToSaveOfflinePage(Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->SAVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    .line 303
    sget v0, Lorg/chromium/chrome/R$string;->save:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 304
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$6;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$6;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    return-void
.end method

.method private updateButtonToVisitOfflinePage(Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->VISIT:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflineButtonType:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    .line 326
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_btn_offline_page_visit:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 327
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$7;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$7;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    return-void
.end method

.method private updateOfflineSection()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 236
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    if-nez v0, :cond_1

    .line 278
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->checkOfflinePageMetadata()V

    .line 245
    sget v0, Lorg/chromium/chrome/R$id;->offline_page_save_remove_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 246
    sget v1, Lorg/chromium/chrome/R$id;->offline_page_info_text:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 248
    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-static {v3}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->createClientIdForBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/offlinepages/ClientId;

    move-result-object v3

    .line 249
    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getPageByClientId(Lorg/chromium/chrome/browser/offlinepages/ClientId;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object v2

    .line 250
    if-eqz v2, :cond_2

    .line 252
    sget v3, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_offline_page_size:I

    invoke-static {v3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getFileSize()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->updateButtonToDeleteOfflinePage(Landroid/widget/Button;)V

    .line 257
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    :goto_1
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->getLastCommittedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->canSavePage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    sget v2, Lorg/chromium/chrome/R$string;->bookmark_offline_page_none:I

    invoke-static {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->updateButtonToSaveOfflinePage(Landroid/widget/Button;)V

    .line 264
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 268
    :cond_3
    sget v2, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_offline_page_visit:I

    invoke-static {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->updateButtonToVisitOfflinePage(Landroid/widget/Button;)V

    .line 271
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 274
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateViewContent(Z)V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    .line 152
    if-nez p1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mTitleEditText:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mUrlEditText:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mFolderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getParentId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkTitle(Lorg/chromium/components/bookmarks/BookmarkId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mTitleEditText:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isEditable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->setEnabled(Z)V

    .line 158
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mUrlEditText:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isUrlEditable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->setEnabled(Z)V

    .line 159
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mFolderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isMovable()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 160
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget v0, Lorg/chromium/chrome/R$string;->edit_bookmark:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v0

    .line 86
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->setTitle(I)V

    .line 87
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->setTaskDescriptionInDocumentMode(Landroid/app/Activity;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 89
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BookmarkEditActivity.BookmarkId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getBookmarkIdFromString(Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->doesBookmarkExist(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->finish()V

    .line 144
    :goto_0
    return-void

    .line 98
    :cond_1
    sget v0, Lorg/chromium/chrome/R$layout;->bookmark_edit:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->setContentView(I)V

    .line 99
    sget v0, Lorg/chromium/chrome/R$id;->title_text:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mTitleEditText:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    .line 100
    sget v0, Lorg/chromium/chrome/R$id;->folder_text:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mFolderTextView:Landroid/widget/TextView;

    .line 101
    sget v0, Lorg/chromium/chrome/R$id;->url_text:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mUrlEditText:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mFolderTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$2;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->canSavePage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$3;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mConnectionObserver:Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .line 118
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->init(Landroid/content/Context;)Lorg/chromium/net/NetworkChangeNotifier;

    .line 119
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->getInstance()Lorg/chromium/net/NetworkChangeNotifier;

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mConnectionObserver:Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->addConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 121
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$4;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflinePageModelObserver:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflinePageModelObserver:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->addObserver(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;)V

    .line 133
    sget v0, Lorg/chromium/chrome/R$id;->offline_page_group:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 135
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BookmarkEditActivity.WebContents"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContents;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 136
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->updateOfflineSection()V

    .line 139
    :cond_2
    sget v0, Lorg/chromium/chrome/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 140
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 141
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 143
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->updateViewContent(Z)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 164
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_action_bar_delete:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_trash:I

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mDeleteButton:Landroid/view/MenuItem;

    .line 169
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->recordOfflineButtonAction(Z)V

    .line 220
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mOfflinePageModelObserver:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->removeObserver(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mConnectionObserver:Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    if-eqz v0, :cond_1

    .line 226
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->getInstance()Lorg/chromium/net/NetworkChangeNotifier;

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mConnectionObserver:Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->removeConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 229
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->removeObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 230
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 232
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onDestroy()V

    .line 233
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 174
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mDeleteButton:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_0

    .line 176
    const-string/jumbo v1, "BookmarkEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Delete button pressed by user! isFinishing() == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->deleteBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 179
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->finish()V

    .line 185
    :goto_0
    return v0

    .line 181
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 182
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->finish()V

    goto :goto_0

    .line 185
    :cond_1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->doesBookmarkExist(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mTitleEditText:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->getTrimmedText()Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mUrlEditText:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->getTrimmedText()Ljava/lang/String;

    move-result-object v2

    .line 196
    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mTitleEditText:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v4, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v3, v4, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->setBookmarkTitle(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mUrlEditText:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isUrlEditable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-static {v2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->fixupUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->createClientIdForBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/offlinepages/ClientId;

    move-result-object v0

    .line 205
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getPageByClientId(Lorg/chromium/chrome/browser/offlinepages/ClientId;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 207
    :goto_0
    const-string/jumbo v2, "OfflinePages.Edit.BookmarkUrlChangedForOfflinePage"

    invoke-static {v2, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 209
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v2, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->setBookmarkUrl(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/lang/String;)V

    .line 214
    :cond_1
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onStop()V

    .line 215
    return-void

    .line 205
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
