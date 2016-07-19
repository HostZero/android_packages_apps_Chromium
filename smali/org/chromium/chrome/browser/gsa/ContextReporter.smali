.class public Lorg/chromium/chrome/browser/gsa/ContextReporter;
.super Ljava/lang/Object;
.source "ContextReporter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final STATUS_CONNECTION_FAILED:I = 0xc

.field public static final STATUS_DUP_TITLE_CHANGE:I = 0xb

.field public static final STATUS_GSA_ACCOUNT_MISMATCH:I = 0x10

.field public static final STATUS_GSA_ACCOUNT_MISSING:I = 0xf

.field public static final STATUS_GSA_NOT_AVAILABLE:I = 0x1

.field public static final STATUS_INCOGNITO:I = 0x8

.field public static final STATUS_INVALID_SCHEME:I = 0x9

.field public static final STATUS_NOT_SIGNED_IN:I = 0xe

.field public static final STATUS_NO_TAB:I = 0x7

.field public static final STATUS_RESULT_FAILED:I = 0x12

.field public static final STATUS_RESULT_IS_NULL:I = 0x11

.field public static final STATUS_SUCCESS:I = 0x0

.field public static final STATUS_SUCCESS_WITH_SELECTION:I = 0x13

.field public static final STATUS_SVELTE_DEVICE:I = 0x6

.field public static final STATUS_SYNC_NOT_INITIALIZED:I = 0x2

.field public static final STATUS_SYNC_NOT_KEYSTORE_PASSPHRASE:I = 0x4

.field public static final STATUS_SYNC_NOT_READY_AT_REPORT_TIME:I = 0xd

.field public static final STATUS_SYNC_NOT_SYNCING_URLS:I = 0x3

.field public static final STATUS_SYNC_OTHER:I = 0x5

.field public static final STATUS_TAB_ID_MISMATCH:I = 0xa


# instance fields
.field private final mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

.field private final mContextInUse:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContextualSearchObserver:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;

.field private final mDelegate:Lorg/chromium/chrome/browser/gsa/GSAContextReportDelegate;

.field private mLastContextWasTitleChange:Z

.field private mModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

.field private mSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/chrome/browser/gsa/ContextReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/gsa/ContextReporter;Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportUsageOfCurrentContextIfPossible(Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/gsa/ContextReporter;Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportDisplaySelection(Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V

    return-void
.end method

.method private reportDisplaySelection(Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 159
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportUsageOfCurrentContextIfPossible(Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V

    .line 160
    return-void
.end method

.method public static reportStatus(I)V
    .locals 2

    .prologue
    .line 214
    const-string/jumbo v0, "Search.IcingContextReportingStatus"

    const/16 v1, 0x14

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 216
    return-void
.end method

.method public static reportSyncStatus(Lorg/chromium/chrome/browser/sync/ProfileSyncService;)V
    .locals 2

    .prologue
    .line 222
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportStatus(I)V

    .line 231
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getActiveDataTypes()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportStatus(I)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getPassphraseType()Lorg/chromium/sync/PassphraseType;

    move-result-object v0

    sget-object v1, Lorg/chromium/sync/PassphraseType;->KEYSTORE_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    invoke-virtual {v0, v1}, Lorg/chromium/sync/PassphraseType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 227
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportStatus(I)V

    goto :goto_0

    .line 229
    :cond_3
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportStatus(I)V

    goto :goto_0
.end method

.method private reportUsageEndedIfNecessary()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mContextInUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mDelegate:Lorg/chromium/chrome/browser/gsa/GSAContextReportDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/gsa/GSAContextReportDelegate;->reportContextUsageEnded()V

    .line 164
    :cond_0
    return-void
.end method

.method private reportUsageOfCurrentContextIfPossible(Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    :cond_0
    if-nez v0, :cond_1

    .line 171
    const/4 v0, 0x7

    invoke-static {v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportStatus(I)V

    .line 177
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportUsageEndedIfNecessary()V

    .line 207
    :goto_1
    return-void

    .line 174
    :cond_1
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportStatus(I)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 184
    :cond_3
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportStatus(I)V

    .line 186
    invoke-direct {p0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportUsageEndedIfNecessary()V

    goto :goto_1

    .line 191
    :cond_4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 192
    const/16 v0, 0xa

    invoke-static {v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportStatus(I)V

    goto :goto_1

    .line 196
    :cond_5
    if-eqz p2, :cond_6

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mLastContextWasTitleChange:Z

    if-eqz v1, :cond_6

    .line 197
    const/16 v0, 0xb

    invoke-static {v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportStatus(I)V

    goto :goto_1

    .line 202
    :cond_6
    invoke-direct {p0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportUsageEndedIfNecessary()V

    .line 204
    iget-object v1, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mDelegate:Lorg/chromium/chrome/browser/gsa/GSAContextReportDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0, p3}, Lorg/chromium/chrome/browser/gsa/GSAContextReportDelegate;->reportContext(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V

    .line 205
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mLastContextWasTitleChange:Z

    .line 206
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mContextInUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1
.end method


# virtual methods
.method public disable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-direct {p0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportUsageEndedIfNecessary()V

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->destroy()V

    .line 139
    iput-object v3, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 143
    iget-object v2, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 145
    :cond_1
    iput-object v3, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 147
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mContextualSearchObserver:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mContextualSearchObserver:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->removeObserver(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;)V

    .line 149
    iput-object v3, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mContextualSearchObserver:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;

    .line 151
    :cond_3
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportUsageOfCurrentContextIfPossible(Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    .line 87
    sget-boolean v1, Lorg/chromium/chrome/browser/gsa/ContextReporter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    if-nez v1, :cond_1

    .line 90
    new-instance v1, Lorg/chromium/chrome/browser/gsa/ContextReporter$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter$1;-><init>(Lorg/chromium/chrome/browser/gsa/ContextReporter;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    .line 103
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    if-nez v1, :cond_3

    .line 104
    sget-boolean v1, Lorg/chromium/chrome/browser/gsa/ContextReporter;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_2
    new-instance v1, Lorg/chromium/chrome/browser/gsa/ContextReporter$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/gsa/ContextReporter$2;-><init>(Lorg/chromium/chrome/browser/gsa/ContextReporter;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 111
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 112
    iget-object v2, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mContextualSearchObserver:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 116
    new-instance v0, Lorg/chromium/chrome/browser/gsa/ContextReporter$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/gsa/ContextReporter$3;-><init>(Lorg/chromium/chrome/browser/gsa/ContextReporter;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mContextualSearchObserver:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter;->mContextualSearchObserver:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->addObserver(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;)V

    .line 129
    :cond_4
    return-void
.end method
