.class public Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;
.super Ljava/lang/Object;
.source "OfflinePageStorageSpaceHeader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mCallback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;

.field mClicked:Z

.field mContext:Landroid/content/Context;

.field mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

.field mOfflinePageStorageSpacePolicy:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mClicked:Z

    .line 35
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;

    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;-><init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mOfflinePageStorageSpacePolicy:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;

    .line 38
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mCallback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;

    .line 40
    return-void
.end method


# virtual methods
.method public createHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/aY;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->bookmark_offline_pages_storage_space_header:I

    invoke-virtual {v0, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    sget v1, Lorg/chromium/chrome/R$id;->storage_header_message:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->offline_pages_storage_space_message:I

    invoke-static {v3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mOfflinePageStorageSpacePolicy:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->getSizeOfAllPages()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    sget v1, Lorg/chromium/chrome/R$id;->storage_header_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader$1;-><init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v1, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader$2;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader$2;-><init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;Landroid/view/View;)V

    return-object v1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mClicked:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "OfflinePages.FreeUpSpaceHeaderNotClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public shouldShow()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mOfflinePageStorageSpacePolicy:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->shouldShowStorageSpaceHeader()Z

    move-result v0

    return v0
.end method
