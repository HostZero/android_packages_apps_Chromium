.class public final Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;
.super Ljava/lang/Object;
.source "TabModelSelectorUma.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mRestoreStartedAtMsec:J

.field private mRestoredTabId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoreStartedAtMsec:J

    .line 31
    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 32
    return-void
.end method

.method private static nowMsec()J
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private recordUserActionDuringTabRestore(I)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 112
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 113
    :cond_1
    const-string/jumbo v0, "Tab.RestoreUserPersistence"

    invoke-static {v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 115
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 39
    return-void
.end method

.method public final onActivityStateChange(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 43
    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    if-eq v0, v1, :cond_0

    .line 45
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->recordUserActionDuringTabRestore(I)V

    .line 46
    iput v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    goto :goto_0
.end method

.method final onPageLoadFailed(I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 86
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    if-ne p1, v0, :cond_2

    .line 87
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoreStartedAtMsec:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->nowMsec()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoreStartedAtMsec:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->recordUserActionDuringTabRestore(I)V

    .line 93
    :cond_1
    iput v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    .line 95
    :cond_2
    return-void
.end method

.method final onPageLoadFinished(I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 79
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    if-ne p1, v0, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->recordUserActionDuringTabRestore(I)V

    .line 81
    iput v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    .line 83
    :cond_0
    return-void
.end method

.method final onShowTab(IZ)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 55
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    if-eq p1, v0, :cond_0

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->recordUserActionDuringTabRestore(I)V

    .line 57
    iput v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    .line 59
    :cond_0
    if-eqz p2, :cond_1

    .line 60
    iput p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    .line 61
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->nowMsec()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoreStartedAtMsec:J

    .line 63
    :cond_1
    return-void
.end method

.method final onTabCrashed(I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 73
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    if-ne p1, v0, :cond_0

    .line 74
    iput v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    .line 76
    :cond_0
    return-void
.end method

.method final onTabsViewShown()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 98
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    if-eq v0, v1, :cond_0

    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->recordUserActionDuringTabRestore(I)V

    .line 100
    iput v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->mRestoredTabId:I

    .line 102
    :cond_0
    return-void
.end method

.method final userSwitchedToTab()V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "MobileTabSwitched"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 52
    return-void
.end method
