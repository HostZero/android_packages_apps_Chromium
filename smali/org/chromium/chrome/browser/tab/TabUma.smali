.class public Lorg/chromium/chrome/browser/tab/TabUma;
.super Ljava/lang/Object;
.source "TabUma.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final TAB_BACKGROUND_LOAD_LIM:I = 0x3

.field static final TAB_BACKGROUND_LOAD_LOST:I = 0x1

.field static final TAB_BACKGROUND_LOAD_SHOWN:I = 0x0

.field static final TAB_BACKGROUND_LOAD_SKIPPED:I = 0x2

.field static final TAB_STATUS_LAZY_LOAD_FOR_BG_TAB:I = 0x8

.field static final TAB_STATUS_LIM:I = 0x9

.field static final TAB_STATUS_MEMORY_RESIDENT:I = 0x0

.field static final TAB_STATUS_RELOAD_COLD_START_BG:I = 0x7

.field static final TAB_STATUS_RELOAD_COLD_START_FG:I = 0x6

.field static final TAB_STATUS_RELOAD_EVICTED:I = 0x1

.field private static sAllTabsShowCount:J


# instance fields
.field private mChildBackgroundTabShowObserver:Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;

.field private mLastShownTimestamp:J

.field private mLastTabState:I

.field private mLastTabStateChangeMillis:J

.field private mNumBackgroundTabsOpened:I

.field private mRestoreStartedAtMillis:J

.field private final mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lorg/chromium/chrome/browser/tab/TabUma;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tab/TabUma;->$assertionsDisabled:Z

    .line 56
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/chromium/chrome/browser/tab/TabUma;->sAllTabsShowCount:J

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;)V
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    .line 76
    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    .line 78
    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastTabStateChangeMillis:J

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastTabState:I

    .line 94
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastTabStateChangeMillis:J

    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v1, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_FOREGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v1, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-ne v0, v1, :cond_2

    .line 99
    :cond_0
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/tab/TabUma;->updateTabState(I)V

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v1, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_BACKGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v1, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_FOR_LAZY_LOAD:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-ne v0, v1, :cond_4

    .line 102
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/TabUma;->updateTabState(I)V

    goto :goto_0

    .line 103
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v1, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE_FAILED:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-ne v0, v1, :cond_1

    .line 106
    iput v2, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastTabState:I

    .line 107
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/tab/TabUma;->updateTabState(I)V

    goto :goto_0
.end method

.method private static increaseTabShowCount()V
    .locals 4

    .prologue
    .line 387
    sget-wide v0, Lorg/chromium/chrome/browser/tab/TabUma;->sAllTabsShowCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lorg/chromium/chrome/browser/tab/TabUma;->sAllTabsShowCount:J

    .line 388
    return-void
.end method

.method private static millisecondsToMinutes(J)J
    .locals 4

    .prologue
    .line 391
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private recordLongTimesHistogram100(Ljava/lang/String;J)V
    .locals 10

    .prologue
    const-wide/16 v6, 0x1

    .line 146
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v9, 0x64

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJLjava/util/concurrent/TimeUnit;I)V

    .line 150
    return-void
.end method

.method private recordNumBackgroundTabsOpened()V
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mNumBackgroundTabsOpened:I

    if-lez v0, :cond_0

    .line 187
    const-string/jumbo v0, "Tab.BackgroundTabsOpenedViaContextMenuCount"

    iget v1, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mNumBackgroundTabsOpened:I

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount100Histogram(Ljava/lang/String;I)V

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mNumBackgroundTabsOpened:I

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mChildBackgroundTabShowObserver:Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;

    .line 192
    return-void
.end method

.method private recordTabRestoreResult(ZJJI)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string/jumbo v0, "Tab.RestoreResult"

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 123
    const-string/jumbo v0, "Tab.RestoreTime"

    long-to-int v1, p2

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 124
    const-string/jumbo v0, "Tab.PerceivedRestoreTime"

    long-to-int v1, p4

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 139
    :goto_0
    return-void

    .line 126
    :cond_0
    sparse-switch p6, :sswitch_data_0

    .line 135
    const-string/jumbo v0, "Tab.RestoreResult"

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0

    .line 130
    :sswitch_0
    const-string/jumbo v0, "Tab.RestoreResult"

    const/4 v1, 0x2

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        -0x323 -> :sswitch_0
        -0x89 -> :sswitch_0
        -0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method private recordTabStateTransition(IIJ)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 159
    if-ne p1, v2, :cond_2

    if-ne p2, v3, :cond_2

    .line 160
    const-string/jumbo v0, "Tabs.StateTransfer.Time_Active_Inactive"

    invoke-direct {p0, v0, p3, p4}, Lorg/chromium/chrome/browser/tab/TabUma;->recordLongTimesHistogram100(Ljava/lang/String;J)V

    .line 169
    :cond_0
    :goto_0
    if-nez p1, :cond_5

    .line 170
    const-string/jumbo v0, "Tabs.StateTransfer.Target_Initial"

    invoke-static {v0, p2, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 179
    :cond_1
    :goto_1
    return-void

    .line 161
    :cond_2
    if-ne p1, v2, :cond_3

    if-ne p2, v1, :cond_3

    .line 162
    const-string/jumbo v0, "Tabs.StateTransfer.Time_Active_Closed"

    invoke-direct {p0, v0, p3, p4}, Lorg/chromium/chrome/browser/tab/TabUma;->recordLongTimesHistogram100(Ljava/lang/String;J)V

    goto :goto_0

    .line 163
    :cond_3
    if-ne p1, v3, :cond_4

    if-ne p2, v2, :cond_4

    .line 164
    const-string/jumbo v0, "Tabs.StateTransfer.Time_Inactive_Active"

    invoke-direct {p0, v0, p3, p4}, Lorg/chromium/chrome/browser/tab/TabUma;->recordLongTimesHistogram100(Ljava/lang/String;J)V

    goto :goto_0

    .line 165
    :cond_4
    if-ne p1, v3, :cond_0

    if-ne p2, v1, :cond_0

    .line 166
    const-string/jumbo v0, "Tabs.StateTransfer.Time_Inactive_Close"

    invoke-direct {p0, v0, p3, p4}, Lorg/chromium/chrome/browser/tab/TabUma;->recordLongTimesHistogram100(Ljava/lang/String;J)V

    goto :goto_0

    .line 172
    :cond_5
    if-ne p1, v2, :cond_6

    .line 173
    const-string/jumbo v0, "Tabs.StateTransfer.Target_Active"

    invoke-static {v0, p2, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_1

    .line 175
    :cond_6
    if-ne p1, v3, :cond_1

    .line 176
    const-string/jumbo v0, "Tabs.StateTransfer.Target_Inactive"

    invoke-static {v0, p2, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_1
.end method


# virtual methods
.method getLastShownTimestamp()J
    .locals 2

    .prologue
    .line 383
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    return-wide v0
.end method

.method onActivityHidden()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/TabUma;->recordNumBackgroundTabsOpened()V

    .line 308
    return-void
.end method

.method onBackgroundTabOpenedFromContextMenu(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mNumBackgroundTabsOpened:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mNumBackgroundTabsOpened:I

    .line 372
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mChildBackgroundTabShowObserver:Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getParentId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mChildBackgroundTabShowObserver:Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mChildBackgroundTabShowObserver:Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;->onBackgroundTabOpened(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 377
    return-void
.end method

.method onDestroy()V
    .locals 6

    .prologue
    .line 311
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/TabUma;->updateTabState(I)V

    .line 313
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v1, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_BACKGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v1, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_FOR_LAZY_LOAD:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-ne v0, v1, :cond_1

    .line 315
    :cond_0
    const-string/jumbo v1, "Tab.BackgroundTabShown"

    iget-wide v2, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 319
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/TabUma;->recordNumBackgroundTabsOpened()V

    .line 320
    return-void

    .line 315
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onHide()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/TabUma;->updateTabState(I)V

    .line 303
    return-void
.end method

.method onLoadFailed(I)V
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    .line 348
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    iget-wide v4, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 350
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v4, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/tab/TabUma;->recordTabRestoreResult(ZJJI)V

    .line 352
    :cond_0
    iput-wide v2, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    .line 353
    return-void
.end method

.method onPageLoadFinished()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 337
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    iget-wide v2, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 338
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 339
    iget-wide v2, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    sub-long v2, v0, v2

    .line 340
    iget-wide v4, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    sub-long v4, v0, v4

    .line 341
    const/4 v1, 0x1

    const/4 v6, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/tab/TabUma;->recordTabRestoreResult(ZJJI)V

    .line 343
    :cond_0
    iput-wide v8, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    .line 344
    return-void
.end method

.method onPageLoadStarted()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/TabUma;->recordNumBackgroundTabsOpened()V

    .line 330
    return-void
.end method

.method onRendererCrashed()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 357
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 360
    iput-wide v2, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    .line 362
    :cond_0
    return-void
.end method

.method onRestoreStarted()V
    .locals 2

    .prologue
    .line 324
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    .line 325
    return-void
.end method

.method onShow(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;JI)V
    .locals 8

    .prologue
    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 217
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_USER:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    if-ne p1, v0, :cond_0

    .line 218
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    sub-long v0, v2, v0

    .line 219
    const-string/jumbo v4, "Tab.SwitchedToForegroundAge"

    long-to-int v0, v0

    invoke-static {v4, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 220
    const-string/jumbo v0, "Tab.SwitchedToForegroundMRURank"

    invoke-static {v0, p4}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 223
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/tab/TabUma;->increaseTabShowCount()V

    .line 224
    sget-wide v0, Lorg/chromium/chrome/browser/tab/TabUma;->sAllTabsShowCount:J

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 225
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v4, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_FOR_LAZY_LOAD:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-ne v1, v4, :cond_5

    iget-wide v4, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 229
    :goto_1
    iget-wide v4, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    if-nez v1, :cond_6

    .line 231
    const/4 v1, 0x0

    .line 253
    :goto_2
    sget-object v4, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_USER:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    if-ne p1, v4, :cond_1

    .line 254
    const-string/jumbo v4, "Tab.StatusWhenSwitchedBackToForeground"

    const/16 v5, 0x9

    invoke-static {v4, v1, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 259
    :cond_1
    iget-wide v4, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 260
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v4, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_BACKGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-ne v1, v4, :cond_d

    .line 261
    iget-wide v4, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_c

    .line 262
    const-string/jumbo v1, "Tab.BackgroundLoadStatus"

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v1, v4, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 284
    :cond_2
    :goto_3
    iget-wide v4, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-lez v1, :cond_3

    .line 285
    if-eqz v0, :cond_f

    .line 286
    const-string/jumbo v0, "Tabs.ForegroundTabAgeAtStartup"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    invoke-static {v4, v5}, Lorg/chromium/chrome/browser/tab/TabUma;->millisecondsToMinutes(J)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 296
    :cond_3
    :goto_4
    iput-wide v2, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    .line 298
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/TabUma;->updateTabState(I)V

    .line 299
    return-void

    .line 224
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 232
    :cond_6
    iget-wide v4, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastShownTimestamp:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_b

    .line 234
    if-eqz v0, :cond_7

    .line 235
    const/4 v1, 0x6

    goto :goto_2

    .line 236
    :cond_7
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v4, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-ne v1, v4, :cond_8

    .line 237
    const/4 v1, 0x7

    goto :goto_2

    .line 238
    :cond_8
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v4, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_FOR_LAZY_LOAD:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-ne v1, v4, :cond_9

    .line 239
    const/16 v1, 0x8

    goto :goto_2

    .line 241
    :cond_9
    sget-boolean v1, Lorg/chromium/chrome/browser/tab/TabUma;->$assertionsDisabled:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v4, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_FOREGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-eq v1, v4, :cond_a

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v4, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_BACKGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-eq v1, v4, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 243
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 247
    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 265
    :cond_c
    const-string/jumbo v1, "Tab.BackgroundLoadStatus"

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v1, v4, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 268
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-lez v1, :cond_2

    .line 269
    const-string/jumbo v1, "Tab.LostTabAgeWhenSwitchedToForeground"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v4, v5, v6}, Lorg/chromium/base/metrics/RecordHistogram;->recordMediumTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_3

    .line 275
    :cond_d
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mTabCreationState:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v4, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_FOR_LAZY_LOAD:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-ne v1, v4, :cond_2

    .line 276
    sget-boolean v1, Lorg/chromium/chrome/browser/tab/TabUma;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-wide v4, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mRestoreStartedAtMillis:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 277
    :cond_e
    const-string/jumbo v1, "Tab.BackgroundLoadStatus"

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-static {v1, v4, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 289
    :cond_f
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_USER:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    if-ne p1, v0, :cond_3

    .line 290
    const-string/jumbo v0, "Tab.AgeUponRestoreFromColdStart"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    invoke-static {v4, v5}, Lorg/chromium/chrome/browser/tab/TabUma;->millisecondsToMinutes(J)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    goto/16 :goto_4
.end method

.method updateTabState(I)V
    .locals 6

    .prologue
    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 200
    iget v2, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastTabState:I

    iget-wide v4, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastTabStateChangeMillis:J

    sub-long v4, v0, v4

    invoke-direct {p0, v2, p1, v4, v5}, Lorg/chromium/chrome/browser/tab/TabUma;->recordTabStateTransition(IIJ)V

    .line 201
    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastTabStateChangeMillis:J

    .line 202
    iput p1, p0, Lorg/chromium/chrome/browser/tab/TabUma;->mLastTabState:I

    .line 203
    return-void
.end method
